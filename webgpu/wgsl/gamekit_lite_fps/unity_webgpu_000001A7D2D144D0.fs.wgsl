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
  x_GlossMapScale : f32,
  @size(12)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_46 : PGlobals;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlatb14 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat21 : f32;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(12) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : f32;

@group(0) @binding(5) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(8) var samplerunity_NHxRoughness : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_230 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  let x_26 : vec2<f32> = vec2<f32>(x_25.x, x_25.w);
  let x_27 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_26.x, x_26.y, x_27.z, x_27.w);
  let x_37 : vec4<f32> = vs_TEXCOORD0;
  let x_39 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_37.x, x_37.y));
  u_xlat1 = vec3<f32>(x_39.x, x_39.y, x_39.z);
  let x_42 : vec3<f32> = u_xlat1;
  let x_51 : vec4<f32> = x_46.x_Color;
  u_xlat2 = (x_42 * vec3<f32>(x_51.x, x_51.y, x_51.z));
  let x_55 : vec4<f32> = x_46.x_Color;
  let x_57 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_55.x, x_55.y, x_55.z) * x_57) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_62 : vec4<f32> = u_xlat0;
  let x_64 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_62.x, x_62.x, x_62.x) * x_64) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_73 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_73) * 0.959999979f) + 0.959999979f);
  let x_85 : vec4<f32> = vs_TEXCOORD0;
  let x_87 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_85.x, x_85.y));
  u_xlat3 = vec3<f32>(x_87.x, x_87.y, x_87.w);
  let x_91 : f32 = u_xlat3.z;
  let x_93 : f32 = u_xlat3.x;
  u_xlat3.x = (x_91 * x_93);
  let x_98 : vec3<f32> = u_xlat3;
  u_xlat14 = ((vec2<f32>(x_98.x, x_98.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat14;
  let x_108 : vec2<f32> = u_xlat14;
  u_xlat22 = dot(x_107, x_108);
  let x_110 : f32 = u_xlat22;
  u_xlat22 = min(x_110, 1.0f);
  let x_113 : f32 = u_xlat22;
  u_xlat22 = (-(x_113) + 1.0f);
  let x_116 : f32 = u_xlat22;
  u_xlat22 = sqrt(x_116);
  let x_118 : vec2<f32> = u_xlat14;
  let x_121 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_118.y, x_118.y, x_118.y) * vec3<f32>(x_121.x, x_121.y, x_121.z));
  let x_125 : vec4<f32> = vs_TEXCOORD2;
  let x_127 : vec2<f32> = u_xlat14;
  let x_130 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_125.x, x_125.y, x_125.z) * vec3<f32>(x_127.x, x_127.x, x_127.x)) + x_130);
  let x_133 : vec4<f32> = vs_TEXCOORD4;
  let x_135 : f32 = u_xlat22;
  let x_138 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135, x_135, x_135)) + x_138);
  let x_143 : vec3<f32> = vs_TEXCOORD5;
  let x_148 : vec4<f32> = x_46.unity_WorldToLight[1i];
  u_xlat4 = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_153 : vec4<f32> = x_46.unity_WorldToLight[0i];
  let x_155 : vec3<f32> = vs_TEXCOORD5;
  let x_158 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.x, x_155.x, x_155.x)) + x_158);
  let x_162 : vec4<f32> = x_46.unity_WorldToLight[2i];
  let x_164 : vec3<f32> = vs_TEXCOORD5;
  let x_167 : vec3<f32> = u_xlat4;
  u_xlat4 = ((vec3<f32>(x_162.x, x_162.y, x_162.z) * vec3<f32>(x_164.z, x_164.z, x_164.z)) + x_167);
  let x_169 : vec3<f32> = u_xlat4;
  let x_172 : vec4<f32> = x_46.unity_WorldToLight[3i];
  u_xlat4 = (x_169 + vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_180 : f32 = x_46.unity_ProbeVolumeParams.x;
  u_xlatb14 = (x_180 == 1.0f);
  let x_182 : bool = u_xlatb14;
  if (x_182) {
    let x_187 : f32 = x_46.unity_ProbeVolumeParams.y;
    u_xlatb14 = (x_187 == 1.0f);
    let x_190 : vec3<f32> = vs_TEXCOORD5;
    let x_193 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[1i];
    let x_195 : vec3<f32> = (vec3<f32>(x_190.y, x_190.y, x_190.y) * vec3<f32>(x_193.x, x_193.y, x_193.z));
    let x_196 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_195.x, x_195.y, x_195.z, x_196.w);
    let x_199 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[0i];
    let x_201 : vec3<f32> = vs_TEXCOORD5;
    let x_204 : vec4<f32> = u_xlat5;
    let x_206 : vec3<f32> = ((vec3<f32>(x_199.x, x_199.y, x_199.z) * vec3<f32>(x_201.x, x_201.x, x_201.x)) + vec3<f32>(x_204.x, x_204.y, x_204.z));
    let x_207 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
    let x_210 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[2i];
    let x_212 : vec3<f32> = vs_TEXCOORD5;
    let x_215 : vec4<f32> = u_xlat5;
    let x_217 : vec3<f32> = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.z, x_212.z, x_212.z)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
    let x_218 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
    let x_220 : vec4<f32> = u_xlat5;
    let x_223 : vec4<f32> = x_46.unity_ProbeVolumeWorldToObject[3i];
    let x_225 : vec3<f32> = (vec3<f32>(x_220.x, x_220.y, x_220.z) + vec3<f32>(x_223.x, x_223.y, x_223.z));
    let x_226 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_225.x, x_225.y, x_225.z, x_226.w);
    let x_228 : bool = u_xlatb14;
    if (x_228) {
      let x_233 : vec4<f32> = u_xlat5;
      x_230 = vec3<f32>(x_233.x, x_233.y, x_233.z);
    } else {
      let x_236 : vec3<f32> = vs_TEXCOORD5;
      x_230 = x_236;
    }
    let x_237 : vec3<f32> = x_230;
    let x_238 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_237.x, x_237.y, x_237.z, x_238.w);
    let x_240 : vec4<f32> = u_xlat5;
    let x_245 : vec3<f32> = x_46.unity_ProbeVolumeMin;
    let x_247 : vec3<f32> = (vec3<f32>(x_240.x, x_240.y, x_240.z) + -(x_245));
    let x_248 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
    let x_250 : vec4<f32> = u_xlat5;
    let x_253 : vec3<f32> = x_46.unity_ProbeVolumeSizeInv;
    let x_254 : vec3<f32> = (vec3<f32>(x_250.x, x_250.y, x_250.z) * x_253);
    let x_255 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_255.x, x_254.x, x_254.y, x_254.z);
    let x_258 : f32 = u_xlat5.y;
    u_xlat14.x = ((x_258 * 0.25f) + 0.75f);
    let x_266 : f32 = x_46.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_266 * 0.5f) + 0.75f);
    let x_270 : f32 = u_xlat21;
    let x_272 : f32 = u_xlat14.x;
    u_xlat5.x = max(x_270, x_272);
    let x_283 : vec4<f32> = u_xlat5;
    let x_285 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_283.x, x_283.z, x_283.w));
    u_xlat5 = x_285;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_292 : vec4<f32> = u_xlat5;
  let x_294 : vec4<f32> = x_46.unity_OcclusionMaskSelector;
  u_xlat14.x = dot(x_292, x_294);
  let x_298 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_298, 0.0f, 1.0f);
  let x_302 : vec3<f32> = u_xlat4;
  let x_303 : vec3<f32> = u_xlat4;
  u_xlat21 = dot(x_302, x_303);
  let x_310 : f32 = u_xlat21;
  let x_312 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_310, x_310));
  u_xlat21 = x_312.x;
  let x_315 : f32 = u_xlat14.x;
  let x_316 : f32 = u_xlat21;
  u_xlat14.x = (x_315 * x_316);
  let x_319 : vec2<f32> = u_xlat14;
  let x_323 : vec4<f32> = x_46.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_319.x, x_319.x, x_319.x) * vec3<f32>(x_323.x, x_323.y, x_323.z));
  let x_327 : vec4<f32> = vs_TEXCOORD1;
  let x_330 : vec3<f32> = u_xlat3;
  u_xlat14.x = dot(-(vec3<f32>(x_327.x, x_327.y, x_327.z)), x_330);
  let x_334 : f32 = u_xlat14.x;
  let x_336 : f32 = u_xlat14.x;
  u_xlat14.x = (x_334 + x_336);
  let x_339 : vec3<f32> = u_xlat3;
  let x_340 : vec2<f32> = u_xlat14;
  let x_344 : vec4<f32> = vs_TEXCOORD1;
  let x_347 : vec3<f32> = ((x_339 * -(vec3<f32>(x_340.x, x_340.x, x_340.x))) + -(vec3<f32>(x_344.x, x_344.y, x_344.z)));
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_347.x, x_347.y, x_347.z, x_348.w);
  let x_353 : f32 = vs_TEXCOORD2.w;
  u_xlat6.x = x_353;
  let x_356 : f32 = vs_TEXCOORD3.w;
  u_xlat6.y = x_356;
  let x_359 : f32 = vs_TEXCOORD4.w;
  u_xlat6.z = x_359;
  let x_361 : vec3<f32> = u_xlat3;
  let x_362 : vec3<f32> = u_xlat6;
  u_xlat14.x = dot(x_361, x_362);
  let x_366 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_366, 0.0f, 1.0f);
  let x_369 : vec4<f32> = u_xlat5;
  let x_371 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_369.x, x_369.y, x_369.z), x_371);
  let x_373 : f32 = u_xlat21;
  let x_374 : f32 = u_xlat21;
  u_xlat21 = (x_373 * x_374);
  let x_376 : f32 = u_xlat21;
  let x_377 : f32 = u_xlat21;
  u_xlat3.x = (x_376 * x_377);
  let x_381 : f32 = u_xlat0.y;
  let x_385 : f32 = x_46.x_GlossMapScale;
  u_xlat3.y = ((-(x_381) * x_385) + 1.0f);
  let x_395 : vec3<f32> = u_xlat3;
  let x_397 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_395.x, x_395.y));
  u_xlat7 = x_397.x;
  let x_399 : f32 = u_xlat7;
  u_xlat7 = (x_399 * 16.0f);
  let x_402 : vec3<f32> = u_xlat1;
  let x_403 : f32 = u_xlat7;
  u_xlat1 = (x_402 * vec3<f32>(x_403, x_403, x_403));
  let x_406 : vec3<f32> = u_xlat2;
  let x_407 : vec4<f32> = u_xlat0;
  let x_410 : vec3<f32> = u_xlat1;
  let x_411 : vec3<f32> = ((x_406 * vec3<f32>(x_407.x, x_407.x, x_407.x)) + x_410);
  let x_412 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_411.x, x_411.y, x_412.z, x_411.z);
  let x_414 : vec2<f32> = u_xlat14;
  let x_416 : vec3<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_414.x, x_414.x, x_414.x) * x_416);
  let x_420 : vec4<f32> = u_xlat0;
  let x_422 : vec3<f32> = u_xlat1;
  let x_423 : vec3<f32> = (vec3<f32>(x_420.x, x_420.y, x_420.w) * x_422);
  let x_424 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_423.x, x_423.y, x_423.z, x_424.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

