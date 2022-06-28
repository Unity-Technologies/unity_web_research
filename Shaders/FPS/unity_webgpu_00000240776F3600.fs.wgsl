struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat36 : f32;

var<private> u_xlat1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat37 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlatb38 : bool;

var<private> u_xlat39 : f32;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD5 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb37 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlatb9 : vec3<bool>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb40 : bool;

var<private> u_xlat40 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlatb11 : vec3<bool>;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat13 : f32;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlat24 : f32;

var<private> u_xlat25 : f32;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_194 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_379 : f32;
  var x_391 : f32;
  var x_403 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_553 : f32;
  var x_565 : f32;
  var x_577 : f32;
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
  u_xlat36 = dot(vec3<f32>(x_29.x, x_29.y, x_29.z), vec3<f32>(x_31.x, x_31.y, x_31.z));
  let x_34 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_34);
  let x_37 : f32 = u_xlat36;
  let x_39 : vec4<f32> = u_xlat0;
  let x_41 : vec3<f32> = (vec3<f32>(x_37, x_37, x_37) * vec3<f32>(x_39.x, x_39.y, x_39.z));
  let x_42 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_41.x, x_41.y, x_41.z, x_42.w);
  let x_59 : vec2<f32> = vs_TEXCOORD0;
  let x_60 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_59);
  u_xlat2 = vec3<f32>(x_60.x, x_60.y, x_60.z);
  let x_62 : vec3<f32> = u_xlat2;
  let x_66 : vec4<f32> = x_18.x_Color;
  u_xlat2 = (x_62 * vec3<f32>(x_66.x, x_66.y, x_66.z));
  let x_70 : vec3<f32> = u_xlat2;
  let x_73 : vec4<f32> = vs_COLOR0;
  u_xlat3 = (x_70 * vec3<f32>(x_73.x, x_73.y, x_73.z));
  let x_82 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat4.x = x_82;
  let x_87 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat4.y = x_87;
  let x_92 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat4.z = x_92;
  let x_95 : vec4<f32> = u_xlat0;
  let x_97 : vec4<f32> = u_xlat4;
  u_xlat37 = dot(vec3<f32>(x_95.x, x_95.y, x_95.z), vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : vec3<f32> = vs_TEXCOORD2;
  let x_103 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_106 : vec3<f32> = (x_100 + -(vec3<f32>(x_103.x, x_103.y, x_103.z)));
  let x_107 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_106.x, x_106.y, x_106.z, x_107.w);
  let x_110 : vec4<f32> = u_xlat4;
  let x_112 : vec4<f32> = u_xlat4;
  u_xlat38 = dot(vec3<f32>(x_110.x, x_110.y, x_110.z), vec3<f32>(x_112.x, x_112.y, x_112.z));
  let x_115 : f32 = u_xlat38;
  u_xlat38 = sqrt(x_115);
  let x_117 : f32 = u_xlat37;
  let x_119 : f32 = u_xlat38;
  u_xlat38 = (-(x_117) + x_119);
  let x_123 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_124 : f32 = u_xlat38;
  let x_126 : f32 = u_xlat37;
  u_xlat37 = ((x_123 * x_124) + x_126);
  let x_128 : f32 = u_xlat37;
  let x_131 : f32 = x_18.x_LightShadowData.z;
  let x_134 : f32 = x_18.x_LightShadowData.w;
  u_xlat37 = ((x_128 * x_131) + x_134);
  let x_136 : f32 = u_xlat37;
  u_xlat37 = clamp(x_136, 0.0f, 1.0f);
  let x_145 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb38 = (x_145 == 1.0f);
  let x_147 : bool = u_xlatb38;
  if (x_147) {
    let x_151 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb38 = (x_151 == 1.0f);
    let x_153 : vec3<f32> = vs_TEXCOORD2;
    let x_157 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_159 : vec3<f32> = (vec3<f32>(x_153.y, x_153.y, x_153.y) * vec3<f32>(x_157.x, x_157.y, x_157.z));
    let x_160 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
    let x_163 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_165 : vec3<f32> = vs_TEXCOORD2;
    let x_168 : vec4<f32> = u_xlat4;
    let x_170 : vec3<f32> = ((vec3<f32>(x_163.x, x_163.y, x_163.z) * vec3<f32>(x_165.x, x_165.x, x_165.x)) + vec3<f32>(x_168.x, x_168.y, x_168.z));
    let x_171 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_174 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_176 : vec3<f32> = vs_TEXCOORD2;
    let x_179 : vec4<f32> = u_xlat4;
    let x_181 : vec3<f32> = ((vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_176.z, x_176.z, x_176.z)) + vec3<f32>(x_179.x, x_179.y, x_179.z));
    let x_182 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_184 : vec4<f32> = u_xlat4;
    let x_187 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_189 : vec3<f32> = (vec3<f32>(x_184.x, x_184.y, x_184.z) + vec3<f32>(x_187.x, x_187.y, x_187.z));
    let x_190 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
    let x_192 : bool = u_xlatb38;
    if (x_192) {
      let x_197 : vec4<f32> = u_xlat4;
      x_194 = vec3<f32>(x_197.x, x_197.y, x_197.z);
    } else {
      let x_200 : vec3<f32> = vs_TEXCOORD2;
      x_194 = x_200;
    }
    let x_201 : vec3<f32> = x_194;
    let x_202 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_201.x, x_201.y, x_201.z, x_202.w);
    let x_204 : vec4<f32> = u_xlat4;
    let x_208 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_210 : vec3<f32> = (vec3<f32>(x_204.x, x_204.y, x_204.z) + -(x_208));
    let x_211 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_210.x, x_210.y, x_210.z, x_211.w);
    let x_213 : vec4<f32> = u_xlat4;
    let x_217 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_218 : vec3<f32> = (vec3<f32>(x_213.x, x_213.y, x_213.z) * x_217);
    let x_219 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_219.x, x_218.x, x_218.y, x_218.z);
    let x_222 : f32 = u_xlat4.y;
    u_xlat38 = ((x_222 * 0.25f) + 0.75f);
    let x_229 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat39 = ((x_229 * 0.5f) + 0.75f);
    let x_233 : f32 = u_xlat38;
    let x_234 : f32 = u_xlat39;
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
  let x_253 : vec4<f32> = u_xlat4;
  let x_255 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat38 = dot(x_253, x_255);
  let x_257 : f32 = u_xlat38;
  u_xlat38 = clamp(x_257, 0.0f, 1.0f);
  let x_260 : vec4<f32> = vs_TEXCOORD5;
  let x_262 : vec4<f32> = vs_TEXCOORD5;
  let x_264 : vec2<f32> = (vec2<f32>(x_260.x, x_260.y) / vec2<f32>(x_262.w, x_262.w));
  let x_265 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_264.x, x_264.y, x_265.z, x_265.w);
  let x_272 : vec4<f32> = u_xlat4;
  let x_274 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_272.x, x_272.y));
  u_xlat39 = x_274.x;
  let x_276 : f32 = u_xlat38;
  let x_277 : f32 = u_xlat39;
  u_xlat38 = (x_276 + -(x_277));
  let x_280 : f32 = u_xlat37;
  let x_281 : f32 = u_xlat38;
  let x_283 : f32 = u_xlat39;
  u_xlat37 = ((x_280 * x_281) + x_283);
  let x_287 : f32 = x_18.x_Glossiness;
  u_xlat38 = (-(x_287) + 1.0f);
  let x_290 : vec4<f32> = u_xlat1;
  let x_294 : vec3<f32> = vs_TEXCOORD1;
  u_xlat39 = dot(-(vec3<f32>(x_290.x, x_290.y, x_290.z)), x_294);
  let x_296 : f32 = u_xlat39;
  let x_297 : f32 = u_xlat39;
  u_xlat39 = (x_296 + x_297);
  let x_299 : vec3<f32> = vs_TEXCOORD1;
  let x_300 : f32 = u_xlat39;
  let x_304 : vec4<f32> = u_xlat1;
  let x_307 : vec3<f32> = ((x_299 * -(vec3<f32>(x_300, x_300, x_300))) + -(vec3<f32>(x_304.x, x_304.y, x_304.z)));
  let x_308 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_311 : f32 = u_xlat37;
  let x_315 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_311, x_311, x_311) * vec3<f32>(x_315.x, x_315.y, x_315.z));
  let x_321 : f32 = x_18.unity_SpecCube0_ProbePosition.w;
  u_xlatb37 = (0.0f < x_321);
  let x_323 : bool = u_xlatb37;
  if (x_323) {
    let x_326 : vec4<f32> = u_xlat4;
    let x_328 : vec4<f32> = u_xlat4;
    u_xlat37 = dot(vec3<f32>(x_326.x, x_326.y, x_326.z), vec3<f32>(x_328.x, x_328.y, x_328.z));
    let x_331 : f32 = u_xlat37;
    u_xlat37 = inverseSqrt(x_331);
    let x_334 : f32 = u_xlat37;
    let x_336 : vec4<f32> = u_xlat4;
    let x_338 : vec3<f32> = (vec3<f32>(x_334, x_334, x_334) * vec3<f32>(x_336.x, x_336.y, x_336.z));
    let x_339 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
    let x_342 : vec3<f32> = vs_TEXCOORD2;
    let x_346 : vec4<f32> = x_18.unity_SpecCube0_BoxMax;
    u_xlat7 = (-(x_342) + vec3<f32>(x_346.x, x_346.y, x_346.z));
    let x_349 : vec3<f32> = u_xlat7;
    let x_350 : vec4<f32> = u_xlat6;
    u_xlat7 = (x_349 / vec3<f32>(x_350.x, x_350.y, x_350.z));
    let x_354 : vec3<f32> = vs_TEXCOORD2;
    let x_358 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    u_xlat8 = (-(x_354) + vec3<f32>(x_358.x, x_358.y, x_358.z));
    let x_361 : vec3<f32> = u_xlat8;
    let x_362 : vec4<f32> = u_xlat6;
    u_xlat8 = (x_361 / vec3<f32>(x_362.x, x_362.y, x_362.z));
    let x_369 : vec4<f32> = u_xlat6;
    let x_372 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_369.x, x_369.y, x_369.z, x_369.x));
    u_xlatb9 = vec3<bool>(x_372.x, x_372.y, x_372.z);
    let x_375 : vec3<f32> = u_xlat7;
    hlslcc_movcTemp = x_375;
    let x_377 : bool = u_xlatb9.x;
    if (x_377) {
      let x_383 : f32 = u_xlat7.x;
      x_379 = x_383;
    } else {
      let x_386 : f32 = u_xlat8.x;
      x_379 = x_386;
    }
    let x_387 : f32 = x_379;
    hlslcc_movcTemp.x = x_387;
    let x_390 : bool = u_xlatb9.y;
    if (x_390) {
      let x_395 : f32 = u_xlat7.y;
      x_391 = x_395;
    } else {
      let x_398 : f32 = u_xlat8.y;
      x_391 = x_398;
    }
    let x_399 : f32 = x_391;
    hlslcc_movcTemp.y = x_399;
    let x_402 : bool = u_xlatb9.z;
    if (x_402) {
      let x_407 : f32 = u_xlat7.z;
      x_403 = x_407;
    } else {
      let x_410 : f32 = u_xlat8.z;
      x_403 = x_410;
    }
    let x_411 : f32 = x_403;
    hlslcc_movcTemp.z = x_411;
    let x_413 : vec3<f32> = hlslcc_movcTemp;
    u_xlat7 = x_413;
    let x_415 : f32 = u_xlat7.y;
    let x_417 : f32 = u_xlat7.x;
    u_xlat37 = min(x_415, x_417);
    let x_420 : f32 = u_xlat7.z;
    let x_421 : f32 = u_xlat37;
    u_xlat37 = min(x_420, x_421);
    let x_423 : vec3<f32> = vs_TEXCOORD2;
    let x_425 : vec4<f32> = x_18.unity_SpecCube0_ProbePosition;
    u_xlat7 = (x_423 + -(vec3<f32>(x_425.x, x_425.y, x_425.z)));
    let x_429 : vec4<f32> = u_xlat6;
    let x_431 : f32 = u_xlat37;
    let x_434 : vec3<f32> = u_xlat7;
    let x_435 : vec3<f32> = ((vec3<f32>(x_429.x, x_429.y, x_429.z) * vec3<f32>(x_431, x_431, x_431)) + x_434);
    let x_436 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  } else {
    let x_439 : vec4<f32> = u_xlat4;
    let x_440 : vec3<f32> = vec3<f32>(x_439.x, x_439.y, x_439.z);
    let x_441 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  }
  let x_443 : f32 = u_xlat38;
  u_xlat37 = ((-(x_443) * 0.699999988f) + 1.700000048f);
  let x_449 : f32 = u_xlat37;
  let x_450 : f32 = u_xlat38;
  u_xlat37 = (x_449 * x_450);
  let x_452 : f32 = u_xlat37;
  u_xlat37 = (x_452 * 6.0f);
  let x_463 : vec4<f32> = u_xlat6;
  let x_465 : f32 = u_xlat37;
  let x_466 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_463.x, x_463.y, x_463.z), x_465);
  u_xlat6 = x_466;
  let x_468 : f32 = u_xlat6.w;
  u_xlat39 = (x_468 + -1.0f);
  let x_473 : f32 = x_18.unity_SpecCube0_HDR.w;
  let x_474 : f32 = u_xlat39;
  u_xlat39 = ((x_473 * x_474) + 1.0f);
  let x_477 : f32 = u_xlat39;
  u_xlat39 = log2(x_477);
  let x_479 : f32 = u_xlat39;
  let x_481 : f32 = x_18.unity_SpecCube0_HDR.y;
  u_xlat39 = (x_479 * x_481);
  let x_483 : f32 = u_xlat39;
  u_xlat39 = exp2(x_483);
  let x_485 : f32 = u_xlat39;
  let x_487 : f32 = x_18.unity_SpecCube0_HDR.x;
  u_xlat39 = (x_485 * x_487);
  let x_489 : vec4<f32> = u_xlat6;
  let x_491 : f32 = u_xlat39;
  u_xlat7 = (vec3<f32>(x_489.x, x_489.y, x_489.z) * vec3<f32>(x_491, x_491, x_491));
  let x_496 : f32 = x_18.unity_SpecCube0_BoxMin.w;
  u_xlatb40 = (x_496 < 0.999989986f);
  let x_499 : bool = u_xlatb40;
  if (x_499) {
    let x_504 : f32 = x_18.unity_SpecCube1_ProbePosition.w;
    u_xlatb40 = (0.0f < x_504);
    let x_506 : bool = u_xlatb40;
    if (x_506) {
      let x_510 : vec4<f32> = u_xlat4;
      let x_512 : vec4<f32> = u_xlat4;
      u_xlat40 = dot(vec3<f32>(x_510.x, x_510.y, x_510.z), vec3<f32>(x_512.x, x_512.y, x_512.z));
      let x_515 : f32 = u_xlat40;
      u_xlat40 = inverseSqrt(x_515);
      let x_517 : f32 = u_xlat40;
      let x_519 : vec4<f32> = u_xlat4;
      u_xlat8 = (vec3<f32>(x_517, x_517, x_517) * vec3<f32>(x_519.x, x_519.y, x_519.z));
      let x_523 : vec3<f32> = vs_TEXCOORD2;
      let x_527 : vec4<f32> = x_18.unity_SpecCube1_BoxMax;
      u_xlat9 = (-(x_523) + vec3<f32>(x_527.x, x_527.y, x_527.z));
      let x_530 : vec3<f32> = u_xlat9;
      let x_531 : vec3<f32> = u_xlat8;
      u_xlat9 = (x_530 / x_531);
      let x_534 : vec3<f32> = vs_TEXCOORD2;
      let x_538 : vec4<f32> = x_18.unity_SpecCube1_BoxMin;
      u_xlat10 = (-(x_534) + vec3<f32>(x_538.x, x_538.y, x_538.z));
      let x_541 : vec3<f32> = u_xlat10;
      let x_542 : vec3<f32> = u_xlat8;
      u_xlat10 = (x_541 / x_542);
      let x_545 : vec3<f32> = u_xlat8;
      let x_547 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_545.x, x_545.y, x_545.z, x_545.x));
      u_xlatb11 = vec3<bool>(x_547.x, x_547.y, x_547.z);
      let x_550 : vec3<f32> = u_xlat9;
      hlslcc_movcTemp_1 = x_550;
      let x_552 : bool = u_xlatb11.x;
      if (x_552) {
        let x_557 : f32 = u_xlat9.x;
        x_553 = x_557;
      } else {
        let x_560 : f32 = u_xlat10.x;
        x_553 = x_560;
      }
      let x_561 : f32 = x_553;
      hlslcc_movcTemp_1.x = x_561;
      let x_564 : bool = u_xlatb11.y;
      if (x_564) {
        let x_569 : f32 = u_xlat9.y;
        x_565 = x_569;
      } else {
        let x_572 : f32 = u_xlat10.y;
        x_565 = x_572;
      }
      let x_573 : f32 = x_565;
      hlslcc_movcTemp_1.y = x_573;
      let x_576 : bool = u_xlatb11.z;
      if (x_576) {
        let x_581 : f32 = u_xlat9.z;
        x_577 = x_581;
      } else {
        let x_584 : f32 = u_xlat10.z;
        x_577 = x_584;
      }
      let x_585 : f32 = x_577;
      hlslcc_movcTemp_1.z = x_585;
      let x_587 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat9 = x_587;
      let x_589 : f32 = u_xlat9.y;
      let x_591 : f32 = u_xlat9.x;
      u_xlat40 = min(x_589, x_591);
      let x_594 : f32 = u_xlat9.z;
      let x_595 : f32 = u_xlat40;
      u_xlat40 = min(x_594, x_595);
      let x_597 : vec3<f32> = vs_TEXCOORD2;
      let x_599 : vec4<f32> = x_18.unity_SpecCube1_ProbePosition;
      u_xlat9 = (x_597 + -(vec3<f32>(x_599.x, x_599.y, x_599.z)));
      let x_603 : vec3<f32> = u_xlat8;
      let x_604 : f32 = u_xlat40;
      let x_607 : vec3<f32> = u_xlat9;
      let x_608 : vec3<f32> = ((x_603 * vec3<f32>(x_604, x_604, x_604)) + x_607);
      let x_609 : vec4<f32> = u_xlat4;
      u_xlat4 = vec4<f32>(x_608.x, x_608.y, x_608.z, x_609.w);
    }
    let x_615 : vec4<f32> = u_xlat4;
    let x_617 : f32 = u_xlat37;
    let x_618 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_615.x, x_615.y, x_615.z), x_617);
    u_xlat4 = x_618;
    let x_620 : f32 = u_xlat4.w;
    u_xlat37 = (x_620 + -1.0f);
    let x_624 : f32 = x_18.unity_SpecCube1_HDR.w;
    let x_625 : f32 = u_xlat37;
    u_xlat37 = ((x_624 * x_625) + 1.0f);
    let x_628 : f32 = u_xlat37;
    u_xlat37 = log2(x_628);
    let x_630 : f32 = u_xlat37;
    let x_632 : f32 = x_18.unity_SpecCube1_HDR.y;
    u_xlat37 = (x_630 * x_632);
    let x_634 : f32 = u_xlat37;
    u_xlat37 = exp2(x_634);
    let x_636 : f32 = u_xlat37;
    let x_638 : f32 = x_18.unity_SpecCube1_HDR.x;
    u_xlat37 = (x_636 * x_638);
    let x_640 : vec4<f32> = u_xlat4;
    let x_642 : f32 = u_xlat37;
    let x_644 : vec3<f32> = (vec3<f32>(x_640.x, x_640.y, x_640.z) * vec3<f32>(x_642, x_642, x_642));
    let x_645 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
    let x_647 : f32 = u_xlat39;
    let x_649 : vec4<f32> = u_xlat6;
    let x_652 : vec4<f32> = u_xlat4;
    let x_655 : vec3<f32> = ((vec3<f32>(x_647, x_647, x_647) * vec3<f32>(x_649.x, x_649.y, x_649.z)) + -(vec3<f32>(x_652.x, x_652.y, x_652.z)));
    let x_656 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
    let x_659 : vec4<f32> = x_18.unity_SpecCube0_BoxMin;
    let x_661 : vec4<f32> = u_xlat6;
    let x_664 : vec4<f32> = u_xlat4;
    u_xlat7 = ((vec3<f32>(x_659.w, x_659.w, x_659.w) * vec3<f32>(x_661.x, x_661.y, x_661.z)) + vec3<f32>(x_664.x, x_664.y, x_664.z));
  }
  let x_667 : vec3<f32> = vs_TEXCOORD1;
  let x_668 : vec3<f32> = vs_TEXCOORD1;
  u_xlat37 = dot(x_667, x_668);
  let x_670 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_670);
  let x_672 : f32 = u_xlat37;
  let x_674 : vec3<f32> = vs_TEXCOORD1;
  let x_675 : vec3<f32> = (vec3<f32>(x_672, x_672, x_672) * x_674);
  let x_676 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_675.x, x_675.y, x_675.z, x_676.w);
  let x_678 : vec3<f32> = u_xlat2;
  let x_679 : vec4<f32> = vs_COLOR0;
  u_xlat2 = ((x_678 * vec3<f32>(x_679.x, x_679.y, x_679.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_687 : f32 = x_18.x_Metallic;
  let x_689 : f32 = x_18.x_Metallic;
  let x_691 : f32 = x_18.x_Metallic;
  let x_692 : vec3<f32> = vec3<f32>(x_687, x_689, x_691);
  let x_697 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_692.x, x_692.y, x_692.z) * x_697) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_703 : f32 = x_18.x_Metallic;
  u_xlat37 = ((-(x_703) * 0.959999979f) + 0.959999979f);
  let x_708 : f32 = u_xlat37;
  let x_710 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_708, x_708, x_708) * x_710);
  let x_712 : vec4<f32> = u_xlat0;
  let x_714 : f32 = u_xlat36;
  let x_718 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_720 : vec3<f32> = ((vec3<f32>(x_712.x, x_712.y, x_712.z) * vec3<f32>(x_714, x_714, x_714)) + vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  let x_723 : vec4<f32> = u_xlat0;
  let x_725 : vec4<f32> = u_xlat0;
  u_xlat36 = dot(vec3<f32>(x_723.x, x_723.y, x_723.z), vec3<f32>(x_725.x, x_725.y, x_725.z));
  let x_728 : f32 = u_xlat36;
  u_xlat36 = max(x_728, 0.001f);
  let x_731 : f32 = u_xlat36;
  u_xlat36 = inverseSqrt(x_731);
  let x_733 : f32 = u_xlat36;
  let x_735 : vec4<f32> = u_xlat0;
  let x_737 : vec3<f32> = (vec3<f32>(x_733, x_733, x_733) * vec3<f32>(x_735.x, x_735.y, x_735.z));
  let x_738 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_737.x, x_737.y, x_737.z, x_738.w);
  let x_740 : vec4<f32> = u_xlat4;
  let x_742 : vec4<f32> = u_xlat1;
  u_xlat36 = dot(vec3<f32>(x_740.x, x_740.y, x_740.z), vec3<f32>(x_742.x, x_742.y, x_742.z));
  let x_745 : vec4<f32> = u_xlat4;
  let x_748 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(vec3<f32>(x_745.x, x_745.y, x_745.z), vec3<f32>(x_748.x, x_748.y, x_748.z));
  let x_753 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_753, 0.0f, 1.0f);
  let x_757 : vec4<f32> = u_xlat4;
  let x_759 : vec4<f32> = u_xlat0;
  u_xlat13 = dot(vec3<f32>(x_757.x, x_757.y, x_757.z), vec3<f32>(x_759.x, x_759.y, x_759.z));
  let x_762 : f32 = u_xlat13;
  u_xlat13 = clamp(x_762, 0.0f, 1.0f);
  let x_765 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_767 : vec4<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_765.x, x_765.y, x_765.z), vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_772 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_772, 0.0f, 1.0f);
  let x_777 : f32 = u_xlat0.x;
  let x_779 : f32 = u_xlat0.x;
  u_xlat12.x = (x_777 * x_779);
  let x_782 : vec3<f32> = u_xlat12;
  let x_784 : f32 = u_xlat38;
  u_xlat12.x = dot(vec2<f32>(x_782.x, x_782.x), vec2<f32>(x_784, x_784));
  let x_789 : f32 = u_xlat12.x;
  u_xlat12.x = (x_789 + -0.5f);
  let x_795 : f32 = u_xlat1.x;
  u_xlat24 = (-(x_795) + 1.0f);
  let x_799 : f32 = u_xlat24;
  let x_800 : f32 = u_xlat24;
  u_xlat25 = (x_799 * x_800);
  let x_802 : f32 = u_xlat25;
  let x_803 : f32 = u_xlat25;
  u_xlat25 = (x_802 * x_803);
  let x_805 : f32 = u_xlat24;
  let x_806 : f32 = u_xlat25;
  u_xlat24 = (x_805 * x_806);
  let x_809 : f32 = u_xlat12.x;
  let x_810 : f32 = u_xlat24;
  u_xlat24 = ((x_809 * x_810) + 1.0f);
  let x_813 : f32 = u_xlat36;
  u_xlat25 = (-(abs(x_813)) + 1.0f);
  let x_817 : f32 = u_xlat25;
  let x_818 : f32 = u_xlat25;
  u_xlat39 = (x_817 * x_818);
  let x_820 : f32 = u_xlat39;
  let x_821 : f32 = u_xlat39;
  u_xlat39 = (x_820 * x_821);
  let x_823 : f32 = u_xlat25;
  let x_824 : f32 = u_xlat39;
  u_xlat25 = (x_823 * x_824);
  let x_827 : f32 = u_xlat12.x;
  let x_828 : f32 = u_xlat25;
  u_xlat12.x = ((x_827 * x_828) + 1.0f);
  let x_833 : f32 = u_xlat12.x;
  let x_834 : f32 = u_xlat24;
  u_xlat12.x = (x_833 * x_834);
  let x_837 : f32 = u_xlat38;
  let x_838 : f32 = u_xlat38;
  u_xlat24 = (x_837 * x_838);
  let x_840 : f32 = u_xlat24;
  u_xlat24 = max(x_840, 0.002f);
  let x_843 : f32 = u_xlat24;
  u_xlat38 = (-(x_843) + 1.0f);
  let x_846 : f32 = u_xlat36;
  let x_848 : f32 = u_xlat38;
  let x_850 : f32 = u_xlat24;
  u_xlat39 = ((abs(x_846) * x_848) + x_850);
  let x_853 : f32 = u_xlat1.x;
  let x_854 : f32 = u_xlat38;
  let x_856 : f32 = u_xlat24;
  u_xlat38 = ((x_853 * x_854) + x_856);
  let x_858 : f32 = u_xlat36;
  let x_860 : f32 = u_xlat38;
  u_xlat36 = (abs(x_858) * x_860);
  let x_863 : f32 = u_xlat1.x;
  let x_864 : f32 = u_xlat39;
  let x_866 : f32 = u_xlat36;
  u_xlat36 = ((x_863 * x_864) + x_866);
  let x_868 : f32 = u_xlat36;
  u_xlat36 = (x_868 + 0.00001f);
  let x_871 : f32 = u_xlat36;
  u_xlat36 = (0.5f / x_871);
  let x_873 : f32 = u_xlat24;
  let x_874 : f32 = u_xlat24;
  u_xlat38 = (x_873 * x_874);
  let x_876 : f32 = u_xlat13;
  let x_877 : f32 = u_xlat38;
  let x_879 : f32 = u_xlat13;
  u_xlat39 = ((x_876 * x_877) + -(x_879));
  let x_882 : f32 = u_xlat39;
  let x_883 : f32 = u_xlat13;
  u_xlat13 = ((x_882 * x_883) + 1.0f);
  let x_886 : f32 = u_xlat38;
  u_xlat38 = (x_886 * 0.318309873f);
  let x_889 : f32 = u_xlat13;
  let x_890 : f32 = u_xlat13;
  u_xlat13 = ((x_889 * x_890) + 0.0000001f);
  let x_894 : f32 = u_xlat38;
  let x_895 : f32 = u_xlat13;
  u_xlat13 = (x_894 / x_895);
  let x_897 : f32 = u_xlat36;
  let x_898 : f32 = u_xlat13;
  u_xlat12.z = (x_897 * x_898);
  let x_901 : vec4<f32> = u_xlat1;
  let x_903 : vec3<f32> = u_xlat12;
  let x_905 : vec2<f32> = (vec2<f32>(x_901.x, x_901.x) * vec2<f32>(x_903.x, x_903.z));
  let x_906 : vec3<f32> = u_xlat12;
  u_xlat12 = vec3<f32>(x_905.x, x_906.y, x_905.y);
  let x_909 : f32 = u_xlat12.z;
  u_xlat36 = (x_909 * 3.141592741f);
  let x_912 : f32 = u_xlat36;
  u_xlat36 = max(x_912, 0.0f);
  let x_914 : f32 = u_xlat24;
  let x_915 : f32 = u_xlat24;
  u_xlat24 = ((x_914 * x_915) + 1.0f);
  let x_918 : f32 = u_xlat24;
  u_xlat24 = (1.0f / x_918);
  let x_920 : vec3<f32> = u_xlat2;
  let x_921 : vec3<f32> = u_xlat2;
  u_xlat1.x = dot(x_920, x_921);
  let x_926 : f32 = u_xlat1.x;
  u_xlatb1 = !((x_926 == 0.0f));
  let x_928 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_928);
  let x_931 : f32 = u_xlat36;
  let x_933 : f32 = u_xlat1.x;
  u_xlat36 = (x_931 * x_933);
  let x_935 : f32 = u_xlat37;
  let x_938 : f32 = x_18.x_Glossiness;
  u_xlat1.x = (-(x_935) + x_938);
  let x_942 : f32 = u_xlat1.x;
  u_xlat1.x = (x_942 + 1.0f);
  let x_946 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_946, 0.0f, 1.0f);
  let x_949 : vec3<f32> = u_xlat12;
  let x_951 : vec3<f32> = u_xlat5;
  let x_952 : vec3<f32> = (vec3<f32>(x_949.x, x_949.x, x_949.x) * x_951);
  let x_953 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_955 : vec3<f32> = u_xlat5;
  let x_956 : f32 = u_xlat36;
  u_xlat5 = (x_955 * vec3<f32>(x_956, x_956, x_956));
  let x_960 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_960) + 1.0f);
  let x_965 : f32 = u_xlat0.x;
  let x_967 : f32 = u_xlat0.x;
  u_xlat12.x = (x_965 * x_967);
  let x_971 : f32 = u_xlat12.x;
  let x_973 : f32 = u_xlat12.x;
  u_xlat12.x = (x_971 * x_973);
  let x_977 : f32 = u_xlat0.x;
  let x_979 : f32 = u_xlat12.x;
  u_xlat0.x = (x_977 * x_979);
  let x_982 : vec3<f32> = u_xlat2;
  let x_985 : vec3<f32> = (-(x_982) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_986 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : vec4<f32> = u_xlat6;
  let x_990 : vec4<f32> = u_xlat0;
  let x_993 : vec3<f32> = u_xlat2;
  let x_994 : vec3<f32> = ((vec3<f32>(x_988.x, x_988.y, x_988.z) * vec3<f32>(x_990.x, x_990.x, x_990.x)) + x_993);
  let x_995 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_994.x, x_994.y, x_995.z, x_994.z);
  let x_997 : vec4<f32> = u_xlat0;
  let x_999 : vec3<f32> = u_xlat5;
  let x_1000 : vec3<f32> = (vec3<f32>(x_997.x, x_997.y, x_997.w) * x_999);
  let x_1001 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1000.x, x_1000.y, x_1001.z, x_1000.z);
  let x_1003 : vec3<f32> = u_xlat3;
  let x_1004 : vec4<f32> = u_xlat4;
  let x_1007 : vec4<f32> = u_xlat0;
  let x_1009 : vec3<f32> = ((x_1003 * vec3<f32>(x_1004.x, x_1004.y, x_1004.z)) + vec3<f32>(x_1007.x, x_1007.y, x_1007.w));
  let x_1010 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1009.x, x_1009.y, x_1010.z, x_1009.z);
  let x_1012 : vec3<f32> = u_xlat7;
  let x_1013 : f32 = u_xlat24;
  u_xlat3 = (x_1012 * vec3<f32>(x_1013, x_1013, x_1013));
  let x_1016 : vec3<f32> = u_xlat2;
  let x_1018 : vec4<f32> = u_xlat1;
  let x_1020 : vec3<f32> = (-(x_1016) + vec3<f32>(x_1018.x, x_1018.x, x_1018.x));
  let x_1021 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1020.x, x_1020.y, x_1021.z, x_1020.z);
  let x_1023 : f32 = u_xlat25;
  let x_1025 : vec4<f32> = u_xlat1;
  let x_1028 : vec3<f32> = u_xlat2;
  let x_1029 : vec3<f32> = ((vec3<f32>(x_1023, x_1023, x_1023) * vec3<f32>(x_1025.x, x_1025.y, x_1025.w)) + x_1028);
  let x_1030 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1029.x, x_1029.y, x_1029.z, x_1030.w);
  let x_1034 : vec3<f32> = u_xlat3;
  let x_1035 : vec4<f32> = u_xlat1;
  let x_1038 : vec4<f32> = u_xlat0;
  let x_1040 : vec3<f32> = ((x_1034 * vec3<f32>(x_1035.x, x_1035.y, x_1035.z)) + vec3<f32>(x_1038.x, x_1038.y, x_1038.w));
  let x_1041 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1040.x, x_1040.y, x_1040.z, x_1041.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(4) vs_TEXCOORD5_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

