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

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_46 : PGlobals;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(3) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

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

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(14) var sampler_LightTextureB0 : sampler;

@group(0) @binding(5) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(13) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : f32;

@group(0) @binding(6) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_NHxRoughness : sampler;

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
  let x_312 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_310, x_310));
  u_xlat21 = x_312.x;
  let x_322 : vec3<f32> = u_xlat4;
  let x_323 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_322);
  u_xlat22 = x_323.w;
  let x_325 : f32 = u_xlat21;
  let x_326 : f32 = u_xlat22;
  u_xlat21 = (x_325 * x_326);
  let x_329 : f32 = u_xlat14.x;
  let x_330 : f32 = u_xlat21;
  u_xlat14.x = (x_329 * x_330);
  let x_333 : vec2<f32> = u_xlat14;
  let x_337 : vec4<f32> = x_46.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_333.x, x_333.x, x_333.x) * vec3<f32>(x_337.x, x_337.y, x_337.z));
  let x_341 : vec4<f32> = vs_TEXCOORD1;
  let x_344 : vec3<f32> = u_xlat3;
  u_xlat14.x = dot(-(vec3<f32>(x_341.x, x_341.y, x_341.z)), x_344);
  let x_348 : f32 = u_xlat14.x;
  let x_350 : f32 = u_xlat14.x;
  u_xlat14.x = (x_348 + x_350);
  let x_353 : vec3<f32> = u_xlat3;
  let x_354 : vec2<f32> = u_xlat14;
  let x_358 : vec4<f32> = vs_TEXCOORD1;
  let x_361 : vec3<f32> = ((x_353 * -(vec3<f32>(x_354.x, x_354.x, x_354.x))) + -(vec3<f32>(x_358.x, x_358.y, x_358.z)));
  let x_362 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_361.x, x_361.y, x_361.z, x_362.w);
  let x_367 : f32 = vs_TEXCOORD2.w;
  u_xlat6.x = x_367;
  let x_370 : f32 = vs_TEXCOORD3.w;
  u_xlat6.y = x_370;
  let x_373 : f32 = vs_TEXCOORD4.w;
  u_xlat6.z = x_373;
  let x_375 : vec3<f32> = u_xlat3;
  let x_376 : vec3<f32> = u_xlat6;
  u_xlat14.x = dot(x_375, x_376);
  let x_380 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_380, 0.0f, 1.0f);
  let x_383 : vec4<f32> = u_xlat5;
  let x_385 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(vec3<f32>(x_383.x, x_383.y, x_383.z), x_385);
  let x_387 : f32 = u_xlat21;
  let x_388 : f32 = u_xlat21;
  u_xlat21 = (x_387 * x_388);
  let x_390 : f32 = u_xlat21;
  let x_391 : f32 = u_xlat21;
  u_xlat3.x = (x_390 * x_391);
  let x_395 : f32 = u_xlat0.y;
  let x_399 : f32 = x_46.x_GlossMapScale;
  u_xlat3.y = ((-(x_395) * x_399) + 1.0f);
  let x_409 : vec3<f32> = u_xlat3;
  let x_411 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_409.x, x_409.y));
  u_xlat7 = x_411.x;
  let x_413 : f32 = u_xlat7;
  u_xlat7 = (x_413 * 16.0f);
  let x_416 : vec3<f32> = u_xlat1;
  let x_417 : f32 = u_xlat7;
  u_xlat1 = (x_416 * vec3<f32>(x_417, x_417, x_417));
  let x_420 : vec3<f32> = u_xlat2;
  let x_421 : vec4<f32> = u_xlat0;
  let x_424 : vec3<f32> = u_xlat1;
  let x_425 : vec3<f32> = ((x_420 * vec3<f32>(x_421.x, x_421.x, x_421.x)) + x_424);
  let x_426 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_425.x, x_425.y, x_426.z, x_425.z);
  let x_428 : vec2<f32> = u_xlat14;
  let x_430 : vec3<f32> = u_xlat4;
  u_xlat1 = (vec3<f32>(x_428.x, x_428.x, x_428.x) * x_430);
  let x_434 : vec4<f32> = u_xlat0;
  let x_436 : vec3<f32> = u_xlat1;
  let x_437 : vec3<f32> = (vec3<f32>(x_434.x, x_434.y, x_434.w) * x_436);
  let x_438 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_437.x, x_437.y, x_437.z, x_438.w);
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

