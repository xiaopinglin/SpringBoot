package com.lxp.util;

import java.util.ArrayList;
import java.util.List;

import com.lxp.model.common.NavBean;

import net.sf.json.JSONArray;

/**
 * @author lxp
 * @date 2018年7月24日 上午11:04:28
 * @parameter
 * @return
 */
public class TreeBuilder {

	List<NavBean> nodes = new ArrayList<>();

	public String buildTree(List<NavBean> nodes) {
		TreeBuilder treeBuilder = new TreeBuilder(nodes);
		return treeBuilder.buildJSONTree();
	}

	public TreeBuilder() {
	}

	public TreeBuilder(List<NavBean> nodes) {
		super();
		this.nodes = nodes;
	}

	// 构建JSON树形结构
	public String buildJSONTree() {
		List<NavBean> nodeTree = buildTree();
		JSONArray jsonArray = JSONArray.fromObject(nodeTree);
		return jsonArray.toString();
	}

	// 构建树形结构
	public List<NavBean> buildTree() {
		List<NavBean> treeNodes = new ArrayList<>();
		List<NavBean> rootNodes = getRootNodes();
		for (NavBean rootNode : rootNodes) {
			buildChildNodes(rootNode);
			treeNodes.add(rootNode);
		}
		return treeNodes;
	}

	// 递归子节点
	public void buildChildNodes(NavBean node) {
		List<NavBean> children = getChildNodes(node);
		if (!children.isEmpty()) {
			for (NavBean child : children) {
				buildChildNodes(child);
			}
			node.setChildren(children);
		}
	}

	// 获取父节点下所有的子节点
	public List<NavBean> getChildNodes(NavBean pnode) {
		List<NavBean> childNodes = new ArrayList<>();
		for (NavBean n : nodes) {
			if (pnode.getId().equals(n.getPId())) {
				childNodes.add(n);
			}
		}
		return childNodes;
	}

	// 判断是否为根节点
	public boolean rootNode(NavBean node) {
		boolean isRootNode = true;
		for (NavBean n : nodes) {
			if (node.getPId().equals(n.getId())) {
				isRootNode = false;
				break;
			}
		}
		return isRootNode;
	}

	// 获取集合中所有的根节点
	public List<NavBean> getRootNodes() {
		List<NavBean> rootNodes = new ArrayList<>();
		for (NavBean n : nodes) {
			if (rootNode(n)) {
				rootNodes.add(n);
			}
		}
		return rootNodes;
	}

}
