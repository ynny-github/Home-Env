function home-env
    argparse -n home-env "p/push" "u/upgrade" -- $argv

    if set -lq _flag_push
        cd ~
        # 現在の監視対象
        # 監視対象を増やしたら追加する
        git add -f README.md
        git add -f .config
        
        git commit -m "pushed by home-env"
        git push origin main
        #git diff --exit-code
        # 差分があったら実行
        #if test $status -eq 1
        #    git commit -m "pushed by home-env"
        #    git push origin main
        #end
    end

    if set -lq _flag_upgrade
        cd ~
        git pull
    end
    
end