//
//  SkeletonTableViewController.swift
//  SkeletonUIKit
//
//  Created by iYezan on 15/04/2022.
//

import UIKit

class SkeletonTableViewController: UITableViewController {

    let podcasts = Podcast.mockdata
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        tableView.register(SkeletonCell.self, forCellReuseIdentifier: SkeletonCell.reuseID)
        setupNavigationController()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return podcasts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: SkeletonCell.reuseID)
        if cell == nil {
            cell = UITableViewCell(style: .value1, reuseIdentifier: SkeletonCell.reuseID)
            
            let podcast = self.podcasts[indexPath.row]
            cell?.textLabel?.text            = "\(podcast.artistName)\n\(podcast.trackName)"
            cell?.detailTextLabel?.text      = "\(podcast.artworkUrl600)\n\(podcast.trackCount)"
            cell?.textLabel?.numberOfLines   = -1
            
        }
        return cell!
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

extension SkeletonTableViewController {
    // Navbar
    private func setupNavigationController() {
        title = "Podcast"
        navigationController?.navigationBar.prefersLargeTitles  = true
        navigationController?.navigationBar.backgroundColor     = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles  = true
        navigationController?.hidesBarsOnSwipe                  = false
        navigationItem.hidesSearchBarWhenScrolling              = false
    }
}
