diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_TexA_HDR : vec4<f32>,
  /* @offset(16) */
  x_TexB_HDR : vec4<f32>,
  /* @offset(32) */
  x_Level : f32,
  /* @offset(36) */
  x_value : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(0) var x_TexA : texture_cube<f32>;

@group(0) @binding(2) var sampler_TexA : sampler;

var<private> vs_TEXCOORD0 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_26 : PGlobals;

var<private> u_xlat6 : f32;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_TexB : texture_cube<f32>;

@group(0) @binding(3) var sampler_TexB : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec3<f32> = vs_TEXCOORD0;
  let x_31 : f32 = x_26.x_Level;
  let x_32 : vec4<f32> = textureSampleLevel(x_TexA, sampler_TexA, x_23, x_31);
  u_xlat0 = x_32;
  let x_38 : f32 = u_xlat0.w;
  u_xlat6 = (x_38 + -1.0f);
  let x_43 : f32 = x_26.x_TexA_HDR.w;
  let x_44 : f32 = u_xlat6;
  u_xlat6 = ((x_43 * x_44) + 1.0f);
  let x_48 : f32 = u_xlat6;
  u_xlat6 = log2(x_48);
  let x_50 : f32 = u_xlat6;
  let x_53 : f32 = x_26.x_TexA_HDR.y;
  u_xlat6 = (x_50 * x_53);
  let x_55 : f32 = u_xlat6;
  u_xlat6 = exp2(x_55);
  let x_57 : f32 = u_xlat6;
  let x_60 : f32 = x_26.x_TexA_HDR.x;
  u_xlat6 = (x_57 * x_60);
  let x_62 : vec4<f32> = u_xlat0;
  let x_64 : f32 = u_xlat6;
  let x_66 : vec3<f32> = (vec3<f32>(x_62.x, x_62.y, x_62.z) * vec3<f32>(x_64, x_64, x_64));
  let x_67 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_66.x, x_66.y, x_66.z, x_67.w);
  let x_75 : vec3<f32> = vs_TEXCOORD0;
  let x_77 : f32 = x_26.x_Level;
  let x_78 : vec4<f32> = textureSampleLevel(x_TexB, sampler_TexB, x_75, x_77);
  u_xlat1 = x_78;
  let x_80 : f32 = u_xlat1.w;
  u_xlat6 = (x_80 + -1.0f);
  let x_84 : f32 = x_26.x_TexB_HDR.w;
  let x_85 : f32 = u_xlat6;
  u_xlat6 = ((x_84 * x_85) + 1.0f);
  let x_88 : f32 = u_xlat6;
  u_xlat6 = log2(x_88);
  let x_90 : f32 = u_xlat6;
  let x_92 : f32 = x_26.x_TexB_HDR.y;
  u_xlat6 = (x_90 * x_92);
  let x_94 : f32 = u_xlat6;
  u_xlat6 = exp2(x_94);
  let x_96 : f32 = u_xlat6;
  let x_98 : f32 = x_26.x_TexB_HDR.x;
  u_xlat6 = (x_96 * x_98);
  let x_100 : f32 = u_xlat6;
  let x_102 : vec4<f32> = u_xlat1;
  let x_105 : vec4<f32> = u_xlat0;
  let x_108 : vec3<f32> = ((vec3<f32>(x_100, x_100, x_100) * vec3<f32>(x_102.x, x_102.y, x_102.z)) + -(vec3<f32>(x_105.x, x_105.y, x_105.z)));
  let x_109 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_108.x, x_108.y, x_108.z, x_109.w);
  let x_115 : f32 = x_26.x_value;
  let x_117 : f32 = x_26.x_value;
  let x_119 : f32 = x_26.x_value;
  let x_120 : vec3<f32> = vec3<f32>(x_115, x_117, x_119);
  let x_125 : vec4<f32> = u_xlat1;
  let x_128 : vec4<f32> = u_xlat0;
  let x_130 : vec3<f32> = ((vec3<f32>(x_120.x, x_120.y, x_120.z) * vec3<f32>(x_125.x, x_125.y, x_125.z)) + vec3<f32>(x_128.x, x_128.y, x_128.z));
  let x_131 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_130.x, x_130.y, x_130.z, x_131.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


