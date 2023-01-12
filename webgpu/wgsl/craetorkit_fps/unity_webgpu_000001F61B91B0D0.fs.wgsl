struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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

var<private> vs_TEXCOORD5 : f32;

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
  var x_612 : f32;
  var x_624 : f32;
  var x_636 : f32;
  var u_xlat36 : f32;
  var u_xlatb37 : bool;
  var u_xlat37 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlatb10 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec4<f32>;
  var x_801 : f32;
  var x_813 : f32;
  var x_825 : f32;
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
    let x_523 : vec4<f32> = x_18.unity_SHAg;
    let x_524 : vec4<f32> = u_xlat5;
    u_xlat6.y = dot(x_523, x_524);
    let x_529 : vec4<f32> = x_18.unity_SHAb;
    let x_530 : vec4<f32> = u_xlat5;
    u_xlat6.z = dot(x_529, x_530);
  }
  let x_533 : vec4<f32> = u_xlat6;
  let x_536 : vec3<f32> = vs_TEXCOORD4;
  let x_537 : vec3<f32> = (vec3<f32>(x_533.x, x_533.y, x_533.z) + x_536);
  let x_538 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_537.x, x_538.y, x_537.y, x_537.z);
  let x_540 : vec4<f32> = u_xlat2;
  let x_543 : vec3<f32> = max(vec3<f32>(x_540.x, x_540.z, x_540.w), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_544 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_543.x, x_544.y, x_543.y, x_543.z);
  let x_548 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb34 = (0.0f < x_548);
  let x_550 : bool = u_xlatb34;
  if (x_550) {
    let x_553 : vec4<f32> = u_xlat3;
    let x_555 : vec4<f32> = u_xlat3;
    u_xlat34 = dot(vec3<f32>(x_553.x, x_553.y, x_553.z), vec3<f32>(x_555.x, x_555.y, x_555.z));
    let x_558 : f32 = u_xlat34;
    u_xlat34 = inverseSqrt(x_558);
    let x_560 : f32 = u_xlat34;
    let x_562 : vec4<f32> = u_xlat3;
    let x_564 : vec3<f32> = (vec3<f32>(x_560, x_560, x_560) * vec3<f32>(x_562.x, x_562.y, x_562.z));
    let x_565 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_564.x, x_564.y, x_564.z, x_565.w);
    let x_567 : vec3<f32> = vs_TEXCOORD2;
    let x_571 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    let x_573 : vec3<f32> = (-(x_567) + vec3<f32>(x_571.x, x_571.y, x_571.z));
    let x_574 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
    let x_576 : vec4<f32> = u_xlat6;
    let x_578 : vec4<f32> = u_xlat5;
    let x_580 : vec3<f32> = (vec3<f32>(x_576.x, x_576.y, x_576.z) / vec3<f32>(x_578.x, x_578.y, x_578.z));
    let x_581 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_580.x, x_580.y, x_580.z, x_581.w);
    let x_583 : vec3<f32> = vs_TEXCOORD2;
    let x_587 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_589 : vec3<f32> = (-(x_583) + vec3<f32>(x_587.x, x_587.y, x_587.z));
    let x_590 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
    let x_592 : vec4<f32> = u_xlat7;
    let x_594 : vec4<f32> = u_xlat5;
    let x_596 : vec3<f32> = (vec3<f32>(x_592.x, x_592.y, x_592.z) / vec3<f32>(x_594.x, x_594.y, x_594.z));
    let x_597 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_596.x, x_596.y, x_596.z, x_597.w);
    let x_603 : vec4<f32> = u_xlat5;
    let x_606 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_603.x, x_603.y, x_603.z, x_603.x));
    u_xlatb8 = vec3<bool>(x_606.x, x_606.y, x_606.z);
    let x_609 : vec4<f32> = u_xlat6;
    hlslcc_movcTemp = x_609;
    let x_611 : bool = u_xlatb8.x;
    if (x_611) {
      let x_616 : f32 = u_xlat6.x;
      x_612 = x_616;
    } else {
      let x_619 : f32 = u_xlat7.x;
      x_612 = x_619;
    }
    let x_620 : f32 = x_612;
    hlslcc_movcTemp.x = x_620;
    let x_623 : bool = u_xlatb8.y;
    if (x_623) {
      let x_628 : f32 = u_xlat6.y;
      x_624 = x_628;
    } else {
      let x_631 : f32 = u_xlat7.y;
      x_624 = x_631;
    }
    let x_632 : f32 = x_624;
    hlslcc_movcTemp.y = x_632;
    let x_635 : bool = u_xlatb8.z;
    if (x_635) {
      let x_640 : f32 = u_xlat6.z;
      x_636 = x_640;
    } else {
      let x_643 : f32 = u_xlat7.z;
      x_636 = x_643;
    }
    let x_644 : f32 = x_636;
    hlslcc_movcTemp.z = x_644;
    let x_646 : vec4<f32> = hlslcc_movcTemp;
    u_xlat6 = x_646;
    let x_648 : f32 = u_xlat6.y;
    let x_650 : f32 = u_xlat6.x;
    u_xlat34 = min(x_648, x_650);
    let x_653 : f32 = u_xlat6.z;
    let x_654 : f32 = u_xlat34;
    u_xlat34 = min(x_653, x_654);
    let x_656 : vec3<f32> = vs_TEXCOORD2;
    let x_658 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    let x_661 : vec3<f32> = (x_656 + -(vec3<f32>(x_658.x, x_658.y, x_658.z)));
    let x_662 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
    let x_664 : vec4<f32> = u_xlat5;
    let x_666 : f32 = u_xlat34;
    let x_669 : vec4<f32> = u_xlat6;
    let x_671 : vec3<f32> = ((vec3<f32>(x_664.x, x_664.y, x_664.z) * vec3<f32>(x_666, x_666, x_666)) + vec3<f32>(x_669.x, x_669.y, x_669.z));
    let x_672 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_671.x, x_671.y, x_671.z, x_672.w);
  } else {
    let x_675 : vec4<f32> = u_xlat3;
    let x_676 : vec3<f32> = vec3<f32>(x_675.x, x_675.y, x_675.z);
    let x_677 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_676.x, x_676.y, x_676.z, x_677.w);
  }
  let x_680 : f32 = u_xlat13.x;
  u_xlat34 = ((-(x_680) * 0.699999988f) + 1.700000048f);
  let x_686 : f32 = u_xlat34;
  let x_688 : f32 = u_xlat13.x;
  u_xlat34 = (x_686 * x_688);
  let x_690 : f32 = u_xlat34;
  u_xlat34 = (x_690 * 6.0f);
  let x_701 : vec4<f32> = u_xlat5;
  let x_703 : f32 = u_xlat34;
  let x_704 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_701.x, x_701.y, x_701.z), x_703);
  u_xlat5 = x_704;
  let x_707 : f32 = u_xlat5.w;
  u_xlat36 = (x_707 + -1.0f);
  let x_711 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_712 : f32 = u_xlat36;
  u_xlat36 = ((x_711 * x_712) + 1.0f);
  let x_715 : f32 = u_xlat36;
  u_xlat36 = log2(x_715);
  let x_717 : f32 = u_xlat36;
  let x_719 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat36 = (x_717 * x_719);
  let x_721 : f32 = u_xlat36;
  u_xlat36 = exp2(x_721);
  let x_723 : f32 = u_xlat36;
  let x_725 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat36 = (x_723 * x_725);
  let x_727 : vec4<f32> = u_xlat5;
  let x_729 : f32 = u_xlat36;
  let x_731 : vec3<f32> = (vec3<f32>(x_727.x, x_727.y, x_727.z) * vec3<f32>(x_729, x_729, x_729));
  let x_732 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_731.x, x_731.y, x_731.z, x_732.w);
  let x_736 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb37 = (x_736 < 0.999989986f);
  let x_739 : bool = u_xlatb37;
  if (x_739) {
    let x_744 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb37 = (0.0f < x_744);
    let x_746 : bool = u_xlatb37;
    if (x_746) {
      let x_750 : vec4<f32> = u_xlat3;
      let x_752 : vec4<f32> = u_xlat3;
      u_xlat37 = dot(vec3<f32>(x_750.x, x_750.y, x_750.z), vec3<f32>(x_752.x, x_752.y, x_752.z));
      let x_755 : f32 = u_xlat37;
      u_xlat37 = inverseSqrt(x_755);
      let x_757 : vec4<f32> = u_xlat3;
      let x_759 : f32 = u_xlat37;
      let x_761 : vec3<f32> = (vec3<f32>(x_757.x, x_757.y, x_757.z) * vec3<f32>(x_759, x_759, x_759));
      let x_762 : vec4<f32> = u_xlat7;
      u_xlat7 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
      let x_764 : vec3<f32> = vs_TEXCOORD2;
      let x_768 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      let x_770 : vec3<f32> = (-(x_764) + vec3<f32>(x_768.x, x_768.y, x_768.z));
      let x_771 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_770.x, x_770.y, x_770.z, x_771.w);
      let x_773 : vec4<f32> = u_xlat8;
      let x_775 : vec4<f32> = u_xlat7;
      let x_777 : vec3<f32> = (vec3<f32>(x_773.x, x_773.y, x_773.z) / vec3<f32>(x_775.x, x_775.y, x_775.z));
      let x_778 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_777.x, x_777.y, x_777.z, x_778.w);
      let x_781 : vec3<f32> = vs_TEXCOORD2;
      let x_785 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat9 = (-(x_781) + vec3<f32>(x_785.x, x_785.y, x_785.z));
      let x_788 : vec3<f32> = u_xlat9;
      let x_789 : vec4<f32> = u_xlat7;
      u_xlat9 = (x_788 / vec3<f32>(x_789.x, x_789.y, x_789.z));
      let x_793 : vec4<f32> = u_xlat7;
      let x_795 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_793.x, x_793.y, x_793.z, x_793.x));
      u_xlatb10 = vec3<bool>(x_795.x, x_795.y, x_795.z);
      let x_798 : vec4<f32> = u_xlat8;
      hlslcc_movcTemp_1 = x_798;
      let x_800 : bool = u_xlatb10.x;
      if (x_800) {
        let x_805 : f32 = u_xlat8.x;
        x_801 = x_805;
      } else {
        let x_808 : f32 = u_xlat9.x;
        x_801 = x_808;
      }
      let x_809 : f32 = x_801;
      hlslcc_movcTemp_1.x = x_809;
      let x_812 : bool = u_xlatb10.y;
      if (x_812) {
        let x_817 : f32 = u_xlat8.y;
        x_813 = x_817;
      } else {
        let x_820 : f32 = u_xlat9.y;
        x_813 = x_820;
      }
      let x_821 : f32 = x_813;
      hlslcc_movcTemp_1.y = x_821;
      let x_824 : bool = u_xlatb10.z;
      if (x_824) {
        let x_829 : f32 = u_xlat8.z;
        x_825 = x_829;
      } else {
        let x_832 : f32 = u_xlat9.z;
        x_825 = x_832;
      }
      let x_833 : f32 = x_825;
      hlslcc_movcTemp_1.z = x_833;
      let x_835 : vec4<f32> = hlslcc_movcTemp_1;
      u_xlat8 = x_835;
      let x_837 : f32 = u_xlat8.y;
      let x_839 : f32 = u_xlat8.x;
      u_xlat37 = min(x_837, x_839);
      let x_842 : f32 = u_xlat8.z;
      let x_843 : f32 = u_xlat37;
      u_xlat37 = min(x_842, x_843);
      let x_845 : vec3<f32> = vs_TEXCOORD2;
      let x_847 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      let x_850 : vec3<f32> = (x_845 + -(vec3<f32>(x_847.x, x_847.y, x_847.z)));
      let x_851 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_850.x, x_850.y, x_850.z, x_851.w);
      let x_853 : vec4<f32> = u_xlat7;
      let x_855 : f32 = u_xlat37;
      let x_858 : vec4<f32> = u_xlat8;
      let x_860 : vec3<f32> = ((vec3<f32>(x_853.x, x_853.y, x_853.z) * vec3<f32>(x_855, x_855, x_855)) + vec3<f32>(x_858.x, x_858.y, x_858.z));
      let x_861 : vec4<f32> = u_xlat3;
      u_xlat3 = vec4<f32>(x_860.x, x_860.y, x_860.z, x_861.w);
    }
    let x_867 : vec4<f32> = u_xlat3;
    let x_869 : f32 = u_xlat34;
    let x_870 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_867.x, x_867.y, x_867.z), x_869);
    u_xlat7 = x_870;
    let x_872 : f32 = u_xlat7.w;
    u_xlat34 = (x_872 + -1.0f);
    let x_876 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_877 : f32 = u_xlat34;
    u_xlat34 = ((x_876 * x_877) + 1.0f);
    let x_880 : f32 = u_xlat34;
    u_xlat34 = log2(x_880);
    let x_882 : f32 = u_xlat34;
    let x_884 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat34 = (x_882 * x_884);
    let x_886 : f32 = u_xlat34;
    u_xlat34 = exp2(x_886);
    let x_888 : f32 = u_xlat34;
    let x_890 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat34 = (x_888 * x_890);
    let x_892 : vec4<f32> = u_xlat7;
    let x_894 : f32 = u_xlat34;
    let x_896 : vec3<f32> = (vec3<f32>(x_892.x, x_892.y, x_892.z) * vec3<f32>(x_894, x_894, x_894));
    let x_897 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_896.x, x_896.y, x_896.z, x_897.w);
    let x_899 : f32 = u_xlat36;
    let x_901 : vec4<f32> = u_xlat5;
    let x_904 : vec4<f32> = u_xlat3;
    let x_907 : vec3<f32> = ((vec3<f32>(x_899, x_899, x_899) * vec3<f32>(x_901.x, x_901.y, x_901.z)) + -(vec3<f32>(x_904.x, x_904.y, x_904.z)));
    let x_908 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_907.x, x_907.y, x_907.z, x_908.w);
    let x_911 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_913 : vec4<f32> = u_xlat5;
    let x_916 : vec4<f32> = u_xlat3;
    let x_918 : vec3<f32> = ((vec3<f32>(x_911.w, x_911.w, x_911.w) * vec3<f32>(x_913.x, x_913.y, x_913.z)) + vec3<f32>(x_916.x, x_916.y, x_916.z));
    let x_919 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_918.x, x_918.y, x_918.z, x_919.w);
  }
  let x_921 : vec3<f32> = vs_TEXCOORD1;
  let x_922 : vec3<f32> = vs_TEXCOORD1;
  u_xlat34 = dot(x_921, x_922);
  let x_924 : f32 = u_xlat34;
  u_xlat34 = inverseSqrt(x_924);
  let x_926 : f32 = u_xlat34;
  let x_928 : vec3<f32> = vs_TEXCOORD1;
  let x_929 : vec3<f32> = (vec3<f32>(x_926, x_926, x_926) * x_928);
  let x_930 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_929.x, x_929.y, x_929.z, x_930.w);
  let x_934 : vec4<f32> = x_18.x_Color;
  let x_938 : vec3<f32> = (vec3<f32>(x_934.x, x_934.y, x_934.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_939 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_938.x, x_938.y, x_938.z, x_939.w);
  let x_943 : f32 = x_18.x_Metallic;
  let x_945 : f32 = x_18.x_Metallic;
  let x_947 : f32 = x_18.x_Metallic;
  let x_948 : vec3<f32> = vec3<f32>(x_943, x_945, x_947);
  let x_953 : vec4<f32> = u_xlat5;
  let x_958 : vec3<f32> = ((vec3<f32>(x_948.x, x_948.y, x_948.z) * vec3<f32>(x_953.x, x_953.y, x_953.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_959 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_958.x, x_958.y, x_958.z, x_959.w);
  let x_962 : f32 = x_18.x_Metallic;
  u_xlat34 = ((-(x_962) * 0.959999979f) + 0.959999979f);
  let x_967 : f32 = u_xlat34;
  let x_970 : vec4<f32> = x_18.x_Color;
  let x_972 : vec3<f32> = (vec3<f32>(x_967, x_967, x_967) * vec3<f32>(x_970.x, x_970.y, x_970.z));
  let x_973 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
  let x_975 : vec4<f32> = u_xlat0;
  let x_977 : f32 = u_xlat33;
  let x_981 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_983 : vec3<f32> = ((vec3<f32>(x_975.x, x_975.y, x_975.z) * vec3<f32>(x_977, x_977, x_977)) + vec3<f32>(x_981.x, x_981.y, x_981.z));
  let x_984 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_983.x, x_983.y, x_983.z, x_984.w);
  let x_986 : vec4<f32> = u_xlat0;
  let x_988 : vec4<f32> = u_xlat0;
  u_xlat33 = dot(vec3<f32>(x_986.x, x_986.y, x_986.z), vec3<f32>(x_988.x, x_988.y, x_988.z));
  let x_991 : f32 = u_xlat33;
  u_xlat33 = max(x_991, 0.001f);
  let x_994 : f32 = u_xlat33;
  u_xlat33 = inverseSqrt(x_994);
  let x_996 : f32 = u_xlat33;
  let x_998 : vec4<f32> = u_xlat0;
  let x_1000 : vec3<f32> = (vec3<f32>(x_996, x_996, x_996) * vec3<f32>(x_998.x, x_998.y, x_998.z));
  let x_1001 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1003 : vec4<f32> = u_xlat3;
  let x_1005 : vec4<f32> = u_xlat1;
  u_xlat33 = dot(vec3<f32>(x_1003.x, x_1003.y, x_1003.z), vec3<f32>(x_1005.x, x_1005.y, x_1005.z));
  let x_1008 : vec4<f32> = u_xlat3;
  let x_1011 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_1008.x, x_1008.y, x_1008.z), vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1016 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1016, 0.0f, 1.0f);
  let x_1020 : vec4<f32> = u_xlat3;
  let x_1022 : vec4<f32> = u_xlat0;
  u_xlat12 = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), vec3<f32>(x_1022.x, x_1022.y, x_1022.z));
  let x_1025 : f32 = u_xlat12;
  u_xlat12 = clamp(x_1025, 0.0f, 1.0f);
  let x_1028 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_1030 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_1028.x, x_1028.y, x_1028.z), vec3<f32>(x_1030.x, x_1030.y, x_1030.z));
  let x_1035 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_1035, 0.0f, 1.0f);
  let x_1040 : f32 = u_xlat0.x;
  let x_1042 : f32 = u_xlat0.x;
  u_xlat11.x = (x_1040 * x_1042);
  let x_1045 : vec3<f32> = u_xlat11;
  let x_1047 : vec3<f32> = u_xlat13;
  u_xlat11.x = dot(vec2<f32>(x_1045.x, x_1045.x), vec2<f32>(x_1047.x, x_1047.x));
  let x_1052 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1052 + -0.5f);
  let x_1058 : f32 = u_xlat1.x;
  u_xlat22 = (-(x_1058) + 1.0f);
  let x_1062 : f32 = u_xlat22;
  let x_1063 : f32 = u_xlat22;
  u_xlat23 = (x_1062 * x_1063);
  let x_1065 : f32 = u_xlat23;
  let x_1066 : f32 = u_xlat23;
  u_xlat23 = (x_1065 * x_1066);
  let x_1068 : f32 = u_xlat22;
  let x_1069 : f32 = u_xlat23;
  u_xlat22 = (x_1068 * x_1069);
  let x_1072 : f32 = u_xlat11.x;
  let x_1073 : f32 = u_xlat22;
  u_xlat22 = ((x_1072 * x_1073) + 1.0f);
  let x_1076 : f32 = u_xlat33;
  u_xlat23 = (-(abs(x_1076)) + 1.0f);
  let x_1080 : f32 = u_xlat23;
  let x_1081 : f32 = u_xlat23;
  u_xlat3.x = (x_1080 * x_1081);
  let x_1085 : f32 = u_xlat3.x;
  let x_1087 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1085 * x_1087);
  let x_1090 : f32 = u_xlat23;
  let x_1092 : f32 = u_xlat3.x;
  u_xlat23 = (x_1090 * x_1092);
  let x_1095 : f32 = u_xlat11.x;
  let x_1096 : f32 = u_xlat23;
  u_xlat11.x = ((x_1095 * x_1096) + 1.0f);
  let x_1101 : f32 = u_xlat11.x;
  let x_1102 : f32 = u_xlat22;
  u_xlat11.x = (x_1101 * x_1102);
  let x_1106 : f32 = u_xlat13.x;
  let x_1108 : f32 = u_xlat13.x;
  u_xlat22 = (x_1106 * x_1108);
  let x_1110 : f32 = u_xlat22;
  u_xlat22 = max(x_1110, 0.002f);
  let x_1113 : f32 = u_xlat22;
  u_xlat13.x = (-(x_1113) + 1.0f);
  let x_1117 : f32 = u_xlat33;
  let x_1120 : f32 = u_xlat13.x;
  let x_1122 : f32 = u_xlat22;
  u_xlat3.x = ((abs(x_1117) * x_1120) + x_1122);
  let x_1126 : f32 = u_xlat1.x;
  let x_1128 : f32 = u_xlat13.x;
  let x_1130 : f32 = u_xlat22;
  u_xlat13.x = ((x_1126 * x_1128) + x_1130);
  let x_1133 : f32 = u_xlat33;
  let x_1136 : f32 = u_xlat13.x;
  u_xlat33 = (abs(x_1133) * x_1136);
  let x_1139 : f32 = u_xlat1.x;
  let x_1141 : f32 = u_xlat3.x;
  let x_1143 : f32 = u_xlat33;
  u_xlat33 = ((x_1139 * x_1141) + x_1143);
  let x_1145 : f32 = u_xlat33;
  u_xlat33 = (x_1145 + 0.00001f);
  let x_1148 : f32 = u_xlat33;
  u_xlat33 = (0.5f / x_1148);
  let x_1150 : f32 = u_xlat22;
  let x_1151 : f32 = u_xlat22;
  u_xlat13.x = (x_1150 * x_1151);
  let x_1154 : f32 = u_xlat12;
  let x_1156 : f32 = u_xlat13.x;
  let x_1158 : f32 = u_xlat12;
  u_xlat3.x = ((x_1154 * x_1156) + -(x_1158));
  let x_1163 : f32 = u_xlat3.x;
  let x_1164 : f32 = u_xlat12;
  u_xlat12 = ((x_1163 * x_1164) + 1.0f);
  let x_1168 : f32 = u_xlat13.x;
  u_xlat13.x = (x_1168 * 0.318309873f);
  let x_1172 : f32 = u_xlat12;
  let x_1173 : f32 = u_xlat12;
  u_xlat12 = ((x_1172 * x_1173) + 0.0000001f);
  let x_1178 : f32 = u_xlat13.x;
  let x_1179 : f32 = u_xlat12;
  u_xlat12 = (x_1178 / x_1179);
  let x_1181 : f32 = u_xlat33;
  let x_1182 : f32 = u_xlat12;
  u_xlat11.z = (x_1181 * x_1182);
  let x_1185 : vec4<f32> = u_xlat1;
  let x_1187 : vec3<f32> = u_xlat11;
  let x_1189 : vec2<f32> = (vec2<f32>(x_1185.x, x_1185.x) * vec2<f32>(x_1187.x, x_1187.z));
  let x_1190 : vec3<f32> = u_xlat11;
  u_xlat11 = vec3<f32>(x_1189.x, x_1190.y, x_1189.y);
  let x_1193 : f32 = u_xlat11.z;
  u_xlat33 = (x_1193 * 3.141592741f);
  let x_1196 : f32 = u_xlat33;
  u_xlat33 = max(x_1196, 0.0f);
  let x_1198 : f32 = u_xlat22;
  let x_1199 : f32 = u_xlat22;
  u_xlat22 = ((x_1198 * x_1199) + 1.0f);
  let x_1202 : f32 = u_xlat22;
  u_xlat22 = (1.0f / x_1202);
  let x_1204 : vec4<f32> = u_xlat5;
  let x_1206 : vec4<f32> = u_xlat5;
  u_xlat1.x = dot(vec3<f32>(x_1204.x, x_1204.y, x_1204.z), vec3<f32>(x_1206.x, x_1206.y, x_1206.z));
  let x_1212 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_1212 == 0.0f));
  let x_1214 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_1214);
  let x_1217 : f32 = u_xlat33;
  let x_1219 : f32 = u_xlat1.x;
  u_xlat33 = (x_1217 * x_1219);
  let x_1221 : f32 = u_xlat34;
  let x_1224 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_1221) + x_1224);
  let x_1228 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1228 + 1.0f);
  let x_1232 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1232, 0.0f, 1.0f);
  let x_1235 : vec3<f32> = u_xlat4;
  let x_1236 : vec3<f32> = u_xlat11;
  let x_1239 : vec4<f32> = u_xlat2;
  let x_1241 : vec3<f32> = ((x_1235 * vec3<f32>(x_1236.x, x_1236.x, x_1236.x)) + vec3<f32>(x_1239.x, x_1239.z, x_1239.w));
  let x_1242 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : vec3<f32> = u_xlat4;
  let x_1245 : f32 = u_xlat33;
  let x_1247 : vec3<f32> = (x_1244 * vec3<f32>(x_1245, x_1245, x_1245));
  let x_1248 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1247.x, x_1247.y, x_1247.z, x_1248.w);
  let x_1251 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_1251) + 1.0f);
  let x_1256 : f32 = u_xlat0.x;
  let x_1258 : f32 = u_xlat0.x;
  u_xlat11.x = (x_1256 * x_1258);
  let x_1262 : f32 = u_xlat11.x;
  let x_1264 : f32 = u_xlat11.x;
  u_xlat11.x = (x_1262 * x_1264);
  let x_1268 : f32 = u_xlat0.x;
  let x_1270 : f32 = u_xlat11.x;
  u_xlat0.x = (x_1268 * x_1270);
  let x_1273 : vec4<f32> = u_xlat5;
  u_xlat4 = (-(vec3<f32>(x_1273.x, x_1273.y, x_1273.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1278 : vec3<f32> = u_xlat4;
  let x_1279 : vec4<f32> = u_xlat0;
  let x_1282 : vec4<f32> = u_xlat5;
  let x_1284 : vec3<f32> = ((x_1278 * vec3<f32>(x_1279.x, x_1279.x, x_1279.x)) + vec3<f32>(x_1282.x, x_1282.y, x_1282.z));
  let x_1285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1284.x, x_1284.y, x_1285.z, x_1284.z);
  let x_1287 : vec4<f32> = u_xlat0;
  let x_1289 : vec4<f32> = u_xlat3;
  let x_1291 : vec3<f32> = (vec3<f32>(x_1287.x, x_1287.y, x_1287.w) * vec3<f32>(x_1289.x, x_1289.y, x_1289.z));
  let x_1292 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1291.x, x_1291.y, x_1292.z, x_1291.z);
  let x_1294 : vec4<f32> = u_xlat7;
  let x_1296 : vec4<f32> = u_xlat2;
  let x_1299 : vec4<f32> = u_xlat0;
  let x_1301 : vec3<f32> = ((vec3<f32>(x_1294.x, x_1294.y, x_1294.z) * vec3<f32>(x_1296.x, x_1296.y, x_1296.z)) + vec3<f32>(x_1299.x, x_1299.y, x_1299.w));
  let x_1302 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1301.x, x_1301.y, x_1302.z, x_1301.z);
  let x_1304 : vec4<f32> = u_xlat6;
  let x_1306 : f32 = u_xlat22;
  let x_1308 : vec3<f32> = (vec3<f32>(x_1304.x, x_1304.y, x_1304.z) * vec3<f32>(x_1306, x_1306, x_1306));
  let x_1309 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1308.x, x_1308.y, x_1308.z, x_1309.w);
  let x_1311 : vec4<f32> = u_xlat5;
  let x_1314 : vec4<f32> = u_xlat1;
  let x_1316 : vec3<f32> = (-(vec3<f32>(x_1311.x, x_1311.y, x_1311.z)) + vec3<f32>(x_1314.x, x_1314.x, x_1314.x));
  let x_1317 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1316.x, x_1316.y, x_1317.z, x_1316.z);
  let x_1319 : f32 = u_xlat23;
  let x_1321 : vec4<f32> = u_xlat1;
  let x_1324 : vec4<f32> = u_xlat5;
  let x_1326 : vec3<f32> = ((vec3<f32>(x_1319, x_1319, x_1319) * vec3<f32>(x_1321.x, x_1321.y, x_1321.w)) + vec3<f32>(x_1324.x, x_1324.y, x_1324.z));
  let x_1327 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1326.x, x_1326.y, x_1326.z, x_1327.w);
  let x_1329 : vec4<f32> = u_xlat2;
  let x_1331 : vec4<f32> = u_xlat1;
  let x_1334 : vec4<f32> = u_xlat0;
  let x_1336 : vec3<f32> = ((vec3<f32>(x_1329.x, x_1329.y, x_1329.z) * vec3<f32>(x_1331.x, x_1331.y, x_1331.z)) + vec3<f32>(x_1334.x, x_1334.y, x_1334.w));
  let x_1337 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1336.x, x_1336.y, x_1336.z, x_1337.w);
  let x_1339 : vec4<f32> = u_xlat0;
  let x_1343 : vec4<f32> = x_18.x_Color2;
  let x_1345 : vec3<f32> = (vec3<f32>(x_1339.x, x_1339.y, x_1339.z) + vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
  let x_1346 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
  let x_1349 : f32 = vs_TEXCOORD5;
  let x_1351 : f32 = x_18.x_ProjectionParams.y;
  u_xlat33 = (x_1349 / x_1351);
  let x_1353 : f32 = u_xlat33;
  u_xlat33 = (-(x_1353) + 1.0f);
  let x_1356 : f32 = u_xlat33;
  let x_1358 : f32 = x_18.x_ProjectionParams.z;
  u_xlat33 = (x_1356 * x_1358);
  let x_1360 : f32 = u_xlat33;
  u_xlat33 = max(x_1360, 0.0f);
  let x_1362 : f32 = u_xlat33;
  let x_1365 : f32 = x_18.unity_FogParams.x;
  u_xlat33 = (x_1362 * x_1365);
  let x_1367 : f32 = u_xlat33;
  let x_1368 : f32 = u_xlat33;
  u_xlat33 = (x_1367 * -(x_1368));
  let x_1371 : f32 = u_xlat33;
  u_xlat33 = exp2(x_1371);
  let x_1373 : vec4<f32> = u_xlat0;
  let x_1377 : vec4<f32> = x_18.unity_FogColor;
  let x_1380 : vec3<f32> = (vec3<f32>(x_1373.x, x_1373.y, x_1373.z) + -(vec3<f32>(x_1377.x, x_1377.y, x_1377.z)));
  let x_1381 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1380.x, x_1380.y, x_1380.z, x_1381.w);
  let x_1385 : f32 = u_xlat33;
  let x_1387 : vec4<f32> = u_xlat0;
  let x_1391 : vec4<f32> = x_18.unity_FogColor;
  let x_1393 : vec3<f32> = ((vec3<f32>(x_1385, x_1385, x_1385) * vec3<f32>(x_1387.x, x_1387.y, x_1387.z)) + vec3<f32>(x_1391.x, x_1391.y, x_1391.z));
  let x_1394 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1393.x, x_1393.y, x_1393.z, x_1394.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(6) vs_TEXCOORD6_param : vec4<f32>, @location(3) vs_TEXCOORD1_param : vec3<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @location(2) vs_TEXCOORD5_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

