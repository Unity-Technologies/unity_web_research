diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_UnderlayColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_55 : PGlobals;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD3;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0.x = x_25.w;
  let x_33 : f32 = u_xlat0.x;
  let x_38 : f32 = vs_TEXCOORD4.x;
  let x_42 : f32 = vs_TEXCOORD4.y;
  u_xlat0.x = ((x_33 * x_38) + -(x_42));
  let x_47 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_47, 0.0f, 1.0f);
  let x_61 : vec4<f32> = x_55.x_UnderlayColor;
  let x_64 : vec4<f32> = x_55.x_UnderlayColor;
  let x_66 : vec3<f32> = (vec3<f32>(x_61.w, x_61.w, x_61.w) * vec3<f32>(x_64.x, x_64.y, x_64.z));
  let x_67 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_71 : f32 = x_55.x_UnderlayColor.w;
  u_xlat1.w = x_71;
  let x_73 : vec4<f32> = u_xlat0;
  let x_75 : vec4<f32> = u_xlat1;
  u_xlat0 = (vec4<f32>(x_73.x, x_73.x, x_73.x, x_73.x) * x_75);
  let x_81 : vec4<f32> = vs_TEXCOORD0;
  let x_83 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_81.x, x_81.y));
  u_xlat1.x = x_83.w;
  let x_87 : f32 = u_xlat1.x;
  let x_90 : f32 = vs_TEXCOORD1.x;
  let x_93 : f32 = vs_TEXCOORD1.w;
  u_xlat1.x = ((x_87 * x_90) + -(x_93));
  let x_98 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_98, 0.0f, 1.0f);
  let x_102 : vec4<f32> = u_xlat1;
  let x_105 : vec4<f32> = vs_COLOR0;
  u_xlat2 = (vec4<f32>(x_102.x, x_102.x, x_102.x, x_102.x) * x_105);
  let x_108 : f32 = vs_COLOR0.w;
  let x_111 : f32 = u_xlat1.x;
  u_xlat1.x = ((-(x_108) * x_111) + 1.0f);
  let x_115 : vec4<f32> = u_xlat0;
  let x_116 : vec4<f32> = u_xlat1;
  let x_119 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_115 * vec4<f32>(x_116.x, x_116.x, x_116.x, x_116.x)) + x_119);
  let x_123 : vec4<f32> = u_xlat0;
  let x_124 : vec4<f32> = vs_TEXCOORD3;
  SV_Target0 = (x_123 * vec4<f32>(x_124.z, x_124.z, x_124.z, x_124.z));
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD3_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec2<f32>, @location(1) vs_TEXCOORD0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


