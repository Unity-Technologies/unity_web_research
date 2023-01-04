struct PGlobals {
  x_GlobalMipBias : vec2<f32>,
}

struct UnityPerMaterial {
  x_BaseMap_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_BaseColor : vec4<f32>,
  x_SpecColor : vec4<f32>,
  x_EmissionColor : vec4<f32>,
  x_Cutoff : f32,
  x_Smoothness : f32,
  x_Metallic : f32,
  x_BumpScale : f32,
  x_Parallax : f32,
  x_OcclusionStrength : f32,
  x_ClearCoatMask : f32,
  x_ClearCoatSmoothness : f32,
  x_DetailAlbedoMapScale : f32,
  x_DetailNormalMapScale : f32,
  x_Surface : f32,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

@group(0) @binding(0) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(1) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_49 : PGlobals;

@group(1) @binding(1) var<uniform> x_83 : UnityPerMaterial;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat5 : vec2<f32>;
  var u_xlat6 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_17 : vec4<f32> = vs_TEXCOORD4;
  u_xlat0 = (vec3<f32>(x_12.z, x_12.x, x_12.y) * vec3<f32>(x_17.y, x_17.z, x_17.x));
  let x_20 : vec3<f32> = vs_TEXCOORD2;
  let x_22 : vec4<f32> = vs_TEXCOORD4;
  let x_25 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_20.y, x_20.z, x_20.x) * vec3<f32>(x_22.z, x_22.x, x_22.y)) + -(x_25));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec4<f32> = vs_TEXCOORD4;
  u_xlat0 = (x_28 * vec3<f32>(x_29.w, x_29.w, x_29.w));
  let x_46 : vec2<f32> = vs_TEXCOORD1;
  let x_56 : f32 = x_49.x_GlobalMipBias.x;
  let x_57 : vec4<f32> = textureSampleBias(x_BumpMap, sampler_BumpMap, x_46, x_56);
  u_xlat1 = vec3<f32>(x_57.x, x_57.y, x_57.w);
  let x_61 : f32 = u_xlat1.x;
  let x_64 : f32 = u_xlat1.z;
  u_xlat1.x = (x_61 * x_64);
  let x_67 : vec3<f32> = u_xlat1;
  let x_74 : vec2<f32> = ((vec2<f32>(x_67.x, x_67.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_75 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_74.x, x_74.y, x_75.z);
  let x_79 : vec3<f32> = u_xlat1;
  let x_86 : f32 = x_83.x_BumpScale;
  let x_88 : f32 = x_83.x_BumpScale;
  let x_89 : vec2<f32> = vec2<f32>(x_86, x_88);
  u_xlat5 = (vec2<f32>(x_79.x, x_79.y) * vec2<f32>(x_89.x, x_89.y));
  let x_95 : vec3<f32> = u_xlat1;
  let x_97 : vec3<f32> = u_xlat1;
  u_xlat6 = dot(vec2<f32>(x_95.x, x_95.y), vec2<f32>(x_97.x, x_97.y));
  let x_100 : f32 = u_xlat6;
  u_xlat6 = min(x_100, 1.0f);
  let x_103 : f32 = u_xlat6;
  u_xlat6 = (-(x_103) + 1.0f);
  let x_106 : f32 = u_xlat6;
  u_xlat6 = sqrt(x_106);
  let x_108 : f32 = u_xlat6;
  u_xlat6 = max(x_108, 1.00000002e-16f);
  let x_111 : vec3<f32> = u_xlat0;
  let x_112 : vec2<f32> = u_xlat5;
  u_xlat0 = (x_111 * vec3<f32>(x_112.y, x_112.y, x_112.y));
  let x_115 : vec2<f32> = u_xlat5;
  let x_117 : vec4<f32> = vs_TEXCOORD4;
  let x_120 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_115.x, x_115.x, x_115.x) * vec3<f32>(x_117.x, x_117.y, x_117.z)) + x_120);
  let x_122 : f32 = u_xlat6;
  let x_124 : vec3<f32> = vs_TEXCOORD2;
  let x_126 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_122, x_122, x_122) * x_124) + x_126);
  let x_128 : vec3<f32> = u_xlat0;
  let x_129 : vec3<f32> = u_xlat0;
  u_xlat6 = dot(x_128, x_129);
  let x_131 : f32 = u_xlat6;
  u_xlat6 = inverseSqrt(x_131);
  let x_135 : f32 = u_xlat6;
  let x_137 : vec3<f32> = u_xlat0;
  let x_138 : vec3<f32> = (vec3<f32>(x_135, x_135, x_135) * x_137);
  let x_139 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
  SV_Target0.w = 0.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD2_param : vec3<f32>, @location(2) vs_TEXCOORD4_param : vec4<f32>, @location(0) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

