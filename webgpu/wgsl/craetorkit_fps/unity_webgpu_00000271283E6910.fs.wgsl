struct PGlobals {
  x_TextureSampleAdd : vec4<f32>,
}

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_AlphaTex : texture_2d<f32>;

@group(0) @binding(3) var sampler_AlphaTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_53 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_COLOR0.w;
  u_xlat0.x = (x_16 * 255.0f);
  let x_23 : f32 = u_xlat0.x;
  u_xlat0.x = round(x_23);
  let x_27 : f32 = u_xlat0.x;
  u_xlat0.w = (x_27 * 0.003921569f);
  let x_45 : vec2<f32> = vs_TEXCOORD0;
  let x_46 : vec4<f32> = textureSample(x_AlphaTex, sampler_AlphaTex, x_45);
  u_xlat1.x = x_46.x;
  let x_50 : f32 = u_xlat1.x;
  let x_58 : f32 = x_53.x_TextureSampleAdd.w;
  u_xlat1.w = (x_50 + x_58);
  let x_65 : f32 = u_xlat0.w;
  let x_67 : f32 = u_xlat1.w;
  u_xlat2.x = ((x_65 * x_67) + -0.001f);
  let x_76 : f32 = u_xlat2.x;
  u_xlatb2 = (x_76 < 0.0f);
  let x_79 : bool = u_xlatb2;
  if (((select(0i, 1i, x_79) * -1i) != 0i)) {
    discard;
  }
  let x_93 : vec2<f32> = vs_TEXCOORD0;
  let x_94 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_93);
  u_xlat2 = vec3<f32>(x_94.x, x_94.y, x_94.z);
  let x_96 : vec3<f32> = u_xlat2;
  let x_99 : vec4<f32> = x_53.x_TextureSampleAdd;
  let x_101 : vec3<f32> = (x_96 + vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_101.x, x_101.y, x_101.z, x_102.w);
  let x_104 : vec4<f32> = vs_COLOR0;
  let x_105 : vec3<f32> = vec3<f32>(x_104.x, x_104.y, x_104.z);
  let x_106 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_105.x, x_105.y, x_105.z, x_106.w);
  let x_108 : vec4<f32> = u_xlat0;
  let x_109 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_108 * x_109);
  let x_113 : vec4<f32> = u_xlat0;
  let x_115 : vec4<f32> = u_xlat0;
  let x_117 : vec3<f32> = (vec3<f32>(x_113.w, x_113.w, x_113.w) * vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_117.x, x_117.y, x_117.z, x_118.w);
  let x_121 : f32 = u_xlat0.w;
  SV_Target0.w = x_121;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

