struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(0) @binding(2) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(5) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat18 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlatb18 : bool;
  var u_xlat4 : vec4<f32>;
  var x_193 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_27 : vec4<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (vec4<f32>(x_27.w, x_27.x, x_27.y, x_27.z) * vec4<f32>(x_38.w, x_38.x, x_38.y, x_38.z));
  let x_41 : vec4<f32> = u_xlat0;
  let x_44 : vec4<f32> = x_33.x_Color;
  let x_49 : vec3<f32> = ((vec3<f32>(x_41.x, x_41.y, x_41.z) * vec3<f32>(x_44.x, x_44.y, x_44.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_50 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_49.x, x_49.y, x_49.z, x_50.w);
  let x_55 : f32 = x_33.x_Metallic;
  let x_57 : f32 = x_33.x_Metallic;
  let x_59 : f32 = x_33.x_Metallic;
  let x_60 : vec3<f32> = vec3<f32>(x_55, x_57, x_59);
  let x_65 : vec4<f32> = u_xlat0;
  let x_70 : vec3<f32> = ((vec3<f32>(x_60.x, x_60.y, x_60.z) * vec3<f32>(x_65.x, x_65.y, x_65.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_71 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_70.x, x_70.y, x_70.z, x_71.w);
  let x_76 : f32 = x_33.x_Metallic;
  u_xlat18 = ((-(x_76) * 0.959999979f) + 0.959999979f);
  let x_83 : f32 = u_xlat18;
  let x_85 : vec4<f32> = u_xlat1;
  u_xlat7 = (vec3<f32>(x_83, x_83, x_83) * vec3<f32>(x_85.y, x_85.z, x_85.w));
  let x_89 : vec4<f32> = vs_TEXCOORD4;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  u_xlat18 = dot(vec3<f32>(x_89.x, x_89.y, x_89.z), vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : f32 = u_xlat18;
  u_xlat18 = inverseSqrt(x_94);
  let x_97 : f32 = u_xlat18;
  let x_99 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_97, x_97, x_97) * vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_105 : vec3<f32> = vs_TEXCOORD5;
  let x_110 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_105.y, x_105.y, x_105.y) * vec3<f32>(x_110.x, x_110.y, x_110.z));
  let x_115 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_117 : vec3<f32> = vs_TEXCOORD5;
  let x_120 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_115.x, x_115.y, x_115.z) * vec3<f32>(x_117.x, x_117.x, x_117.x)) + x_120);
  let x_124 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_126 : vec3<f32> = vs_TEXCOORD5;
  let x_129 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_124.x, x_124.y, x_124.z) * vec3<f32>(x_126.z, x_126.z, x_126.z)) + x_129);
  let x_131 : vec3<f32> = u_xlat3;
  let x_134 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat3 = (x_131 + vec3<f32>(x_134.x, x_134.y, x_134.z));
  let x_143 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb18 = (x_143 == 1.0f);
  let x_146 : bool = u_xlatb18;
  if (x_146) {
    let x_151 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb18 = (x_151 == 1.0f);
    let x_154 : vec3<f32> = vs_TEXCOORD5;
    let x_157 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_159 : vec3<f32> = (vec3<f32>(x_154.y, x_154.y, x_154.y) * vec3<f32>(x_157.x, x_157.y, x_157.z));
    let x_160 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
    let x_163 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_165 : vec3<f32> = vs_TEXCOORD5;
    let x_168 : vec4<f32> = u_xlat4;
    let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.x, x_165.x, x_165.x)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
    let x_171 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_174 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_176 : vec3<f32> = vs_TEXCOORD5;
    let x_179 : vec4<f32> = u_xlat4;
    let x_181 : vec3<f32> = ((vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_176.z, x_176.z, x_176.z)) + vec3<f32>(x_179.x, x_179.y, x_179.z));
    let x_182 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_184 : vec4<f32> = u_xlat4;
    let x_187 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_189 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + vec3<f32>(x_187.x, x_187.y, x_187.z));
    let x_190 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_192 : bool = u_xlatb18;
    if (x_192) {
      let x_196 : vec4<f32> = u_xlat4;
      x_193 = vec3<f32>(x_196.x, x_196.y, x_196.z);
    } else {
      let x_199 : vec3<f32> = vs_TEXCOORD5;
      x_193 = x_199;
    }
    let x_200 : vec3<f32> = x_193;
    let x_201 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
    let x_203 : vec4<f32> = u_xlat4;
    let x_208 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_210 : vec3<f32> = (vec3<f32>(x_203.x, x_203.y, x_203.z) + -(x_208));
    let x_211 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
    let x_213 : vec4<f32> = u_xlat4;
    let x_216 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_217 : vec3<f32> = (vec3<f32>(x_213.x, x_213.y, x_213.z) * x_216);
    let x_218 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_218.x, x_217.x, x_217.y, x_217.z);
    let x_221 : f32 = u_xlat4.y;
    u_xlat18 = ((x_221 * 0.25f) + 0.75f);
    let x_229 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat20 = ((x_229 * 0.5f) + 0.75f);
    let x_233 : f32 = u_xlat18;
    let x_234 : f32 = u_xlat20;
    u_xlat4.x = max(x_233, x_234);
    let x_245 : vec4<f32> = u_xlat4;
    let x_247 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_245.x, x_245.z, x_245.w));
    u_xlat4 = x_247;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_254 : vec4<f32> = u_xlat4;
  let x_256 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat18 = dot(x_254, x_256);
  let x_258 : f32 = u_xlat18;
  u_xlat18 = clamp(x_258, 0.0f, 1.0f);
  let x_261 : vec3<f32> = u_xlat3;
  let x_262 : vec3<f32> = u_xlat3;
  u_xlat20 = dot(x_261, x_262);
  let x_269 : f32 = u_xlat20;
  let x_271 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_269, x_269));
  u_xlat20 = x_271.x;
  let x_273 : f32 = u_xlat18;
  let x_274 : f32 = u_xlat20;
  u_xlat18 = (x_273 * x_274);
  let x_276 : f32 = u_xlat18;
  let x_280 : vec4<f32> = x_33.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_276, x_276, x_276) * vec3<f32>(x_280.x, x_280.y, x_280.z));
  let x_284 : vec4<f32> = vs_TEXCOORD1;
  let x_287 : vec3<f32> = u_xlat2;
  u_xlat18 = dot(-(vec3<f32>(x_284.x, x_284.y, x_284.z)), x_287);
  let x_289 : f32 = u_xlat18;
  let x_290 : f32 = u_xlat18;
  u_xlat18 = (x_289 + x_290);
  let x_292 : vec3<f32> = u_xlat2;
  let x_293 : f32 = u_xlat18;
  let x_297 : vec4<f32> = vs_TEXCOORD1;
  let x_300 : vec3<f32> = ((x_292 * -(vec3<f32>(x_293, x_293, x_293))) + -(vec3<f32>(x_297.x, x_297.y, x_297.z)));
  let x_301 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_300.x, x_300.y, x_300.z, x_301.w);
  let x_307 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_307;
  let x_311 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_311;
  let x_314 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_314;
  let x_316 : vec3<f32> = u_xlat2;
  let x_317 : vec3<f32> = u_xlat5;
  u_xlat18 = dot(x_316, x_317);
  let x_319 : f32 = u_xlat18;
  u_xlat18 = clamp(x_319, 0.0f, 1.0f);
  let x_321 : vec4<f32> = u_xlat4;
  let x_323 : vec3<f32> = u_xlat5;
  u_xlat2.x = dot(vec3<f32>(x_321.x, x_321.y, x_321.z), x_323);
  let x_327 : f32 = u_xlat2.x;
  let x_329 : f32 = u_xlat2.x;
  u_xlat2.x = (x_327 * x_329);
  let x_333 : f32 = u_xlat2.x;
  let x_335 : f32 = u_xlat2.x;
  u_xlat2.x = (x_333 * x_335);
  let x_340 : f32 = x_33.x_Glossiness;
  u_xlat2.y = (-(x_340) + 1.0f);
  let x_349 : vec3<f32> = u_xlat2;
  let x_351 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_349.x, x_349.y));
  u_xlat2.x = x_351.x;
  let x_355 : f32 = u_xlat2.x;
  u_xlat2.x = (x_355 * 16.0f);
  let x_359 : vec4<f32> = u_xlat0;
  let x_361 : vec3<f32> = u_xlat2;
  let x_363 : vec3<f32> = (vec3<f32>(x_359.x, x_359.y, x_359.z) * vec3<f32>(x_361.x, x_361.x, x_361.x));
  let x_364 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_363.x, x_363.y, x_363.z, x_364.w);
  let x_366 : vec3<f32> = u_xlat7;
  let x_367 : vec4<f32> = u_xlat1;
  let x_370 : vec4<f32> = u_xlat0;
  let x_372 : vec3<f32> = ((x_366 * vec3<f32>(x_367.x, x_367.x, x_367.x)) + vec3<f32>(x_370.x, x_370.y, x_370.z));
  let x_373 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_372.x, x_372.y, x_372.z, x_373.w);
  let x_375 : f32 = u_xlat18;
  let x_377 : vec3<f32> = u_xlat3;
  u_xlat7 = (vec3<f32>(x_375, x_375, x_375) * x_377);
  let x_379 : vec4<f32> = u_xlat0;
  let x_381 : vec3<f32> = u_xlat7;
  let x_382 : vec3<f32> = (vec3<f32>(x_379.x, x_379.y, x_379.z) * x_381);
  let x_383 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_386 : f32 = vs_TEXCOORD1.w;
  u_xlat18 = x_386;
  let x_387 : f32 = u_xlat18;
  u_xlat18 = clamp(x_387, 0.0f, 1.0f);
  let x_391 : vec4<f32> = u_xlat0;
  let x_393 : f32 = u_xlat18;
  let x_395 : vec3<f32> = (vec3<f32>(x_391.x, x_391.y, x_391.z) * vec3<f32>(x_393, x_393, x_393));
  let x_396 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_399 : f32 = u_xlat1.x;
  SV_Target0.w = x_399;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

