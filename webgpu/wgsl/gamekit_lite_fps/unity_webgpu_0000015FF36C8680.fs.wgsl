struct PGlobals {
  x_MainTex_TexelSize : vec4<f32>,
  x_TileMaxLoop : i32,
  @size(4)
  padding : u32,
  x_TileMaxOffs : vec2<f32>,
}

var<private> u_xlat0 : vec2<f32>;

@group(0) @binding(0) var<uniform> x_14 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat10 : vec2<f32>;

var<private> u_xlat7 : vec2<f32>;

var<private> u_xlat3 : vec2<f32>;

var<private> u_xlat13 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> u_xlat4 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb4 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

var<private> u_xlati2 : i32;

var<private> u_xlatb7 : bool;

var<private> u_xlatb13 : bool;

var<private> u_xlati17 : i32;

fn main_1() {
  var u_xlati_loop_1 : i32;
  var u_xlati_loop_2 : i32;
  var x_126 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_18 : vec4<f32> = x_14.x_MainTex_TexelSize;
  let x_25 : f32 = x_14.x_TileMaxOffs.x;
  let x_28 : f32 = x_14.x_TileMaxOffs.y;
  let x_33 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec2<f32>(x_18.x, x_18.y) * vec2<f32>(x_25, x_28)) + x_33);
  u_xlat1.y = 0.0f;
  u_xlat1.z = 0.0f;
  let x_43 : vec4<f32> = x_14.x_MainTex_TexelSize;
  let x_44 : vec2<f32> = vec2<f32>(x_43.x, x_43.y);
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_45.y, x_45.z, x_44.y);
  u_xlat10.x = 0.0f;
  u_xlat10.y = 0.0f;
  u_xlati_loop_1 = 0i;
  loop {
    let x_57 : i32 = u_xlati_loop_1;
    let x_61 : i32 = x_14.x_TileMaxLoop;
    if ((x_57 < x_61)) {
    } else {
      break;
    }
    let x_65 : i32 = u_xlati_loop_1;
    u_xlat7.x = f32(x_65);
    let x_68 : vec4<f32> = u_xlat1;
    let x_70 : vec2<f32> = u_xlat7;
    let x_73 : vec2<f32> = u_xlat0;
    u_xlat7 = ((vec2<f32>(x_68.x, x_68.y) * vec2<f32>(x_70.x, x_70.x)) + x_73);
    let x_76 : vec2<f32> = u_xlat10;
    u_xlat3 = x_76;
    u_xlati_loop_2 = 0i;
    loop {
      let x_83 : i32 = u_xlati_loop_2;
      let x_85 : i32 = x_14.x_TileMaxLoop;
      if ((x_83 < x_85)) {
      } else {
        break;
      }
      let x_88 : i32 = u_xlati_loop_2;
      u_xlat13.x = f32(x_88);
      let x_91 : vec4<f32> = u_xlat1;
      let x_93 : vec2<f32> = u_xlat13;
      let x_96 : vec2<f32> = u_xlat7;
      u_xlat13 = ((vec2<f32>(x_91.z, x_91.w) * vec2<f32>(x_93.x, x_93.x)) + x_96);
      let x_108 : vec2<f32> = u_xlat13;
      let x_109 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_108);
      u_xlat13 = vec2<f32>(x_109.x, x_109.y);
      let x_112 : vec2<f32> = u_xlat3;
      let x_113 : vec2<f32> = u_xlat3;
      u_xlat4 = dot(x_112, x_113);
      let x_116 : vec2<f32> = u_xlat13;
      let x_117 : vec2<f32> = u_xlat13;
      u_xlat9 = dot(x_116, x_117);
      let x_121 : f32 = u_xlat4;
      let x_122 : f32 = u_xlat9;
      u_xlatb4 = (x_121 < x_122);
      let x_124 : bool = u_xlatb4;
      if (x_124) {
        let x_129 : vec2<f32> = u_xlat13;
        x_126 = x_129;
      } else {
        let x_131 : vec2<f32> = u_xlat3;
        x_126 = x_131;
      }
      let x_132 : vec2<f32> = x_126;
      u_xlat3 = x_132;

      continuing {
        let x_133 : i32 = u_xlati_loop_2;
        u_xlati_loop_2 = (x_133 + 1i);
      }
    }
    let x_135 : vec2<f32> = u_xlat3;
    u_xlat10 = x_135;

    continuing {
      let x_136 : i32 = u_xlati_loop_1;
      u_xlati_loop_1 = (x_136 + 1i);
    }
  }
  let x_140 : vec2<f32> = u_xlat10;
  let x_141 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_140.x, x_140.y, x_141.z, x_141.w);
  let x_144 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_144.x, x_144.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

