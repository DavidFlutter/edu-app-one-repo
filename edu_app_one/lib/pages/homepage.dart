import 'package:edu_app_one/pages/cousrepage.dart';
import 'package:edu_app_one/utils/search_box.dart';
import 'package:edu_app_one/utils/tutorial_tile.dart';
import 'package:edu_app_one/utils/year_bubble.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // var mathLinks = [
  //   "https://rr1---sn-2gb7sn7k.googlevideo.com/videoplayback?expire=1675612055&ei=N3vfY5JHgc3WAuHTgagE&ip=216.131.109.137&id=o-AE8MBtOYgFCokv_JUAdnuqt_AiCFI7XVg_n8cEfDgp1Q&itag=18&source=youtube&requiressl=yes&pcm2=yes&spc=H3gIhpygC3Bn1lq6s5FvfuPTdMfs428&vprv=1&mime=video%2Fmp4&ns=eV3hN_N0TtrQl55qMk7hAsYL&cnr=14&ratebypass=yes&dur=665.391&lmt=1658998668159685&fexp=24007246&c=WEB&txp=2318224&n=QkRu8TK-48cpqg&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cpcm2%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhALypPYdGwScroJfly7puVUAwvyVvs6vfV1j4LKjxvas1AiABexY6eoOVSMNA6v41vuRUnjqzcXdc-LlF3tLSRqoW_w%3D%3D&redirect_counter=1&rm=sn-n02xgoxufvg3-2gb67e&req_id=b046dee4386ba3ee&cms_redirect=yes&cmsv=e&ipbypass=yes&mh=uW&mm=29&mn=sn-2gb7sn7k&ms=rdu&mt=1675595114&mv=m&mvi=1&pl=24&lsparams=ipbypass,mh,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgPvdwDmMNkeEEUUsr9gpCTrtrq-8DJIrNnYeGTkWXQaECIFuf2WUva0XoRPzAxXiCvZ8w13EeX2hxHV9-Gq7Z6n6A",
  //   "https://rr3---sn-avn7ln7l.googlevideo.com/videoplayback?expire=1675612129&ei=gXvfY8nGMrWJ_9EPqdeV0A4&ip=154.16.192.8&id=o-AAt6_Z_pfz-WtPgVF1hugY7U-Eg-J3YeOvxogc63oeUw&itag=18&source=youtube&requiressl=yes&spc=H3gIhqHGaAE3fkdCw5VoFDX3XDG1mkE&vprv=1&mime=video%2Fmp4&ns=59mR5q4V-GbbLSrNPXILqQcL&cnr=14&ratebypass=yes&dur=708.371&lmt=1658467766948918&fexp=24007246&c=WEB&txp=1318224&n=3j1GsfS7M5FJxg&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgSQPHw15BiE2aXtxTourYqQmvOnhkpkS71lIVEAmFeKICIC4DDYp3CS9q0PqsARz6x6e2amp99JJ_WEP5G8CSOwxy&rm=sn-vgqeze76&req_id=c964eb66c8c0a3ee&ipbypass=yes&redirect_counter=2&cm2rm=sn-h5povox-avnl7e&cms_redirect=yes&cmsv=e&mh=RL&mip=165.73.223.226&mm=29&mn=sn-avn7ln7l&ms=rdu&mt=1675595114&mv=m&mvi=3&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgAmmGTJzTuhfqipH-KDIV9xUtHZZqq7ROkCfUx95PRq4CIAvUvPEcnqZ4sRO9sygQkhcUrLe7Rvi6b0i3lCn2coI2",
  //   "https://rr1---sn-h5povox-avnl.googlevideo.com/videoplayback?expire=1675612195&ei=w3vfY5yNINunx_APr-qXuAY&ip=196.196.53.108&id=o-AKTSEls4gSJIOYG12ITIWn8beM59T9w05UPa2fZPE0qX&itag=18&source=youtube&requiressl=yes&spc=H3gIhkreZ5Oongz_Z7UCva3A0Q61ZQA&vprv=1&mime=video%2Fmp4&ns=zQRaSUEdx38Cg33zKbVSyywL&cnr=14&ratebypass=yes&dur=346.255&lmt=1665156415637719&fexp=24007246&c=WEB&txp=5438434&n=4nq0pv6Jwv3twA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAIRBWXki_2uRYx-UE8s8S6T62BF6X_ecgCSMmAmAtcYAAiBqfUxOYYaNlfuBUMRKrDkMJdLjnGuwjoxT4jZhQDJEOA%3D%3D&redirect_counter=1&rm=sn-4g5ezs7z&req_id=ad2fcd257ca3ee&cms_redirect=yes&cmsv=e&ipbypass=yes&mh=iO&mip=165.73.223.226&mm=31&mn=sn-h5povox-avnl&ms=au&mt=1675595108&mv=m&mvi=1&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRgIhAOxTvSAXvTDgMWAFrbC9pIU4BHvsppE9ctKG2CSeDVEkAiEAhPkej3IFslxHlPOPJOHzFEhq9ib1DCL-1zhPXdNI29Y%3D",
  //   "https://rr4---sn-5hneknek.googlevideo.com/videoplayback?expire=1675617632&ei=AJHfY-fPNcS1-gaAi7SgCg&ip=193.19.207.185&id=o-AMe_9kHUXxk4vTUN3DLmkK7ITH2M5bHvcOAj9xyRbVvA&itag=18&source=youtube&requiressl=yes&spc=H3gIhnTZaUt0Rt-_o_pqoV69SaNIFa8&vprv=1&mime=video%2Fmp4&ns=eokqUHIGX6quJf5LBjdtWOwL&cnr=14&ratebypass=yes&dur=569.051&lmt=1664092831929329&fexp=24007246&c=WEB&txp=4538434&n=6KfYcmBIIh_dWA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgCPK6VKPQIvI2MLV5ioPcC8TTLz0x5l1mUPREJrvFRgQCIQD8HzYzHLns-JGpywmi89XM-Zz_NjGpKfDPI_T_Pem5WA%3D%3D&rm=sn-pmcg-bg0ke7&req_id=e8c737facb4ea3ee&ipbypass=yes&redirect_counter=2&cm2rm=sn-h5q677l&cms_redirect=yes&cmsv=e&mh=SP&mip=165.73.223.226&mm=34&mn=sn-5hneknek&ms=ltu&mt=1675595266&mv=u&mvi=4&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRgIhAL2wZA3_CNzYXZIqAuV0DF5540weoP_pJy2Q-AckFqAyAiEA6IP3_05CYF7A6vbue-ENW5KK3qXYMra0JHGpo5ac3Vk%3D",
  //   "https://rr3---sn-avn7ln7l.googlevideo.com/videoplayback?expire=1675617421&ei=LZDfY5bCB9Colu8P5Na3qAg&ip=173.195.15.32&id=o-AD9i_8D4REZa9qiFFSZAryi4BtBbn-TWlQ1NbUmOepmb&itag=18&source=youtube&requiressl=yes&spc=H3gIhou5_1VgIIq82qOXEtoQYkX3GUc&vprv=1&mime=video%2Fmp4&ns=1Tav0YsZspSMA57R9l1DdS0L&cnr=14&ratebypass=yes&dur=260.760&lmt=1664772370376502&fexp=24007246&c=WEB&txp=1438434&n=iO-hCCtS8CLzGQ&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgRZgyO_0pfIimvY2QjYEQLcMz-4FSy9I0SQqcPyHOWkMCIQCYQk1pf7PCf5yv5Y107St7Fstp91fwKfhaxbOvRpn41Q%3D%3D&rm=sn-ab5ese7s&req_id=c3e91a32f967a3ee&ipbypass=yes&redirect_counter=2&cm2rm=sn-h5povox-avnl7l&cms_redirect=yes&cmsv=e&mh=xH&mip=165.73.223.226&mm=29&mn=sn-avn7ln7l&ms=rdu&mt=1675595600&mv=m&mvi=3&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIgR53xKpO0ADAohF6BYMt3CL1_xxeVcFlK4491c_gZ_-kCIQCa1y41AQjZfCC92YMezhkwHY7EnmM7dL_DS32wV8hbjg%3D%3D",
  // ];

  var initialLinks = [
    "https://rr5---sn-5hne6nsy.googlevideo.com/videoplayback?expire=1675616765&ei=nY3fY_nhKJuAgAeA4qSgBg&ip=69.16.157.89&id=o-APobPYsTAFJSSakjgBmL7WaXnsWJGdltUItyXPZPkKKB&itag=18&source=youtube&requiressl=yes&spc=H3gIhvLGr6zY3aWwkfQ4MMoX7720xgc&vprv=1&mime=video%2Fmp4&ns=S5kiRuIOCiA4nmF6-0emXPYL&cnr=14&ratebypass=yes&dur=180.001&lmt=1657834858768757&fexp=24007246&c=WEB&txp=6318224&n=3gNfNqm_Tz78Ng&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhANKrgJSssGuxW5tthHpmu8CCilRLSLfRESHxKqnTn0OsAiBG1yX0wXFk4DNMpB9WAhH63tHrcyVqYkd-TrPmthFLyQ%3D%3D&redirect_counter=1&cm2rm=sn-hpa6k7s&req_id=ae9165a83feca3ee&cms_redirect=yes&cmsv=e&mh=In&mip=165.73.223.226&mm=34&mn=sn-5hne6nsy&ms=ltu&mt=1675593988&mv=u&mvi=5&pl=20&lsparams=mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIgdYILFCPrr2u6vtONWv1lTCALrFsnslUIhMHh984bv3YCIQCX1pOY8Snj5l3Y6t2JhzQwQGjhdJu5Apk4-vw0gtOSuQ%3D%3D",
    "https://rr1---sn-h5povox-avne.googlevideo.com/videoplayback?expire=1675617142&ei=Fo_fY7SeAoLgxwKA6L9Y&ip=216.131.121.34&id=o-AIV1t2bPpsYZJDgpFHqkaF0zseOxt713xLUPGgWb17dN&itag=18&source=youtube&requiressl=yes&pcm2=yes&spc=H3gIhtDdctt4dUuf9MSZlcuA4AVw8kA&vprv=1&mime=video%2Fmp4&ns=wYDFCIDbafruwgNerAsx3kgL&cnr=14&ratebypass=yes&dur=165.256&lmt=1674128271052133&fexp=24007246&c=WEB&txp=4438434&n=Zk74wIgWBiq2Zg&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cpcm2%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgXZQOnNBUQmxkeVI_hSi4Jw07ukkbnjp0g-RkapqsHwECIDUHlIwSut3oFnJ2MKD02FJv05-PJ_24O7ALgaXpF-51&redirect_counter=1&rm=sn-aige6e7z&req_id=992c706b0c91a3ee&cms_redirect=yes&cmsv=e&ipbypass=yes&mh=3r&mip=165.73.223.226&mm=31&mn=sn-h5povox-avne&ms=au&mt=1675595110&mv=u&mvi=1&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgW1jek_03_w-PwyHBFbPeuboJ43VDKIyPurMlkliBHxwCIAvT50zHzoOpBq1J_kqGZ2cZ5EkdO1rCkURD6Fy6s9yJ",
  ];

  List<List<String>> allLinks = [
    // Math links
    [
      "https://rr1---sn-2gb7sn7k.googlevideo.com/videoplayback?expire=1675612055&ei=N3vfY5JHgc3WAuHTgagE&ip=216.131.109.137&id=o-AE8MBtOYgFCokv_JUAdnuqt_AiCFI7XVg_n8cEfDgp1Q&itag=18&source=youtube&requiressl=yes&pcm2=yes&spc=H3gIhpygC3Bn1lq6s5FvfuPTdMfs428&vprv=1&mime=video%2Fmp4&ns=eV3hN_N0TtrQl55qMk7hAsYL&cnr=14&ratebypass=yes&dur=665.391&lmt=1658998668159685&fexp=24007246&c=WEB&txp=2318224&n=QkRu8TK-48cpqg&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cpcm2%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhALypPYdGwScroJfly7puVUAwvyVvs6vfV1j4LKjxvas1AiABexY6eoOVSMNA6v41vuRUnjqzcXdc-LlF3tLSRqoW_w%3D%3D&redirect_counter=1&rm=sn-n02xgoxufvg3-2gb67e&req_id=b046dee4386ba3ee&cms_redirect=yes&cmsv=e&ipbypass=yes&mh=uW&mm=29&mn=sn-2gb7sn7k&ms=rdu&mt=1675595114&mv=m&mvi=1&pl=24&lsparams=ipbypass,mh,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgPvdwDmMNkeEEUUsr9gpCTrtrq-8DJIrNnYeGTkWXQaECIFuf2WUva0XoRPzAxXiCvZ8w13EeX2hxHV9-Gq7Z6n6A",
      "https://rr3---sn-avn7ln7l.googlevideo.com/videoplayback?expire=1675612129&ei=gXvfY8nGMrWJ_9EPqdeV0A4&ip=154.16.192.8&id=o-AAt6_Z_pfz-WtPgVF1hugY7U-Eg-J3YeOvxogc63oeUw&itag=18&source=youtube&requiressl=yes&spc=H3gIhqHGaAE3fkdCw5VoFDX3XDG1mkE&vprv=1&mime=video%2Fmp4&ns=59mR5q4V-GbbLSrNPXILqQcL&cnr=14&ratebypass=yes&dur=708.371&lmt=1658467766948918&fexp=24007246&c=WEB&txp=1318224&n=3j1GsfS7M5FJxg&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgSQPHw15BiE2aXtxTourYqQmvOnhkpkS71lIVEAmFeKICIC4DDYp3CS9q0PqsARz6x6e2amp99JJ_WEP5G8CSOwxy&rm=sn-vgqeze76&req_id=c964eb66c8c0a3ee&ipbypass=yes&redirect_counter=2&cm2rm=sn-h5povox-avnl7e&cms_redirect=yes&cmsv=e&mh=RL&mip=165.73.223.226&mm=29&mn=sn-avn7ln7l&ms=rdu&mt=1675595114&mv=m&mvi=3&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgAmmGTJzTuhfqipH-KDIV9xUtHZZqq7ROkCfUx95PRq4CIAvUvPEcnqZ4sRO9sygQkhcUrLe7Rvi6b0i3lCn2coI2",
      "https://rr1---sn-h5povox-avnl.googlevideo.com/videoplayback?expire=1675612195&ei=w3vfY5yNINunx_APr-qXuAY&ip=196.196.53.108&id=o-AKTSEls4gSJIOYG12ITIWn8beM59T9w05UPa2fZPE0qX&itag=18&source=youtube&requiressl=yes&spc=H3gIhkreZ5Oongz_Z7UCva3A0Q61ZQA&vprv=1&mime=video%2Fmp4&ns=zQRaSUEdx38Cg33zKbVSyywL&cnr=14&ratebypass=yes&dur=346.255&lmt=1665156415637719&fexp=24007246&c=WEB&txp=5438434&n=4nq0pv6Jwv3twA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAIRBWXki_2uRYx-UE8s8S6T62BF6X_ecgCSMmAmAtcYAAiBqfUxOYYaNlfuBUMRKrDkMJdLjnGuwjoxT4jZhQDJEOA%3D%3D&redirect_counter=1&rm=sn-4g5ezs7z&req_id=ad2fcd257ca3ee&cms_redirect=yes&cmsv=e&ipbypass=yes&mh=iO&mip=165.73.223.226&mm=31&mn=sn-h5povox-avnl&ms=au&mt=1675595108&mv=m&mvi=1&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRgIhAOxTvSAXvTDgMWAFrbC9pIU4BHvsppE9ctKG2CSeDVEkAiEAhPkej3IFslxHlPOPJOHzFEhq9ib1DCL-1zhPXdNI29Y%3D",
      "https://rr4---sn-5hneknek.googlevideo.com/videoplayback?expire=1675617632&ei=AJHfY-fPNcS1-gaAi7SgCg&ip=193.19.207.185&id=o-AMe_9kHUXxk4vTUN3DLmkK7ITH2M5bHvcOAj9xyRbVvA&itag=18&source=youtube&requiressl=yes&spc=H3gIhnTZaUt0Rt-_o_pqoV69SaNIFa8&vprv=1&mime=video%2Fmp4&ns=eokqUHIGX6quJf5LBjdtWOwL&cnr=14&ratebypass=yes&dur=569.051&lmt=1664092831929329&fexp=24007246&c=WEB&txp=4538434&n=6KfYcmBIIh_dWA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgCPK6VKPQIvI2MLV5ioPcC8TTLz0x5l1mUPREJrvFRgQCIQD8HzYzHLns-JGpywmi89XM-Zz_NjGpKfDPI_T_Pem5WA%3D%3D&rm=sn-pmcg-bg0ke7&req_id=e8c737facb4ea3ee&ipbypass=yes&redirect_counter=2&cm2rm=sn-h5q677l&cms_redirect=yes&cmsv=e&mh=SP&mip=165.73.223.226&mm=34&mn=sn-5hneknek&ms=ltu&mt=1675595266&mv=u&mvi=4&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRgIhAL2wZA3_CNzYXZIqAuV0DF5540weoP_pJy2Q-AckFqAyAiEA6IP3_05CYF7A6vbue-ENW5KK3qXYMra0JHGpo5ac3Vk%3D",
      "https://rr3---sn-avn7ln7l.googlevideo.com/videoplayback?expire=1675617421&ei=LZDfY5bCB9Colu8P5Na3qAg&ip=173.195.15.32&id=o-AD9i_8D4REZa9qiFFSZAryi4BtBbn-TWlQ1NbUmOepmb&itag=18&source=youtube&requiressl=yes&spc=H3gIhou5_1VgIIq82qOXEtoQYkX3GUc&vprv=1&mime=video%2Fmp4&ns=1Tav0YsZspSMA57R9l1DdS0L&cnr=14&ratebypass=yes&dur=260.760&lmt=1664772370376502&fexp=24007246&c=WEB&txp=1438434&n=iO-hCCtS8CLzGQ&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgRZgyO_0pfIimvY2QjYEQLcMz-4FSy9I0SQqcPyHOWkMCIQCYQk1pf7PCf5yv5Y107St7Fstp91fwKfhaxbOvRpn41Q%3D%3D&rm=sn-ab5ese7s&req_id=c3e91a32f967a3ee&ipbypass=yes&redirect_counter=2&cm2rm=sn-h5povox-avnl7l&cms_redirect=yes&cmsv=e&mh=xH&mip=165.73.223.226&mm=29&mn=sn-avn7ln7l&ms=rdu&mt=1675595600&mv=m&mvi=3&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIgR53xKpO0ADAohF6BYMt3CL1_xxeVcFlK4491c_gZ_-kCIQCa1y41AQjZfCC92YMezhkwHY7EnmM7dL_DS32wV8hbjg%3D%3D",
    ],
    // English links
    [
      "https://rr3---sn-5hneknes.googlevideo.com/videoplayback?expire=1675616998&ei=ho7fY5-TFp2Air4PsbuFyA8&ip=216.131.77.117&id=o-AO3O_Z0QJsUuMRWp6uhxvHhqRis8dpSo4qptDHg0_RJ6&itag=18&source=youtube&requiressl=yes&spc=H3gIhomBTFVr3pntmjADxiQxcLT-QeA&vprv=1&mime=video%2Fmp4&ns=bMiYRMzFdthSPzSoC6Va3ysL&cnr=14&ratebypass=yes&dur=270.791&lmt=1664701111621938&fexp=24007246&c=WEB&txp=1438434&n=B7-akCxVZZywyA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIgCl1BghLvqmFb104gTr2qsUKmGo1ibr9ssOojszy0zcgCIQCd-B_wPhXznysWT9eO_B_ohT0OI5LfD-ZugiCPvU1crA%3D%3D&rm=sn-vgqez676&req_id=15ad6dca2975a3ee&ipbypass=yes&cm2rm=sn-h5povox-avnl7l,sn-avnz7s&redirect_counter=3&cms_redirect=yes&cmsv=e&mh=0c&mip=165.73.223.226&mm=34&mn=sn-5hneknes&ms=ltu&mt=1675595085&mv=m&mvi=3&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgI-5simxkNYYe1VQwlnox8Bu1Sc9TPcEj_S5me-bWcUoCIG752d9P6MPyvX8hyzM7kye71kfP31KiiURHaXfXQdqF",
      "https://rr3---sn-avn7ln7l.googlevideo.com/videoplayback?expire=1675617039&ei=ro7fY8mmIMCG_9EPuLCKiAs&ip=216.131.105.131&id=o-AI9xQwZLZaV_lHU_vKyF4f0tFq3pjZ-ipTlWlTEQ5Tfl&itag=18&source=youtube&requiressl=yes&spc=H3gIhl-0GvQTaj8X87utNwTO0SlYd5k&vprv=1&mime=video%2Fmp4&ns=1liz7BesBJ1VUdLSoxntd7wL&cnr=14&ratebypass=yes&dur=241.673&lmt=1664780254217777&fexp=24007246&c=WEB&txp=1438434&n=5otjq19k6EGHzA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgNAfUERKFJ-jHqefoAM56V_3IUju_iaM2D4reTnSwACwCICalL3_vCmi3T5Ah0_b5PvPWNdBDGoyc9NXs2GuvbMOj&rm=sn-p5qe7k7s&req_id=273ef44b7010a3ee&ipbypass=yes&redirect_counter=2&cm2rm=sn-h5povox-avne7l&cms_redirect=yes&cmsv=e&mh=xJ&mip=165.73.223.226&mm=29&mn=sn-avn7ln7l&ms=rdu&mt=1675595353&mv=m&mvi=3&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIgIUkLfjxdRNbYjD3PqpdOXKcNYwAb3bsU121fWhdgNm8CIQDMo9OGzdOv7bCj6APaSyD1cpz7nDjDEQvP5qVotIrOQw%3D%3D",
      "https://rr2---sn-5hnekn7k.googlevideo.com/videoplayback?expire=1675617093&ei=5Y7fY_GUINjP2roP4uKk8A0&ip=223.18.130.90&id=o-ANQWste57n8FHJvw2nEsuuMYWbtUrhPQVKhgyM2CqAB_&itag=18&source=youtube&requiressl=yes&spc=H3gIhhzszbND13WD5Kjm0ZrltmvoIfw&vprv=1&mime=video%2Fmp4&ns=AS6o7dg94vnEiDPYmAAWg2cL&cnr=14&ratebypass=yes&dur=396.225&lmt=1664128336451784&fexp=9420244,24007246&c=WEB&txp=1438434&n=NMdXRXW8N2zisQ&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRQIhAOPlBM7NGfk9kBjMsnxJrPQRps7TIQDg1KCWT4yGLzKJAiBcoDro7Kg310Ze8nJf6kNbRCE2YKzuVPKAh3uTK8xGCw%3D%3D&rm=sn-ibj-i3bd7l,sn-i3b6z7s&req_id=5961c378f5fea3ee&ipbypass=yes&redirect_counter=3&cm2rm=sn-avns7l&cms_redirect=yes&cmsv=e&mh=j7&mip=165.73.223.226&mm=34&mn=sn-5hnekn7k&ms=ltu&mt=1675595325&mv=m&mvi=2&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRQIhANStefI6N5UaDJTgzgL56eQYxbB_Jr5lrp-RvXApWaMyAiBEAvMyw65KW51iHYCUVkChnIjkccfxAmuxaiuCFhIQSQ%3D%3D",
    ]
  ];
  List<String> yearsAvaliabe = [
    "2011",
    "2012",
    "2013",
    "2014",
    "2015",
    "2016",
    "2017",
    "2018",
    "2019",
    "2020",
    "2021",
    "2022",
  ];

  List<String> imageLinks = [
    "https://images.unsplash.com/photo-1635070041078-e363dbe005cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8bWF0aHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1634128221889-82ed6efebfc3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGVuZ2xpc2h8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1636466497217-26a8cbeaf0aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGh5c2ljc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=600&q=60",
    "https://images.unsplash.com/photo-1532094349884-543bc11b234d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Y2hlbWlzdHJ5JTIwbGFifGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
  ];

  List tutors = [
    "Sade",
    "Anuoluwa",
    "Dayola",
    "Tunde",
  ];
  List hours = [
    "7",
    "4",
    "8",
    "12",
  ];
  List subjects = [
    "Math",
    "English",
    "Physics",
    "Chemistry",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Text(
              "2Ter Hub",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 30),
            SearchBox(),
          ],
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Exam name
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "WAESSE",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            // List of years
            Container(
              margin: EdgeInsets.all(10),
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: yearsAvaliabe.length,
                itemBuilder: (context, index) {
                  return YearBubble(yearsAvaliabe[index]);
                },
              ),
            ),
            // List of tutorials
            Container(
              margin: EdgeInsets.all(10),
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CoursePage(
                            links: allLinks[index],
                            initialVideo: initialLinks[index],
                          ),
                        ),
                      );
                    },
                    //Gesture detcetor added
                    child: TutorialTile(
                      exam: "WASSCE",
                      imageLink: imageLinks[index],
                      numberOfHours: hours[index],
                      numberOfVideos: "13",
                      subject: subjects[index],
                      tutor: tutors[index],
                      year: "2022",
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 30),
            //////////////////////////////// Next ////////////////////////////
            // Exam name
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "NECO",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            // List of years
            Container(
              margin: EdgeInsets.all(10),
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: yearsAvaliabe.length,
                itemBuilder: (context, index) {
                  return YearBubble(yearsAvaliabe[index]);
                },
              ),
            ),
            // List of tutorials
            Container(
              margin: EdgeInsets.all(10),
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  // Gesturedetctor not yet added
                  return TutorialTile(
                    exam: "NECO",
                    imageLink: imageLinks[index],
                    numberOfHours: hours[index],
                    numberOfVideos: "13",
                    subject: subjects[index],
                    tutor: tutors[index],
                    year: "2022",
                  );
                },
              ),
            ),
            SizedBox(height: 30),
            //////////////////////////// Next ///////////////////////////
            // Exam name
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "UTME",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            // List of years
            Container(
              margin: EdgeInsets.all(10),
              height: 30,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: yearsAvaliabe.length,
                itemBuilder: (context, index) {
                  return YearBubble(yearsAvaliabe[index]);
                },
              ),
            ),
            // List of tutorials
            Container(
              margin: EdgeInsets.all(10),
              height: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: subjects.length,
                itemBuilder: (context, index) {
                  // Gesturedetctor not yet added
                  return TutorialTile(
                    exam: "UTME",
                    imageLink: imageLinks[index],
                    numberOfHours: hours[index],
                    numberOfVideos: "13",
                    subject: subjects[index],
                    tutor: tutors[index],
                    year: "2022",
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
