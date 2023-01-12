struct PGlobals {
  x_MainTex_TexelSize : vec4<f32>,
}

@group(1) @binding(0) var<uniform> x_12 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat4 : vec2<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat3 : f32;
  var u_xlatb1 : bool;
  var x_76 : vec2<f32>;
  var u_xlat5 : vec2<f32>;
  var u_xlat6 : f32;
  var u_xlatb4 : bool;
  var x_129 : vec2<f32>;
  var x_156 : vec2<f32>;
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
    let x_79 : vec2<f32> = u_xlat4;
    x_76 = x_79;
  } else {
    let x_81 : vec4<f32> = u_xlat0;
    x_76 = vec2<f32>(x_81.x, x_81.y);
  }
  let x_83 : vec2<f32> = x_76;
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_84.z, x_84.w);
  let x_86 : vec4<f32> = u_xlat0;
  let x_88 : vec4<f32> = u_xlat0;
  u_xlat4.x = dot(vec2<f32>(x_86.x, x_86.y), vec2<f32>(x_88.x, x_88.y));
  let x_93 : vec4<f32> = x_12.x_MainTex_TexelSize;
  let x_97 : vec2<f32> = vs_TEXCOORD0;
  u_xlat1 = ((vec4<f32>(x_93.x, x_93.y, x_93.x, x_93.y) * vec4<f32>(-0.5f, 0.5f, 0.5f, 0.5f)) + vec4<f32>(x_97.x, x_97.y, x_97.x, x_97.y));
  let x_103 : vec4<f32> = u_xlat1;
  let x_105 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_103.x, x_103.y));
  let x_106 : vec2<f32> = vec2<f32>(x_105.x, x_105.y);
  let x_107 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_113 : vec4<f32> = u_xlat1;
  let x_115 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_113.z, x_113.w));
  u_xlat5 = vec2<f32>(x_115.x, x_115.y);
  let x_118 : vec4<f32> = u_xlat1;
  let x_120 : vec4<f32> = u_xlat1;
  u_xlat6 = dot(vec2<f32>(x_118.x, x_118.y), vec2<f32>(x_120.x, x_120.y));
  let x_125 : f32 = u_xlat4.x;
  let x_126 : f32 = u_xlat6;
  u_xlatb4 = (x_125 < x_126);
  let x_128 : bool = u_xlatb4;
  if (x_128) {
    let x_132 : vec4<f32> = u_xlat1;
    x_129 = vec2<f32>(x_132.x, x_132.y);
  } else {
    let x_135 : vec4<f32> = u_xlat0;
    x_129 = vec2<f32>(x_135.x, x_135.y);
  }
  let x_137 : vec2<f32> = x_129;
  let x_138 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_140 : vec4<f32> = u_xlat0;
  let x_142 : vec4<f32> = u_xlat0;
  u_xlat4.x = dot(vec2<f32>(x_140.x, x_140.y), vec2<f32>(x_142.x, x_142.y));
  let x_146 : vec2<f32> = u_xlat5;
  let x_147 : vec2<f32> = u_xlat5;
  u_xlat6 = dot(x_146, x_147);
  let x_150 : f32 = u_xlat4.x;
  let x_151 : f32 = u_xlat6;
  u_xlatb4 = (x_150 < x_151);
  let x_155 : bool = u_xlatb4;
  if (x_155) {
    let x_159 : vec2<f32> = u_xlat5;
    x_156 = x_159;
  } else {
    let x_161 : vec4<f32> = u_xlat0;
    x_156 = vec2<f32>(x_161.x, x_161.y);
  }
  let x_163 : vec2<f32> = x_156;
  let x_164 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_163.x, x_163.y, x_164.z, x_164.w);
  let x_168 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_168.x, x_168.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
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

