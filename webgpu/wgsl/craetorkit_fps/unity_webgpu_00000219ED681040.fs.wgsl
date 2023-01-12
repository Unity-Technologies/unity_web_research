struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_Color2 : vec4<f32>,
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(8) var sampler_Gradient : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(1) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(7) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat33 : f32;
  var u_xlat1 : vec4<f32>;
  var u_xlat34 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlatb34 : bool;
  var u_xlatb2 : bool;
  var u_xlatb13 : bool;
  var u_xlat3 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var x_233 : vec3<f32>;
  var u_xlat24 : vec2<f32>;
  var u_xlat4 : vec3<f32>;
  var x_414 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec4<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb8 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_611 : f32;
  var x_623 : f32;
  var x_635 : f32;
  var u_xlat36 : f32;
  var u_xlatb37 : bool;
  var u_xlat37 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec4<f32>;
  var x_800 : f32;
  var x_812 : f32;
  var x_824 : f32;
  var u_xlat12 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlatb1 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_13 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_24 : vec3<f32> = (-(x_13) + x_23);
  let x_25 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_24.x, x_24.y, x_24.z, x_25.w);
  let x_29 : vec4<f32> = u_xlat0;
  let x_31 : vec4<f32> = u_xlat0;
  u_xlat33 = dot(vec3<f32>(x_29.x, x_29.y, x_29.z), vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_34 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat33;
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec3<f32> = (vec3<f32>(x_37, x_37, x_37) * vec3<f32>(x_39.x, x_39.y, x_39.z));
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_47 : f32 = vs_TEXCOORD3;
  u_xlat34 = (x_47 + -1.0f);
  let x_50 : f32 = u_xlat34;
  u_xlat34 = (x_50 * -9.999998093f);
  let x_53 : f32 = u_xlat34;
  u_xlat34 = clamp(x_53, 0.0f, 1.0f);
  let x_58 : f32 = u_xlat34;
  let x_64 : vec2<f32> = vs_TEXCOORD0;
  let x_65 : vec2<f32> = (-(vec2<f32>(x_58, x_58)) + x_64);
  let x_66 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_65.x, x_65.y, x_66.z, x_66.w);
  let x_78 : vec4<f32> = u_xlat2;
  let x_80 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_78.x, x_78.y));
  u_xlat34 = x_80.x;
  let x_87 : vec2<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_87);
  u_xlat2.x = x_88.z;
  let x_92 : f32 = u_xlat34;
  u_xlat34 = ((x_92 * -2.0f) + 1.0f);
  let x_97 : f32 = u_xlat2.x;
  let x_99 : f32 = u_xlat34;
  u_xlat34 = (-(x_97) + x_99);
  let x_104 : f32 = u_xlat34;
  u_xlatb34 = (x_104 < 0.0f);
  let x_106 : bool = u_xlatb34;
  if (((select(0i, 1i, x_106) * -1i) != 0i)) {
    discard;
  }
  let x_118 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat2.x = x_118;
  let x_121 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat2.y = x_121;
  let x_126 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat2.z = x_126;
  let x_128 : vec4<f32> = u_xlat0;
  let x_130 : vec4<f32> = u_xlat2;
  u_xlat34 = dot(vec3<f32>(x_128.x, x_128.y, x_128.z), vec3<f32>(x_130.x, x_130.y, x_130.z));
  let x_133 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_140 : vec3<f32> = (x_133 + -(vec3<f32>(x_137.x, x_137.y, x_137.z)));
  let x_141 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_140.x, x_140.y, x_140.z, x_141.w);
  let x_143 : vec4<f32> = u_xlat2;
  let x_145 : vec4<f32> = u_xlat2;
  u_xlat2.x = dot(vec3<f32>(x_143.x, x_143.y, x_143.z), vec3<f32>(x_145.x, x_145.y, x_145.z));
  let x_150 : f32 = u_xlat2.x;
  u_xlat2.x = sqrt(x_150);
  let x_153 : f32 = u_xlat34;
  let x_156 : f32 = u_xlat2.x;
  u_xlat2.x = (-(x_153) + x_156);
  let x_161 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_163 : f32 = u_xlat2.x;
  let x_165 : f32 = u_xlat34;
  u_xlat34 = ((x_161 * x_163) + x_165);
  let x_167 : f32 = u_xlat34;
  let x_170 : f32 = x_18.x_LightShadowData.z;
  let x_173 : f32 = x_18.x_LightShadowData.w;
  u_xlat34 = ((x_167 * x_170) + x_173);
  let x_175 : f32 = u_xlat34;
  u_xlat34 = clamp(x_175, 0.0f, 1.0f);
  let x_180 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb2 = (x_180 == 1.0f);
  let x_182 : bool = u_xlatb2;
  if (x_182) {
    let x_187 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb13 = (x_187 == 1.0f);
    let x_190 : vec3<f32> = vs_TEXCOORD2;
    let x_194 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_196 : vec3<f32> = (vec3<f32>(x_190.y, x_190.y, x_190.y) * vec3<f32>(x_194.x, x_194.y, x_194.z));
    let x_197 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_200 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_202 : vec3<f32> = vs_TEXCOORD2;
    let x_205 : vec4<f32> = u_xlat3;
    let x_207 : vec3<f32> = ((vec3<f32>(x_200.x, x_200.y, x_200.z) * vec3<f32>(x_202.x, x_202.x, x_202.x)) + vec3<f32>(x_205.x, x_205.y, x_205.z));
    let x_208 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_207.x, x_207.y, x_207.z, x_208.w);
    let x_211 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_213 : vec3<f32> = vs_TEXCOORD2;
    let x_216 : vec4<f32> = u_xlat3;
    let x_218 : vec3<f32> = ((vec3<f32>(x_211.x, x_211.y, x_211.z) * vec3<f32>(x_213.z, x_213.z, x_213.z)) + vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_221 : vec4<f32> = u_xlat3;
    let x_225 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_227 : vec3<f32> = (vec3<f32>(x_221.x, x_221.y, x_221.z) + vec3<f32>(x_225.x, x_225.y, x_225.z));
    let x_228 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
    let x_232 : bool = u_xlatb13;
    if (x_232) {
      let x_236 : vec4<f32> = u_xlat3;
      x_233 = vec3<f32>(x_236.x, x_236.y, x_236.z);
    } else {
      let x_239 : vec3<f32> = vs_TEXCOORD2;
      x_233 = x_239;
    }
    let x_240 : vec3<f32> = x_233;
    u_xlat13 = x_240;
    let x_241 : vec3<f32> = u_xlat13;
    let x_244 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    u_xlat13 = (x_241 + -(x_244));
    let x_247 : vec3<f32> = u_xlat13;
    let x_250 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_251 : vec3<f32> = (x_247 * x_250);
    let x_252 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_252.x, x_251.x, x_251.y, x_251.z);
    let x_255 : f32 = u_xlat3.y;
    u_xlat13.x = ((x_255 * 0.25f) + 0.75f);
    let x_264 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24.x = ((x_264 * 0.5f) + 0.75f);
    let x_270 : f32 = u_xlat24.x;
    let x_272 : f32 = u_xlat13.x;
    u_xlat3.x = max(x_270, x_272);
    let x_283 : vec4<f32> = u_xlat3;
    let x_285 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_283.x, x_283.z, x_283.w));
    u_xlat3 = x_285;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_291 : vec4<f32> = u_xlat3;
  let x_294 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat13.x = dot(x_291, x_294);
  let x_298 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_298, 0.0f, 1.0f);
  let x_303 : vec4<f32> = vs_TEXCOORD6;
  let x_305 : vec4<f32> = vs_TEXCOORD6;
  u_xlat24 = (vec2<f32>(x_303.x, x_303.y) / vec2<f32>(x_305.w, x_305.w));
  let x_313 : vec2<f32> = u_xlat24;
  let x_314 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, x_313);
  u_xlat24.x = x_314.x;
  let x_318 : f32 = u_xlat24.x;
  let x_321 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_318) + x_321);
  let x_324 : f32 = u_xlat34;
  let x_326 : f32 = u_xlat13.x;
  let x_329 : f32 = u_xlat24.x;
  u_xlat34 = ((x_324 * x_326) + x_329);
  let x_333 : f32 = x_18.x_Glossiness;
  u_xlat13.x = (-(x_333) + 1.0f);
  let x_337 : vec4<f32> = u_xlat1;
  let x_341 : vec3<f32> = vs_TEXCOORD1;
  u_xlat24.x = dot(-(vec3<f32>(x_337.x, x_337.y, x_337.z)), x_341);
  let x_345 : f32 = u_xlat24.x;
  let x_347 : f32 = u_xlat24.x;
  u_xlat24.x = (x_345 + x_347);
  let x_350 : vec3<f32> = vs_TEXCOORD1;
  let x_351 : vec2<f32> = u_xlat24;
  let x_355 : vec4<f32> = u_xlat1;
  let x_358 : vec3<f32> = ((x_350 * -(vec3<f32>(x_351.x, x_351.x, x_351.x))) + -(vec3<f32>(x_355.x, x_355.y, x_355.z)));
  let x_359 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_362 : f32 = u_xlat34;
  let x_366 : vec4<f32> = x_18.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_362, x_362, x_362) * vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_369 : bool = u_xlatb2;
  if (x_369) {
    let x_373 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb34 = (x_373 == 1.0f);
    let x_375 : vec3<f32> = vs_TEXCOORD2;
    let x_378 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_380 : vec3<f32> = (vec3<f32>(x_375.y, x_375.y, x_375.y) * vec3<f32>(x_378.x, x_378.y, x_378.z));
    let x_381 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_380.x, x_381.y, x_380.y, x_380.z);
    let x_384 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_386 : vec3<f32> = vs_TEXCOORD2;
    let x_389 : vec4<f32> = u_xlat2;
    let x_391 : vec3<f32> = ((vec3<f32>(x_384.x, x_384.y, x_384.z) * vec3<f32>(x_386.x, x_386.x, x_386.x)) + vec3<f32>(x_389.x, x_389.z, x_389.w));
    let x_392 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_391.x, x_392.y, x_391.y, x_391.z);
    let x_395 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_397 : vec3<f32> = vs_TEXCOORD2;
    let x_400 : vec4<f32> = u_xlat2;
    let x_402 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_397.z, x_397.z, x_397.z)) + vec3<f32>(x_400.x, x_400.z, x_400.w));
    let x_403 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_402.x, x_403.y, x_402.y, x_402.z);
    let x_405 : vec4<f32> = u_xlat2;
    let x_408 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_410 : vec3<f32> = (vec3<f32>(x_405.x, x_405.z, x_405.w) + vec3<f32>(x_408.x, x_408.y, x_408.z));
    let x_411 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_410.x, x_411.y, x_410.y, x_410.z);
    let x_413 : bool = u_xlatb34;
    if (x_413) {
      let x_417 : vec4<f32> = u_xlat2;
      x_414 = vec3<f32>(x_417.x, x_417.z, x_417.w);
    } else {
      let x_420 : vec3<f32> = vs_TEXCOORD2;
      x_414 = x_420;
    }
    let x_421 : vec3<f32> = x_414;
    let x_422 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_421.x, x_422.y, x_421.y, x_421.z);
    let x_424 : vec4<f32> = u_xlat2;
    let x_427 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_429 : vec3<f32> = (vec3<f32>(x_424.x, x_424.z, x_424.w) + -(x_427));
    let x_430 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_429.x, x_430.y, x_429.y, x_429.z);
    let x_433 : vec4<f32> = u_xlat2;
    let x_436 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_437 : vec3<f32> = (vec3<f32>(x_433.x, x_433.z, x_433.w) * x_436);
    let x_438 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_438.x, x_437.x, x_437.y, x_437.z);
    let x_441 : f32 = u_xlat5.y;
    u_xlat34 = (x_441 * 0.25f);
    let x_444 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat2.x = (x_444 * 0.5f);
    let x_448 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24.x = ((-(x_448) * 0.5f) + 0.25f);
    let x_453 : f32 = u_xlat34;
    let x_455 : f32 = u_xlat2.x;
    u_xlat34 = max(x_453, x_455);
    let x_458 : f32 = u_xlat24.x;
    let x_459 : f32 = u_xlat34;
    u_xlat5.x = min(x_458, x_459);
    let x_466 : vec4<f32> = u_xlat5;
    let x_468 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_466.x, x_466.z, x_466.w));
    u_xlat6 = x_468;
    let x_469 : vec4<f32> = u_xlat5;
    let x_472 : vec3<f32> = (vec3<f32>(x_469.x, x_469.z, x_469.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_473 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_472.x, x_473.y, x_472.y, x_472.z);
    let x_479 : vec4<f32> = u_xlat2;
    let x_481 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_479.x, x_479.z, x_479.w));
    u_xlat7 = x_481;
    let x_482 : vec4<f32> = u_xlat5;
    let x_485 : vec3<f32> = (vec3<f32>(x_482.x, x_482.z, x_482.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_486 : vec4<f32> = u_xlat2;
    u_xlat2 = vec4<f32>(x_485.x, x_486.y, x_485.y, x_485.z);
    let x_491 : vec4<f32> = u_xlat2;
    let x_493 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_491.x, x_491.z, x_491.w));
    u_xlat5 = x_493;
    let x_495 : vec3<f32> = vs_TEXCOORD1;
    let x_496 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_495.x, x_495.y, x_495.z, x_496.w);
    u_xlat8.w = 1.0f;
    let x_499 : vec4<f32> = u_xlat6;
    let x_500 : vec4<f32> = u_xlat8;
    u_xlat6.x = dot(x_499, x_500);
    let x_503 : vec4<f32> = u_xlat7;
    let x_504 : vec4<f32> = u_xlat8;
    u_xlat6.y = dot(x_503, x_504);
    let x_507 : vec4<f32> = u_xlat5;
    let x_508 : vec4<f32> = u_xlat8;
    u_xlat6.z = dot(x_507, x_508);
  } else {
    let x_512 : vec3<f32> = vs_TEXCOORD1;
    let x_513 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_512.x, x_512.y, x_512.z, x_513.w);
    u_xlat5.w = 1.0f;
    let x_517 : vec4<f32> = x_18.unity_SHAr;
    let x_518 : vec4<f32> = u_xlat5;
    u_xlat6.x = dot(x_517, x_518);
    let x_522 : vec4<f32> = x_18.unity_SHAg;
    let x_523 : vec4<f32> = u_xlat5;
    u_xlat6.y = dot(x_522, x_523);
    let x_528 : vec4<f32> = x_18.unity_SHAb;
    let x_529 : vec4<f32> = u_xlat5;
    u_xlat6.z = dot(x_528, x_529);
  }
  let x_532 : vec4<f32> = u_xlat6;
  let x_535 : vec3<f32> = vs_TEXCOORD4;
  let x_536 : vec3<f32> = (vec3<f32>(x_532.x, x_532.y, x_532.z) + x_535);
  let x_537 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_536.x, x_537.y, x_536.y, x_536.z);
  let x_539 : vec4<f32> = u_xlat2;
  let x_542 : vec3<f32> = max(vec3<f32>(x_539.x, x_539.z, x_539.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_543 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_542.x, x_543.y, x_542.y, x_542.z);
  let x_547 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb34 = (0.0f < x_547);
  let x_549 : bool = u_xlatb34;
  if (x_549) {
    let x_552 : vec4<f32> = u_xlat3;
    let x_554 : vec4<f32> = u_xlat3;
    u_xlat34 = dot(vec3<f32>(x_552.x, x_552.y, x_552.z), vec3<f32>(x_554.x, x_554.y, x_554.z));
    let x_557 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_557);
    let x_559 : f32 = u_xlat34;
    let x_561 : vec4<f32> = u_xlat3;
    let x_563 : vec3<f32> = (vec3<f32>(x_559, x_559, x_559) * vec3<f32>(x_561.x, x_561.y, x_561.z));
    let x_564 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
    let x_566 : vec3<f32> = vs_TEXCOORD2;
    let x_570 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    let x_572 : vec3<f32> = (-(x_566) + vec3<f32>(x_570.x, x_570.y, x_570.z));
    let x_573 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_572.x, x_572.y, x_572.z, x_573.w);
    let x_575 : vec4<f32> = u_xlat6;
    let x_577 : vec4<f32> = u_xlat5;
    let x_579 : vec3<f32> = (vec3<f32>(x_575.x, x_575.y, x_575.z) / vec3<f32>(x_577.x, x_577.y, x_577.z));
    let x_580 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_579.x, x_579.y, x_579.z, x_580.w);
    let x_582 : vec3<f32> = vs_TEXCOORD2;
    let x_586 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_588 : vec3<f32> = (-(x_582) + vec3<f32>(x_586.x, x_586.y, x_586.z));
    let x_589 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_588.x, x_588.y, x_588.z, x_589.w);
    let x_591 : vec4<f32> = u_xlat7;
    let x_593 : vec4<f32> = u_xlat5;
    let x_595 : vec3<f32> = (vec3<f32>(x_591.x, x_591.y, x_591.z) / vec3<f32>(x_593.x, x_593.y, x_593.z));
    let x_596 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
    let x_602 : vec4<f32> = u_xlat5;
    let x_605 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_602.x, x_602.y, x_602.z, x_602.x));
    u_xlatb8 = vec3<bool>(x_605.x, x_605.y, x_605.z);
    let x_608 : vec4<f32> = u_xlat6;
    hlslcc_movcTemp = x_608;
    let x_610 : bool = u_xlatb8.x;
    if (x_610) {
      let x_615 : f32 = u_xlat6.x;
      x_611 = x_615;
    } else {
      let x_618 : f32 = u_xlat7.x;
      x_611 = x_618;
    }
    let x_619 : f32 = x_611;
    hlslcc_movcTemp.x = x_619;
    let x_622 : bool = u_xlatb8.y;
    if (x_622) {
      let x_627 : f32 = u_xlat6.y;
      x_623 = x_627;
    } else {
      let x_630 : f32 = u_xlat7.y;
      x_623 = x_630;
    }
    let x_631 : f32 = x_623;
    hlslcc_movcTemp.y = x_631;
    let x_634 : bool = u_xlatb8.z;
    if (x_634) {
      let x_639 : f32 = u_xlat6.z;
      x_635 = x_639;
    } else {
      let x_642 : f32 = u_xlat7.z;
      x_635 = x_642;
    }
    let x_643 : f32 = x_635;
    hlslcc_movcTemp.z = x_643;
    let x_645 : vec4<f32> = hlslcc_movcTemp;
    u_xlat6 = x_645;
    let x_647 : f32 = u_xlat6.y;
    let x_649 : f32 = u_xlat6.x;
    u_xlat34 = min(x_647, x_649);
    let x_652 : f32 = u_xlat6.z;
    let x_653 : f32 = u_xlat34;
    u_xlat34 = min(x_652, x_653);
    let x_655 : vec3<f32> = vs_TEXCOORD2;
    let x_657 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    let x_660 : vec3<f32> = (x_655 + -(vec3<f32>(x_657.x, x_657.y, x_657.z)));
    let x_661 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
    let x_663 : vec4<f32> = u_xlat5;
    let x_665 : f32 = u_xlat34;
    let x_668 : vec4<f32> = u_xlat6;
    let x_670 : vec3<f32> = ((vec3<f32>(x_663.x, x_663.y, x_663.z) * vec3<f32>(x_665, x_665, x_665)) + vec3<f32>(x_668.x, x_668.y, x_668.z));
    let x_671 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_670.x, x_670.y, x_670.z, x_671.w);
  } else {
    let x_674 : vec4<f32> = u_xlat3;
    let x_675 : vec3<f32> = vec3<f32>(x_674.x, x_674.y, x_674.z);
    let x_676 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  }
  let x_679 : f32 = u_xlat13.x;
  u_xlat34 = ((-(x_679) * 0.699999988f) + 1.700000048f);
  let x_685 : f32 = u_xlat34;
  let x_687 : f32 = u_xlat13.x;
  u_xlat34 = (x_685 * x_687);
  let x_689 : f32 = u_xlat34;
  u_xlat34 = (x_689 * 6.0f);
  let x_700 : vec4<f32> = u_xlat5;
  let x_702 : f32 = u_xlat34;
  let x_703 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_700.x, x_700.y, x_700.z), x_702);
  u_xlat5 = x_703;
  let x_706 : f32 = u_xlat5.w;
  u_xlat36 = (x_706 + -1.0f);
  let x_710 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_711 : f32 = u_xlat36;
  u_xlat36 = ((x_710 * x_711) + 1.0f);
  let x_714 : f32 = u_xlat36;
  u_xlat36 = log2(x_714);
  let x_716 : f32 = u_xlat36;
  let x_718 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_716 * x_718);
  let x_720 : f32 = u_xlat36;
  u_xlat36 = exp2(x_720);
  let x_722 : f32 = u_xlat36;
  let x_724 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_722 * x_724);
  let x_726 : vec4<f32> = u_xlat5;
  let x_728 : f32 = u_xlat36;
  let x_730 : vec3<f32> = (vec3<f32>(x_726.x, x_726.y, x_726.z) * vec3<f32>(x_728, x_728, x_728));
  let x_731 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_735 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb37 = (x_735 < 0.999989986f);
  let x_738 : bool = u_xlatb37;
  if (x_738) {
    let x_743 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb37 = (0.0f < x_743);
    let x_745 : bool = u_xlatb37;
    if (x_745) {
      let x_749 : vec4<f32> = u_xlat3;
      let x_751 : vec4<f32> = u_xlat3;
      u_xlat37 = dot(vec3<f32>(x_749.x, x_749.y, x_749.z), vec3<f32>(x_751.x, x_751.y, x_751.z));
      let x_754 : f32 = u_xlat37;
      u_xlat37 = inverseSqrt(x_754);
      let x_756 : vec4<f32> = u_xlat3;
      let x_758 : f32 = u_xlat37;
      let x_760 : vec3<f32> = (vec3<f32>(x_756.x, x_756.y, x_756.z) * vec3<f32>(x_758, x_758, x_758));
      let x_761 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
      let x_763 : vec3<f32> = vs_TEXCOORD2;
      let x_767 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      let x_769 : vec3<f32> = (-(x_763) + vec3<f32>(x_767.x, x_767.y, x_767.z));
      let x_770 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
      let x_772 : vec4<f32> = u_xlat8;
      let x_774 : vec4<f32> = u_xlat7;
      let x_776 : vec3<f32> = (vec3<f32>(x_772.x, x_772.y, x_772.z) / vec3<f32>(x_774.x, x_774.y, x_774.z));
      let x_777 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_776.x, x_776.y, x_776.z, x_777.w);
      let x_780 : vec3<f32> = vs_TEXCOORD2;
      let x_784 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat9 = (-(x_780) + vec3<f32>(x_784.x, x_784.y, x_784.z));
      let x_787 : vec3<f32> = u_xlat9;
      let x_788 : vec4<f32> = u_xlat7;
      u_xlat9 = (x_787 / vec3<f32>(x_788.x, x_788.y, x_788.z));
      let x_792 : vec4<f32> = u_xlat7;
      let x_794 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_792.x, x_792.y, x_792.z, x_792.x));
      u_xlatb10 = vec3<bool>(x_794.x, x_794.y, x_794.z);
      let x_797 : vec4<f32> = u_xlat8;
      hlslcc_movcTemp_1 = x_797;
      let x_799 : bool = u_xlatb10.x;
      if (x_799) {
        let x_804 : f32 = u_xlat8.x;
        x_800 = x_804;
      } else {
        let x_807 : f32 = u_xlat9.x;
        x_800 = x_807;
      }
      let x_808 : f32 = x_800;
      hlslcc_movcTemp_1.x = x_808;
      let x_811 : bool = u_xlatb10.y;
      if (x_811) {
        let x_816 : f32 = u_xlat8.y;
        x_812 = x_816;
      } else {
        let x_819 : f32 = u_xlat9.y;
        x_812 = x_819;
      }
      let x_820 : f32 = x_812;
      hlslcc_movcTemp_1.y = x_820;
      let x_823 : bool = u_xlatb10.z;
      if (x_823) {
        let x_828 : f32 = u_xlat8.z;
        x_824 = x_828;
      } else {
        let x_831 : f32 = u_xlat9.z;
        x_824 = x_831;
      }
      let x_832 : f32 = x_824;
      hlslcc_movcTemp_1.z = x_832;
      let x_834 : vec4<f32> = hlslcc_movcTemp_1;
      u_xlat8 = x_834;
      let x_836 : f32 = u_xlat8.y;
      let x_838 : f32 = u_xlat8.x;
      u_xlat37 = min(x_836, x_838);
      let x_841 : f32 = u_xlat8.z;
      let x_842 : f32 = u_xlat37;
      u_xlat37 = min(x_841, x_842);
      let x_844 : vec3<f32> = vs_TEXCOORD2;
      let x_846 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      let x_849 : vec3<f32> = (x_844 + -(vec3<f32>(x_846.x, x_846.y, x_846.z)));
      let x_850 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_849.x, x_849.y, x_849.z, x_850.w);
      let x_852 : vec4<f32> = u_xlat7;
      let x_854 : f32 = u_xlat37;
      let x_857 : vec4<f32> = u_xlat8;
      let x_859 : vec3<f32> = ((vec3<f32>(x_852.x, x_852.y, x_852.z) * vec3<f32>(x_854, x_854, x_854)) + vec3<f32>(x_857.x, x_857.y, x_857.z));
      let x_860 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
    }
    let x_866 : vec4<f32> = u_xlat3;
    let x_868 : f32 = u_xlat34;
    let x_869 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_866.x, x_866.y, x_866.z), x_868);
    u_xlat7 = x_869;
    let x_871 : f32 = u_xlat7.w;
    u_xlat34 = (x_871 + -1.0f);
    let x_875 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_876 : f32 = u_xlat34;
    u_xlat34 = ((x_875 * x_876) + 1.0f);
    let x_879 : f32 = u_xlat34;
    u_xlat34 = log2(x_879);
    let x_881 : f32 = u_xlat34;
    let x_883 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat34 = (x_881 * x_883);
    let x_885 : f32 = u_xlat34;
    u_xlat34 = exp2(x_885);
    let x_887 : f32 = u_xlat34;
    let x_889 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat34 = (x_887 * x_889);
    let x_891 : vec4<f32> = u_xlat7;
    let x_893 : f32 = u_xlat34;
    let x_895 : vec3<f32> = (vec3<f32>(x_891.x, x_891.y, x_891.z) * vec3<f32>(x_893, x_893, x_893));
    let x_896 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_895.x, x_895.y, x_895.z, x_896.w);
    let x_898 : f32 = u_xlat36;
    let x_900 : vec4<f32> = u_xlat5;
    let x_903 : vec4<f32> = u_xlat3;
    let x_906 : vec3<f32> = ((vec3<f32>(x_898, x_898, x_898) * vec3<f32>(x_900.x, x_900.y, x_900.z)) + -(vec3<f32>(x_903.x, x_903.y, x_903.z)));
    let x_907 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_906.x, x_906.y, x_906.z, x_907.w);
    let x_910 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_912 : vec4<f32> = u_xlat5;
    let x_915 : vec4<f32> = u_xlat3;
    let x_917 : vec3<f32> = ((vec3<f32>(x_910.w, x_910.w, x_910.w) * vec3<f32>(x_912.x, x_912.y, x_912.z)) + vec3<f32>(x_915.x, x_915.y, x_915.z));
    let x_918 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
  }
  let x_920 : vec3<f32> = vs_TEXCOORD1;
  let x_921 : vec3<f32> = vs_TEXCOORD1;
  u_xlat34 = dot(x_920, x_921);
  let x_923 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_923);
  let x_925 : f32 = u_xlat34;
  let x_927 : vec3<f32> = vs_TEXCOORD1;
  let x_928 : vec3<f32> = (vec3<f32>(x_925, x_925, x_925) * x_927);
  let x_929 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_928.x, x_928.y, x_928.z, x_929.w);
  let x_933 : vec4<f32> = x_18.x_Color;
  let x_937 : vec3<f32> = (vec3<f32>(x_933.x, x_933.y, x_933.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_938 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_937.x, x_937.y, x_937.z, x_938.w);
  let x_942 : f32 = x_18.x_Metallic;
  let x_944 : f32 = x_18.x_Metallic;
  let x_946 : f32 = x_18.x_Metallic;
  let x_947 : vec3<f32> = vec3<f32>(x_942, x_944, x_946);
  let x_952 : vec4<f32> = u_xlat5;
  let x_957 : vec3<f32> = ((vec3<f32>(x_947.x, x_947.y, x_947.z) * vec3<f32>(x_952.x, x_952.y, x_952.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_958 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_957.x, x_957.y, x_957.z, x_958.w);
  let x_961 : f32 = x_18.x_Metallic;
  u_xlat34 = ((-(x_961) * 0.959999979f) + 0.959999979f);
  let x_966 : f32 = u_xlat34;
  let x_969 : vec4<f32> = x_18.x_Color;
  let x_971 : vec3<f32> = (vec3<f32>(x_966, x_966, x_966) * vec3<f32>(x_969.x, x_969.y, x_969.z));
  let x_972 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  let x_974 : vec4<f32> = u_xlat0;
  let x_976 : f32 = u_xlat33;
  let x_980 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_982 : vec3<f32> = ((vec3<f32>(x_974.x, x_974.y, x_974.z) * vec3<f32>(x_976, x_976, x_976)) + vec3<f32>(x_980.x, x_980.y, x_980.z));
  let x_983 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  let x_985 : vec4<f32> = u_xlat0;
  let x_987 : vec4<f32> = u_xlat0;
  u_xlat33 = dot(vec3<f32>(x_985.x, x_985.y, x_985.z), vec3<f32>(x_987.x, x_987.y, x_987.z));
  let x_990 : f32 = u_xlat33;
  u_xlat33 = max(x_990, 0.001f);
  let x_993 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_993);
  let x_995 : f32 = u_xlat33;
  let x_997 : vec4<f32> = u_xlat0;
  let x_999 : vec3<f32> = (vec3<f32>(x_995, x_995, x_995) * vec3<f32>(x_997.x, x_997.y, x_997.z));
  let x_1000 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_999.x, x_999.y, x_999.z, x_1000.w);
  let x_1002 : vec4<f32> = u_xlat3;
  let x_1004 : vec4<f32> = u_xlat1;
  u_xlat33 = dot(vec3<f32>(x_1002.x, x_1002.y, x_1002.z), vec3<f32>(x_1004.x, x_1004.y, x_1004.z));
  let x_1007 : vec4<f32> = u_xlat3;
  let x_1010 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_1007.x, x_1007.y, x_1007.z), vec3<f32>(x_1010.x, x_1010.y, x_1010.z));
  let x_1015 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1015, 0.0f, 1.0f);
  let x_1019 : vec4<f32> = u_xlat3;
  let x_1021 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_1019.x, x_1019.y, x_1019.z), vec3<f32>(x_1021.x, x_1021.y, x_1021.z));
  let x_1024 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1024, 0.0f, 1.0f);
  let x_1027 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_1029 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_1027.x, x_1027.y, x_1027.z), vec3<f32>(x_1029.x, x_1029.y, x_1029.z));
  let x_1034 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1034, 0.0f, 1.0f);
  let x_1039 : f32 = u_xlat0.x;
  let x_1041 : f32 = u_xlat0.x;
  u_xlat11.x = (x_1039 * x_1041);
  let x_1044 : vec3<f32> = u_xlat11;
  let x_1046 : vec3<f32> = u_xlat13;
  u_xlat11.x = dot(vec2<f32>(x_1044.x, x_1044.x), vec2<f32>(x_1046.x, x_1046.x));
  let x_1051 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1051 + -0.5f);
  let x_1057 : f32 = u_xlat1.x;
  u_xlat22 = (-(x_1057) + 1.0f);
  let x_1061 : f32 = u_xlat22;
  let x_1062 : f32 = u_xlat22;
  u_xlat23 = (x_1061 * x_1062);
  let x_1064 : f32 = u_xlat23;
  let x_1065 : f32 = u_xlat23;
  u_xlat23 = (x_1064 * x_1065);
  let x_1067 : f32 = u_xlat22;
  let x_1068 : f32 = u_xlat23;
  u_xlat22 = (x_1067 * x_1068);
  let x_1071 : f32 = u_xlat11.x;
  let x_1072 : f32 = u_xlat22;
  u_xlat22 = ((x_1071 * x_1072) + 1.0f);
  let x_1075 : f32 = u_xlat33;
  u_xlat23 = (-(abs(x_1075)) + 1.0f);
  let x_1079 : f32 = u_xlat23;
  let x_1080 : f32 = u_xlat23;
  u_xlat3.x = (x_1079 * x_1080);
  let x_1084 : f32 = u_xlat3.x;
  let x_1086 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1084 * x_1086);
  let x_1089 : f32 = u_xlat23;
  let x_1091 : f32 = u_xlat3.x;
  u_xlat23 = (x_1089 * x_1091);
  let x_1094 : f32 = u_xlat11.x;
  let x_1095 : f32 = u_xlat23;
  u_xlat11.x = ((x_1094 * x_1095) + 1.0f);
  let x_1100 : f32 = u_xlat11.x;
  let x_1101 : f32 = u_xlat22;
  u_xlat11.x = (x_1100 * x_1101);
  let x_1105 : f32 = u_xlat13.x;
  let x_1107 : f32 = u_xlat13.x;
  u_xlat22 = (x_1105 * x_1107);
  let x_1109 : f32 = u_xlat22;
  u_xlat22 = max(x_1109, 0.002f);
  let x_1112 : f32 = u_xlat22;
  u_xlat13.x = (-(x_1112) + 1.0f);
  let x_1116 : f32 = u_xlat33;
  let x_1119 : f32 = u_xlat13.x;
  let x_1121 : f32 = u_xlat22;
  u_xlat3.x = ((abs(x_1116) * x_1119) + x_1121);
  let x_1125 : f32 = u_xlat1.x;
  let x_1127 : f32 = u_xlat13.x;
  let x_1129 : f32 = u_xlat22;
  u_xlat13.x = ((x_1125 * x_1127) + x_1129);
  let x_1132 : f32 = u_xlat33;
  let x_1135 : f32 = u_xlat13.x;
  u_xlat33 = (abs(x_1132) * x_1135);
  let x_1138 : f32 = u_xlat1.x;
  let x_1140 : f32 = u_xlat3.x;
  let x_1142 : f32 = u_xlat33;
  u_xlat33 = ((x_1138 * x_1140) + x_1142);
  let x_1144 : f32 = u_xlat33;
  u_xlat33 = (x_1144 + 0.00001f);
  let x_1147 : f32 = u_xlat33;
  u_xlat33 = (0.5f / x_1147);
  let x_1149 : f32 = u_xlat22;
  let x_1150 : f32 = u_xlat22;
  u_xlat13.x = (x_1149 * x_1150);
  let x_1153 : f32 = u_xlat12;
  let x_1155 : f32 = u_xlat13.x;
  let x_1157 : f32 = u_xlat12;
  u_xlat3.x = ((x_1153 * x_1155) + -(x_1157));
  let x_1162 : f32 = u_xlat3.x;
  let x_1163 : f32 = u_xlat12;
  u_xlat12 = ((x_1162 * x_1163) + 1.0f);
  let x_1167 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1167 * 0.318309873f);
  let x_1171 : f32 = u_xlat12;
  let x_1172 : f32 = u_xlat12;
  u_xlat12 = ((x_1171 * x_1172) + 0.0000001f);
  let x_1177 : f32 = u_xlat13.x;
  let x_1178 : f32 = u_xlat12;
  u_xlat12 = (x_1177 / x_1178);
  let x_1180 : f32 = u_xlat33;
  let x_1181 : f32 = u_xlat12;
  u_xlat11.z = (x_1180 * x_1181);
  let x_1184 : vec4<f32> = u_xlat1;
  let x_1186 : vec3<f32> = u_xlat11;
  let x_1188 : vec2<f32> = (vec2<f32>(x_1184.x, x_1184.x) * vec2<f32>(x_1186.x, x_1186.z));
  let x_1189 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_1188.x, x_1189.y, x_1188.y);
  let x_1192 : f32 = u_xlat11.z;
  u_xlat33 = (x_1192 * 3.141592741f);
  let x_1195 : f32 = u_xlat33;
  u_xlat33 = max(x_1195, 0.0f);
  let x_1197 : f32 = u_xlat22;
  let x_1198 : f32 = u_xlat22;
  u_xlat22 = ((x_1197 * x_1198) + 1.0f);
  let x_1201 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_1201);
  let x_1203 : vec4<f32> = u_xlat5;
  let x_1205 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_1203.x, x_1203.y, x_1203.z), vec3<f32>(x_1205.x, x_1205.y, x_1205.z));
  let x_1211 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_1211 == 0.0f));
  let x_1213 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_1213);
  let x_1216 : f32 = u_xlat33;
  let x_1218 : f32 = u_xlat1.x;
  u_xlat33 = (x_1216 * x_1218);
  let x_1220 : f32 = u_xlat34;
  let x_1223 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_1220) + x_1223);
  let x_1227 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1227 + 1.0f);
  let x_1231 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1231, 0.0f, 1.0f);
  let x_1234 : vec3<f32> = u_xlat4;
  let x_1235 : vec3<f32> = u_xlat11;
  let x_1238 : vec4<f32> = u_xlat2;
  let x_1240 : vec3<f32> = ((x_1234 * vec3<f32>(x_1235.x, x_1235.x, x_1235.x)) + vec3<f32>(x_1238.x, x_1238.z, x_1238.w));
  let x_1241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1240.x, x_1240.y, x_1240.z, x_1241.w);
  let x_1243 : vec3<f32> = u_xlat4;
  let x_1244 : f32 = u_xlat33;
  let x_1246 : vec3<f32> = (x_1243 * vec3<f32>(x_1244, x_1244, x_1244));
  let x_1247 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1246.x, x_1246.y, x_1246.z, x_1247.w);
  let x_1250 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1250) + 1.0f);
  let x_1255 : f32 = u_xlat0.x;
  let x_1257 : f32 = u_xlat0.x;
  u_xlat11.x = (x_1255 * x_1257);
  let x_1261 : f32 = u_xlat11.x;
  let x_1263 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1261 * x_1263);
  let x_1267 : f32 = u_xlat0.x;
  let x_1269 : f32 = u_xlat11.x;
  u_xlat0.x = (x_1267 * x_1269);
  let x_1272 : vec4<f32> = u_xlat5;
  u_xlat4 = (-(vec3<f32>(x_1272.x, x_1272.y, x_1272.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1277 : vec3<f32> = u_xlat4;
  let x_1278 : vec4<f32> = u_xlat0;
  let x_1281 : vec4<f32> = u_xlat5;
  let x_1283 : vec3<f32> = ((x_1277 * vec3<f32>(x_1278.x, x_1278.x, x_1278.x)) + vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
  let x_1284 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1283.x, x_1283.y, x_1284.z, x_1283.z);
  let x_1286 : vec4<f32> = u_xlat0;
  let x_1288 : vec4<f32> = u_xlat3;
  let x_1290 : vec3<f32> = (vec3<f32>(x_1286.x, x_1286.y, x_1286.w) * vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1290.x, x_1290.y, x_1291.z, x_1290.z);
  let x_1293 : vec4<f32> = u_xlat7;
  let x_1295 : vec4<f32> = u_xlat2;
  let x_1298 : vec4<f32> = u_xlat0;
  let x_1300 : vec3<f32> = ((vec3<f32>(x_1293.x, x_1293.y, x_1293.z) * vec3<f32>(x_1295.x, x_1295.y, x_1295.z)) + vec3<f32>(x_1298.x, x_1298.y, x_1298.w));
  let x_1301 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1300.z);
  let x_1303 : vec4<f32> = u_xlat6;
  let x_1305 : f32 = u_xlat22;
  let x_1307 : vec3<f32> = (vec3<f32>(x_1303.x, x_1303.y, x_1303.z) * vec3<f32>(x_1305, x_1305, x_1305));
  let x_1308 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1307.x, x_1307.y, x_1307.z, x_1308.w);
  let x_1310 : vec4<f32> = u_xlat5;
  let x_1313 : vec4<f32> = u_xlat1;
  let x_1315 : vec3<f32> = (-(vec3<f32>(x_1310.x, x_1310.y, x_1310.z)) + vec3<f32>(x_1313.x, x_1313.x, x_1313.x));
  let x_1316 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1315.x, x_1315.y, x_1316.z, x_1315.z);
  let x_1318 : f32 = u_xlat23;
  let x_1320 : vec4<f32> = u_xlat1;
  let x_1323 : vec4<f32> = u_xlat5;
  let x_1325 : vec3<f32> = ((vec3<f32>(x_1318, x_1318, x_1318) * vec3<f32>(x_1320.x, x_1320.y, x_1320.w)) + vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  let x_1328 : vec4<f32> = u_xlat2;
  let x_1330 : vec4<f32> = u_xlat1;
  let x_1333 : vec4<f32> = u_xlat0;
  let x_1335 : vec3<f32> = ((vec3<f32>(x_1328.x, x_1328.y, x_1328.z) * vec3<f32>(x_1330.x, x_1330.y, x_1330.z)) + vec3<f32>(x_1333.x, x_1333.y, x_1333.w));
  let x_1336 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1336.w);
  let x_1340 : vec4<f32> = u_xlat0;
  let x_1344 : vec4<f32> = x_18.x_Color2;
  let x_1346 : vec3<f32> = (vec3<f32>(x_1340.x, x_1340.y, x_1340.z) + vec3<f32>(x_1344.x, x_1344.y, x_1344.z));
  let x_1347 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1346.x, x_1346.y, x_1346.z, x_1347.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(3) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

