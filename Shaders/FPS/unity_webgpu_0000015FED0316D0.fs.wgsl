struct PGlobals {
  x_MainTex_TexelSize : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat3 : f32;

var<private> u_xlatb1 : bool;

var<private> u_xlat5 : vec2<f32>;

var<private> u_xlat6 : f32;

var<private> u_xlatb4 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_77 : vec2<f32>;
  var x_130 : vec2<f32>;
  var x_157 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_26 : vec2<f32> = vs_TEXCOORD0;
  u_xlat0 = ((vec4<f32>(x_17.x, x_17.y, x_17.x, x_17.y) * vec4<f32>(-0.5f, -0.5f, 0.5f, -0.5f)) + vec4<f32>(x_26.x, x_26.y, x_26.x, x_26.y));
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_39.x, x_39.y));
  let x_42 : vec2<f32> = vec2<f32>(x_41.x, x_41.y);
  let x_43 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_42.x, x_42.y, x_43.z, x_43.w);
  let x_50 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_50.z, x_50.w));
  u_xlat4 = vec2<f32>(x_52.x, x_52.y);
  let x_55 : vec4<f32> = u_xlat0;
  let x_57 : vec4<f32> = u_xlat0;
  u_xlat1.x = dot(vec2<f32>(x_55.x, x_55.y), vec2<f32>(x_57.x, x_57.y));
  let x_65 : vec2<f32> = u_xlat4;
  let x_66 : vec2<f32> = u_xlat4;
  u_xlat3 = dot(x_65, x_66);
  let x_72 : f32 = u_xlat1.x;
  let x_73 : f32 = u_xlat3;
  u_xlatb1 = (x_72 < x_73);
  let x_75 : bool = u_xlatb1;
  if (x_75) {
    let x_80 : vec2<f32> = u_xlat4;
    x_77 = x_80;
  } else {
    let x_82 : vec4<f32> = u_xlat0;
    x_77 = vec2<f32>(x_82.x, x_82.y);
  }
  let x_84 : vec2<f32> = x_77;
  let x_85 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_84.x, x_84.y, x_85.z, x_85.w);
  let x_87 : vec4<f32> = u_xlat0;
  let x_89 : vec4<f32> = u_xlat0;
  u_xlat4.x = dot(vec2<f32>(x_87.x, x_87.y), vec2<f32>(x_89.x, x_89.y));
  let x_94 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_98 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_94.x, x_94.y, x_94.x, x_94.y) * vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_98.x, x_98.y, x_98.x, x_98.y));
  let x_104 : vec4<f32> = u_xlat1;
  let x_106 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_104.x, x_104.y));
  let x_107 : vec2<f32> = vec2<f32>(x_106.x, x_106.y);
  let x_108 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_107.x, x_107.y, x_108.z, x_108.w);
  let x_114 : vec4<f32> = u_xlat1;
  let x_116 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_114.z, x_114.w));
  u_xlat5 = vec2<f32>(x_116.x, x_116.y);
  let x_119 : vec4<f32> = u_xlat1;
  let x_121 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec2<f32>(x_119.x, x_119.y), vec2<f32>(x_121.x, x_121.y));
  let x_126 : f32 = u_xlat4.x;
  let x_127 : f32 = u_xlat6;
  u_xlatb4 = (x_126 < x_127);
  let x_129 : bool = u_xlatb4;
  if (x_129) {
    let x_133 : vec4<f32> = u_xlat1;
    x_130 = vec2<f32>(x_133.x, x_133.y);
  } else {
    let x_136 : vec4<f32> = u_xlat0;
    x_130 = vec2<f32>(x_136.x, x_136.y);
  }
  let x_138 : vec2<f32> = x_130;
  let x_139 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
  let x_141 : vec4<f32> = u_xlat0;
  let x_143 : vec4<f32> = u_xlat0;
  u_xlat4.x = dot(vec2<f32>(x_141.x, x_141.y), vec2<f32>(x_143.x, x_143.y));
  let x_147 : vec2<f32> = u_xlat5;
  let x_148 : vec2<f32> = u_xlat5;
  u_xlat6 = dot(x_147, x_148);
  let x_151 : f32 = u_xlat4.x;
  let x_152 : f32 = u_xlat6;
  u_xlatb4 = (x_151 < x_152);
  let x_156 : bool = u_xlatb4;
  if (x_156) {
    let x_160 : vec2<f32> = u_xlat5;
    x_157 = x_160;
  } else {
    let x_162 : vec4<f32> = u_xlat0;
    x_157 = vec2<f32>(x_162.x, x_162.y);
  }
  let x_164 : vec2<f32> = x_157;
  let x_165 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_164.x, x_164.y, x_165.z, x_165.w);
  let x_169 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_169.x, x_169.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
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

