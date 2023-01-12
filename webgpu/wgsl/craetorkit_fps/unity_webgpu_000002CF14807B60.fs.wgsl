struct PGlobals {
  x_Time : vec4<f32>,
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
  x_AmbientColor : vec4<f32>,
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_37 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(10) var sampler_Normal : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(8) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(6) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(4) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat45 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat46 : f32;
  var u_xlatb46 : bool;
  var u_xlat6 : vec4<f32>;
  var u_xlat47 : f32;
  var u_xlatb47 : bool;
  var u_xlatb48 : bool;
  var x_297 : vec3<f32>;
  var u_xlat48 : f32;
  var u_xlat49 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var x_502 : vec3<f32>;
  var u_xlat9 : vec4<f32>;
  var u_xlat10 : vec4<f32>;
  var u_xlat11 : vec3<f32>;
  var u_xlatb12 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_685 : f32;
  var x_697 : f32;
  var x_709 : f32;
  var u_xlatb49 : bool;
  var u_xlat12 : vec3<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_862 : f32;
  var x_874 : f32;
  var x_886 : f32;
  var u_xlat17 : f32;
  var u_xlat16 : f32;
  var u_xlat31 : f32;
  var u_xlat32 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_17;
  let x_23 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_23;
  let x_28 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_28;
  let x_32 : vec3<f32> = u_xlat0;
  let x_42 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_32) + x_42);
  let x_45 : vec3<f32> = u_xlat1;
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat45;
  let x_54 : vec3<f32> = u_xlat1;
  let x_55 : vec3<f32> = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_71 : vec4<f32> = vs_TEXCOORD0;
  let x_73 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_71.x, x_71.y));
  u_xlat3 = x_73;
  let x_74 : vec4<f32> = u_xlat3;
  let x_79 : vec4<f32> = x_37.x_Color;
  let x_81 : vec3<f32> = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_79.x, x_79.y, x_79.z));
  let x_82 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_81.x, x_81.y, x_81.z, x_82.w);
  let x_85 : vec4<f32> = u_xlat3;
  let x_88 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (vec3<f32>(x_85.x, x_85.y, x_85.z) * vec3<f32>(x_88.x, x_88.y, x_88.z));
  let x_95 : f32 = x_37.x_Time.x;
  let x_98 : f32 = x_37.x_MovementSpeed;
  let x_101 : f32 = vs_TEXCOORD0.z;
  u_xlat5.x = ((x_95 * x_98) + x_101);
  let x_105 : f32 = x_37.x_Time.x;
  let x_108 : f32 = x_37.x_MovementSpeed;
  let x_111 : f32 = vs_TEXCOORD0.w;
  u_xlat5.y = ((-(x_105) * x_108) + x_111);
  let x_119 : vec4<f32> = u_xlat5;
  let x_121 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_119.x, x_119.y));
  let x_122 : vec3<f32> = vec3<f32>(x_121.x, x_121.y, x_121.w);
  let x_123 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_122.x, x_122.y, x_122.z, x_123.w);
  let x_126 : f32 = u_xlat5.z;
  let x_128 : f32 = u_xlat5.x;
  u_xlat5.x = (x_126 * x_128);
  let x_131 : vec4<f32> = u_xlat5;
  let x_138 : vec2<f32> = ((vec2<f32>(x_131.x, x_131.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_139 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
  let x_141 : vec4<f32> = u_xlat5;
  let x_145 : f32 = x_37.x_NormalSacle;
  let x_147 : vec2<f32> = (vec2<f32>(x_141.x, x_141.y) * vec2<f32>(x_145, x_145));
  let x_148 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_147.x, x_147.y, x_148.z, x_148.w);
  let x_151 : vec4<f32> = u_xlat5;
  let x_153 : vec4<f32> = u_xlat5;
  u_xlat46 = dot(vec2<f32>(x_151.x, x_151.y), vec2<f32>(x_153.x, x_153.y));
  let x_156 : f32 = u_xlat46;
  u_xlat46 = min(x_156, 1.0f);
  let x_159 : f32 = u_xlat46;
  u_xlat46 = (-(x_159) + 1.0f);
  let x_162 : f32 = u_xlat46;
  u_xlat5.z = sqrt(x_162);
  let x_166 : f32 = vs_COLOR0.w;
  u_xlat46 = (-(x_166) + 1.0f);
  let x_170 : f32 = u_xlat3.w;
  let x_172 : f32 = x_37.x_Color.w;
  let x_174 : f32 = u_xlat46;
  u_xlat46 = ((x_170 * x_172) + -(x_174));
  let x_180 : f32 = u_xlat46;
  u_xlatb46 = (x_180 < 0.0f);
  let x_183 : bool = u_xlatb46;
  if (((select(0i, 1i, x_183) * -1i) != 0i)) {
    discard;
  }
  let x_194 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat6.x = x_194;
  let x_197 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat6.y = x_197;
  let x_201 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat6.z = x_201;
  let x_203 : vec3<f32> = u_xlat1;
  let x_204 : vec4<f32> = u_xlat6;
  u_xlat46 = dot(x_203, vec3<f32>(x_204.x, x_204.y, x_204.z));
  let x_207 : vec3<f32> = u_xlat0;
  let x_210 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_213 : vec3<f32> = (x_207 + -(vec3<f32>(x_210.x, x_210.y, x_210.z)));
  let x_214 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_213.x, x_213.y, x_213.z, x_214.w);
  let x_217 : vec4<f32> = u_xlat6;
  let x_219 : vec4<f32> = u_xlat6;
  u_xlat47 = dot(vec3<f32>(x_217.x, x_217.y, x_217.z), vec3<f32>(x_219.x, x_219.y, x_219.z));
  let x_222 : f32 = u_xlat47;
  u_xlat47 = sqrt(x_222);
  let x_224 : f32 = u_xlat46;
  let x_226 : f32 = u_xlat47;
  u_xlat47 = (-(x_224) + x_226);
  let x_229 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_230 : f32 = u_xlat47;
  let x_232 : f32 = u_xlat46;
  u_xlat46 = ((x_229 * x_230) + x_232);
  let x_234 : f32 = u_xlat46;
  let x_237 : f32 = x_37.x_LightShadowData.z;
  let x_240 : f32 = x_37.x_LightShadowData.w;
  u_xlat46 = ((x_234 * x_237) + x_240);
  let x_242 : f32 = u_xlat46;
  u_xlat46 = clamp(x_242, 0.0f, 1.0f);
  let x_247 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb47 = (x_247 == 1.0f);
  let x_249 : bool = u_xlatb47;
  if (x_249) {
    let x_254 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb48 = (x_254 == 1.0f);
    let x_256 : vec4<f32> = vs_TEXCOORD2;
    let x_260 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_262 : vec3<f32> = (vec3<f32>(x_256.w, x_256.w, x_256.w) * vec3<f32>(x_260.x, x_260.y, x_260.z));
    let x_263 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_266 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_268 : vec4<f32> = vs_TEXCOORD1;
    let x_271 : vec4<f32> = u_xlat6;
    let x_273 : vec3<f32> = ((vec3<f32>(x_266.x, x_266.y, x_266.z) * vec3<f32>(x_268.w, x_268.w, x_268.w)) + vec3<f32>(x_271.x, x_271.y, x_271.z));
    let x_274 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_273.x, x_273.y, x_273.z, x_274.w);
    let x_277 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_279 : vec4<f32> = vs_TEXCOORD3;
    let x_282 : vec4<f32> = u_xlat6;
    let x_284 : vec3<f32> = ((vec3<f32>(x_277.x, x_277.y, x_277.z) * vec3<f32>(x_279.w, x_279.w, x_279.w)) + vec3<f32>(x_282.x, x_282.y, x_282.z));
    let x_285 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_287 : vec4<f32> = u_xlat6;
    let x_291 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_293 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) + vec3<f32>(x_291.x, x_291.y, x_291.z));
    let x_294 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
    let x_296 : bool = u_xlatb48;
    if (x_296) {
      let x_300 : vec4<f32> = u_xlat6;
      x_297 = vec3<f32>(x_300.x, x_300.y, x_300.z);
    } else {
      let x_303 : vec3<f32> = u_xlat0;
      x_297 = x_303;
    }
    let x_304 : vec3<f32> = x_297;
    let x_305 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_304.x, x_304.y, x_304.z, x_305.w);
    let x_307 : vec4<f32> = u_xlat6;
    let x_311 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_313 : vec3<f32> = (vec3<f32>(x_307.x, x_307.y, x_307.z) + -(x_311));
    let x_314 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
    let x_316 : vec4<f32> = u_xlat6;
    let x_320 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_321 : vec3<f32> = (vec3<f32>(x_316.x, x_316.y, x_316.z) * x_320);
    let x_322 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_322.x, x_321.x, x_321.y, x_321.z);
    let x_326 : f32 = u_xlat6.y;
    u_xlat48 = ((x_326 * 0.25f) + 0.75f);
    let x_333 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat49 = ((x_333 * 0.5f) + 0.75f);
    let x_337 : f32 = u_xlat48;
    let x_338 : f32 = u_xlat49;
    u_xlat6.x = max(x_337, x_338);
    let x_349 : vec4<f32> = u_xlat6;
    let x_351 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_349.x, x_349.z, x_349.w));
    u_xlat6 = x_351;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_357 : vec4<f32> = u_xlat6;
  let x_360 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat48 = dot(x_357, x_360);
  let x_362 : f32 = u_xlat48;
  u_xlat48 = clamp(x_362, 0.0f, 1.0f);
  let x_365 : vec4<f32> = vs_TEXCOORD7;
  let x_367 : vec4<f32> = vs_TEXCOORD7;
  let x_369 : vec2<f32> = (vec2<f32>(x_365.x, x_365.y) / vec2<f32>(x_367.w, x_367.w));
  let x_370 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_369.x, x_369.y, x_370.z, x_370.w);
  let x_377 : vec4<f32> = u_xlat6;
  let x_379 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_377.x, x_377.y));
  u_xlat49 = x_379.x;
  let x_381 : f32 = u_xlat48;
  let x_382 : f32 = u_xlat49;
  u_xlat48 = (x_381 + -(x_382));
  let x_385 : f32 = u_xlat46;
  let x_386 : f32 = u_xlat48;
  let x_388 : f32 = u_xlat49;
  u_xlat46 = ((x_385 * x_386) + x_388);
  let x_390 : vec4<f32> = vs_TEXCOORD1;
  let x_392 : vec4<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_390.x, x_390.y, x_390.z), vec3<f32>(x_392.x, x_392.y, x_392.z));
  let x_396 : vec4<f32> = vs_TEXCOORD2;
  let x_398 : vec4<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_396.x, x_396.y, x_396.z), vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_402 : vec4<f32> = vs_TEXCOORD3;
  let x_404 : vec4<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_402.x, x_402.y, x_402.z), vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_408 : vec4<f32> = u_xlat6;
  let x_410 : vec4<f32> = u_xlat6;
  u_xlat48 = dot(vec3<f32>(x_408.x, x_408.y, x_408.z), vec3<f32>(x_410.x, x_410.y, x_410.z));
  let x_413 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_413);
  let x_415 : f32 = u_xlat48;
  let x_417 : vec4<f32> = u_xlat6;
  let x_419 : vec3<f32> = (vec3<f32>(x_415, x_415, x_415) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_419.x, x_419.y, x_419.z, x_420.w);
  let x_424 : f32 = x_37.x_Glossiness;
  u_xlat48 = (-(x_424) + 1.0f);
  let x_427 : vec4<f32> = u_xlat2;
  let x_430 : vec4<f32> = u_xlat5;
  u_xlat49 = dot(-(vec3<f32>(x_427.x, x_427.y, x_427.z)), vec3<f32>(x_430.x, x_430.y, x_430.z));
  let x_433 : f32 = u_xlat49;
  let x_434 : f32 = u_xlat49;
  u_xlat49 = (x_433 + x_434);
  let x_436 : vec4<f32> = u_xlat5;
  let x_438 : f32 = u_xlat49;
  let x_442 : vec4<f32> = u_xlat2;
  let x_445 : vec3<f32> = ((vec3<f32>(x_436.x, x_436.y, x_436.z) * -(vec3<f32>(x_438, x_438, x_438))) + -(vec3<f32>(x_442.x, x_442.y, x_442.z)));
  let x_446 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
  let x_449 : f32 = u_xlat46;
  let x_453 : vec4<f32> = x_37.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_449, x_449, x_449) * vec3<f32>(x_453.x, x_453.y, x_453.z));
  let x_456 : bool = u_xlatb47;
  if (x_456) {
    let x_460 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb46 = (x_460 == 1.0f);
    let x_463 : vec4<f32> = vs_TEXCOORD2;
    let x_466 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_468 : vec3<f32> = (vec3<f32>(x_463.w, x_463.w, x_463.w) * vec3<f32>(x_466.x, x_466.y, x_466.z));
    let x_469 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_468.x, x_468.y, x_468.z, x_469.w);
    let x_472 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_474 : vec4<f32> = vs_TEXCOORD1;
    let x_477 : vec4<f32> = u_xlat8;
    let x_479 : vec3<f32> = ((vec3<f32>(x_472.x, x_472.y, x_472.z) * vec3<f32>(x_474.w, x_474.w, x_474.w)) + vec3<f32>(x_477.x, x_477.y, x_477.z));
    let x_480 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
    let x_483 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_485 : vec4<f32> = vs_TEXCOORD3;
    let x_488 : vec4<f32> = u_xlat8;
    let x_490 : vec3<f32> = ((vec3<f32>(x_483.x, x_483.y, x_483.z) * vec3<f32>(x_485.w, x_485.w, x_485.w)) + vec3<f32>(x_488.x, x_488.y, x_488.z));
    let x_491 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
    let x_493 : vec4<f32> = u_xlat8;
    let x_496 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_498 : vec3<f32> = (vec3<f32>(x_493.x, x_493.y, x_493.z) + vec3<f32>(x_496.x, x_496.y, x_496.z));
    let x_499 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
    let x_501 : bool = u_xlatb46;
    if (x_501) {
      let x_505 : vec4<f32> = u_xlat8;
      x_502 = vec3<f32>(x_505.x, x_505.y, x_505.z);
    } else {
      let x_508 : vec3<f32> = u_xlat0;
      x_502 = x_508;
    }
    let x_509 : vec3<f32> = x_502;
    let x_510 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
    let x_512 : vec4<f32> = u_xlat8;
    let x_515 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_517 : vec3<f32> = (vec3<f32>(x_512.x, x_512.y, x_512.z) + -(x_515));
    let x_518 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
    let x_520 : vec4<f32> = u_xlat8;
    let x_523 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_524 : vec3<f32> = (vec3<f32>(x_520.x, x_520.y, x_520.z) * x_523);
    let x_525 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_525.x, x_524.x, x_524.y, x_524.z);
    let x_528 : f32 = u_xlat8.y;
    u_xlat46 = (x_528 * 0.25f);
    let x_531 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat47 = (x_531 * 0.5f);
    let x_534 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat49 = ((-(x_534) * 0.5f) + 0.25f);
    let x_538 : f32 = u_xlat46;
    let x_539 : f32 = u_xlat47;
    u_xlat46 = max(x_538, x_539);
    let x_541 : f32 = u_xlat49;
    let x_542 : f32 = u_xlat46;
    u_xlat8.x = min(x_541, x_542);
    let x_549 : vec4<f32> = u_xlat8;
    let x_551 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_549.x, x_549.z, x_549.w));
    u_xlat9 = x_551;
    let x_553 : vec4<f32> = u_xlat8;
    let x_556 : vec3<f32> = (vec3<f32>(x_553.x, x_553.z, x_553.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_557 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_556.x, x_556.y, x_556.z, x_557.w);
    let x_562 : vec4<f32> = u_xlat10;
    let x_564 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_562.x, x_562.y, x_562.z));
    u_xlat10 = x_564;
    let x_565 : vec4<f32> = u_xlat8;
    let x_568 : vec3<f32> = (vec3<f32>(x_565.x, x_565.z, x_565.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_569 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_568.x, x_568.y, x_568.z, x_569.w);
    let x_574 : vec4<f32> = u_xlat8;
    let x_576 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_574.x, x_574.y, x_574.z));
    u_xlat8 = x_576;
    u_xlat5.w = 1.0f;
    let x_578 : vec4<f32> = u_xlat9;
    let x_579 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_578, x_579);
    let x_582 : vec4<f32> = u_xlat10;
    let x_583 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_582, x_583);
    let x_586 : vec4<f32> = u_xlat8;
    let x_587 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_586, x_587);
  } else {
    u_xlat5.w = 1.0f;
    let x_593 : vec4<f32> = x_37.unity_SHAr;
    let x_594 : vec4<f32> = u_xlat5;
    u_xlat9.x = dot(x_593, x_594);
    let x_599 : vec4<f32> = x_37.unity_SHAg;
    let x_600 : vec4<f32> = u_xlat5;
    u_xlat9.y = dot(x_599, x_600);
    let x_605 : vec4<f32> = x_37.unity_SHAb;
    let x_606 : vec4<f32> = u_xlat5;
    u_xlat9.z = dot(x_605, x_606);
  }
  let x_609 : vec4<f32> = u_xlat9;
  let x_613 : vec3<f32> = vs_TEXCOORD5;
  let x_614 : vec3<f32> = (vec3<f32>(x_609.x, x_609.y, x_609.z) + x_613);
  let x_615 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  let x_617 : vec4<f32> = u_xlat8;
  let x_620 : vec3<f32> = max(vec3<f32>(x_617.x, x_617.y, x_617.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_621 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_620.x, x_620.y, x_620.z, x_621.w);
  let x_625 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb46 = (0.0f < x_625);
  let x_627 : bool = u_xlatb46;
  if (x_627) {
    let x_630 : vec4<f32> = u_xlat6;
    let x_632 : vec4<f32> = u_xlat6;
    u_xlat46 = dot(vec3<f32>(x_630.x, x_630.y, x_630.z), vec3<f32>(x_632.x, x_632.y, x_632.z));
    let x_635 : f32 = u_xlat46;
    u_xlat46 = inverseSqrt(x_635);
    let x_637 : f32 = u_xlat46;
    let x_639 : vec4<f32> = u_xlat6;
    let x_641 : vec3<f32> = (vec3<f32>(x_637, x_637, x_637) * vec3<f32>(x_639.x, x_639.y, x_639.z));
    let x_642 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_641.x, x_641.y, x_641.z, x_642.w);
    let x_644 : vec3<f32> = u_xlat0;
    let x_648 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_650 : vec3<f32> = (-(x_644) + vec3<f32>(x_648.x, x_648.y, x_648.z));
    let x_651 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
    let x_653 : vec4<f32> = u_xlat10;
    let x_655 : vec4<f32> = u_xlat9;
    let x_657 : vec3<f32> = (vec3<f32>(x_653.x, x_653.y, x_653.z) / vec3<f32>(x_655.x, x_655.y, x_655.z));
    let x_658 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_657.x, x_657.y, x_657.z, x_658.w);
    let x_661 : vec3<f32> = u_xlat0;
    let x_665 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat11 = (-(x_661) + vec3<f32>(x_665.x, x_665.y, x_665.z));
    let x_668 : vec3<f32> = u_xlat11;
    let x_669 : vec4<f32> = u_xlat9;
    u_xlat11 = (x_668 / vec3<f32>(x_669.x, x_669.y, x_669.z));
    let x_676 : vec4<f32> = u_xlat9;
    let x_679 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_676.x, x_676.y, x_676.z, x_676.x));
    u_xlatb12 = vec3<bool>(x_679.x, x_679.y, x_679.z);
    let x_682 : vec4<f32> = u_xlat10;
    hlslcc_movcTemp = x_682;
    let x_684 : bool = u_xlatb12.x;
    if (x_684) {
      let x_689 : f32 = u_xlat10.x;
      x_685 = x_689;
    } else {
      let x_692 : f32 = u_xlat11.x;
      x_685 = x_692;
    }
    let x_693 : f32 = x_685;
    hlslcc_movcTemp.x = x_693;
    let x_696 : bool = u_xlatb12.y;
    if (x_696) {
      let x_701 : f32 = u_xlat10.y;
      x_697 = x_701;
    } else {
      let x_704 : f32 = u_xlat11.y;
      x_697 = x_704;
    }
    let x_705 : f32 = x_697;
    hlslcc_movcTemp.y = x_705;
    let x_708 : bool = u_xlatb12.z;
    if (x_708) {
      let x_713 : f32 = u_xlat10.z;
      x_709 = x_713;
    } else {
      let x_716 : f32 = u_xlat11.z;
      x_709 = x_716;
    }
    let x_717 : f32 = x_709;
    hlslcc_movcTemp.z = x_717;
    let x_719 : vec4<f32> = hlslcc_movcTemp;
    u_xlat10 = x_719;
    let x_721 : f32 = u_xlat10.y;
    let x_723 : f32 = u_xlat10.x;
    u_xlat46 = min(x_721, x_723);
    let x_726 : f32 = u_xlat10.z;
    let x_727 : f32 = u_xlat46;
    u_xlat46 = min(x_726, x_727);
    let x_729 : vec3<f32> = u_xlat0;
    let x_731 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_734 : vec3<f32> = (x_729 + -(vec3<f32>(x_731.x, x_731.y, x_731.z)));
    let x_735 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_734.x, x_734.y, x_734.z, x_735.w);
    let x_737 : vec4<f32> = u_xlat9;
    let x_739 : f32 = u_xlat46;
    let x_742 : vec4<f32> = u_xlat10;
    let x_744 : vec3<f32> = ((vec3<f32>(x_737.x, x_737.y, x_737.z) * vec3<f32>(x_739, x_739, x_739)) + vec3<f32>(x_742.x, x_742.y, x_742.z));
    let x_745 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_744.x, x_744.y, x_744.z, x_745.w);
  } else {
    let x_748 : vec4<f32> = u_xlat6;
    let x_749 : vec3<f32> = vec3<f32>(x_748.x, x_748.y, x_748.z);
    let x_750 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_749.x, x_749.y, x_749.z, x_750.w);
  }
  let x_752 : f32 = u_xlat48;
  u_xlat46 = ((-(x_752) * 0.699999988f) + 1.700000048f);
  let x_758 : f32 = u_xlat46;
  let x_759 : f32 = u_xlat48;
  u_xlat46 = (x_758 * x_759);
  let x_761 : f32 = u_xlat46;
  u_xlat46 = (x_761 * 6.0f);
  let x_772 : vec4<f32> = u_xlat9;
  let x_774 : f32 = u_xlat46;
  let x_775 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_772.x, x_772.y, x_772.z), x_774);
  u_xlat9 = x_775;
  let x_777 : f32 = u_xlat9.w;
  u_xlat47 = (x_777 + -1.0f);
  let x_781 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_782 : f32 = u_xlat47;
  u_xlat47 = ((x_781 * x_782) + 1.0f);
  let x_785 : f32 = u_xlat47;
  u_xlat47 = log2(x_785);
  let x_787 : f32 = u_xlat47;
  let x_789 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat47 = (x_787 * x_789);
  let x_791 : f32 = u_xlat47;
  u_xlat47 = exp2(x_791);
  let x_793 : f32 = u_xlat47;
  let x_795 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat47 = (x_793 * x_795);
  let x_797 : vec4<f32> = u_xlat9;
  let x_799 : f32 = u_xlat47;
  let x_801 : vec3<f32> = (vec3<f32>(x_797.x, x_797.y, x_797.z) * vec3<f32>(x_799, x_799, x_799));
  let x_802 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_801.x, x_801.y, x_801.z, x_802.w);
  let x_806 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb49 = (x_806 < 0.999989986f);
  let x_809 : bool = u_xlatb49;
  if (x_809) {
    let x_814 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb49 = (0.0f < x_814);
    let x_816 : bool = u_xlatb49;
    if (x_816) {
      let x_819 : vec4<f32> = u_xlat6;
      let x_821 : vec4<f32> = u_xlat6;
      u_xlat49 = dot(vec3<f32>(x_819.x, x_819.y, x_819.z), vec3<f32>(x_821.x, x_821.y, x_821.z));
      let x_824 : f32 = u_xlat49;
      u_xlat49 = inverseSqrt(x_824);
      let x_826 : f32 = u_xlat49;
      let x_828 : vec4<f32> = u_xlat6;
      u_xlat11 = (vec3<f32>(x_826, x_826, x_826) * vec3<f32>(x_828.x, x_828.y, x_828.z));
      let x_832 : vec3<f32> = u_xlat0;
      let x_836 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat12 = (-(x_832) + vec3<f32>(x_836.x, x_836.y, x_836.z));
      let x_839 : vec3<f32> = u_xlat12;
      let x_840 : vec3<f32> = u_xlat11;
      u_xlat12 = (x_839 / x_840);
      let x_843 : vec3<f32> = u_xlat0;
      let x_847 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat13 = (-(x_843) + vec3<f32>(x_847.x, x_847.y, x_847.z));
      let x_850 : vec3<f32> = u_xlat13;
      let x_851 : vec3<f32> = u_xlat11;
      u_xlat13 = (x_850 / x_851);
      let x_854 : vec3<f32> = u_xlat11;
      let x_856 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_854.x, x_854.y, x_854.z, x_854.x));
      u_xlatb14 = vec3<bool>(x_856.x, x_856.y, x_856.z);
      let x_859 : vec3<f32> = u_xlat12;
      hlslcc_movcTemp_1 = x_859;
      let x_861 : bool = u_xlatb14.x;
      if (x_861) {
        let x_866 : f32 = u_xlat12.x;
        x_862 = x_866;
      } else {
        let x_869 : f32 = u_xlat13.x;
        x_862 = x_869;
      }
      let x_870 : f32 = x_862;
      hlslcc_movcTemp_1.x = x_870;
      let x_873 : bool = u_xlatb14.y;
      if (x_873) {
        let x_878 : f32 = u_xlat12.y;
        x_874 = x_878;
      } else {
        let x_881 : f32 = u_xlat13.y;
        x_874 = x_881;
      }
      let x_882 : f32 = x_874;
      hlslcc_movcTemp_1.y = x_882;
      let x_885 : bool = u_xlatb14.z;
      if (x_885) {
        let x_890 : f32 = u_xlat12.z;
        x_886 = x_890;
      } else {
        let x_893 : f32 = u_xlat13.z;
        x_886 = x_893;
      }
      let x_894 : f32 = x_886;
      hlslcc_movcTemp_1.z = x_894;
      let x_896 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat12 = x_896;
      let x_898 : f32 = u_xlat12.y;
      let x_900 : f32 = u_xlat12.x;
      u_xlat49 = min(x_898, x_900);
      let x_903 : f32 = u_xlat12.z;
      let x_904 : f32 = u_xlat49;
      u_xlat49 = min(x_903, x_904);
      let x_906 : vec3<f32> = u_xlat0;
      let x_908 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_906 + -(vec3<f32>(x_908.x, x_908.y, x_908.z)));
      let x_912 : vec3<f32> = u_xlat11;
      let x_913 : f32 = u_xlat49;
      let x_916 : vec3<f32> = u_xlat0;
      let x_917 : vec3<f32> = ((x_912 * vec3<f32>(x_913, x_913, x_913)) + x_916);
      let x_918 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_917.x, x_917.y, x_917.z, x_918.w);
    }
    let x_924 : vec4<f32> = u_xlat6;
    let x_926 : f32 = u_xlat46;
    let x_927 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_924.x, x_924.y, x_924.z), x_926);
    u_xlat6 = x_927;
    let x_929 : f32 = u_xlat6.w;
    u_xlat0.x = (x_929 + -1.0f);
    let x_934 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_936 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_934 * x_936) + 1.0f);
    let x_941 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_941);
    let x_945 : f32 = u_xlat0.x;
    let x_947 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_945 * x_947);
    let x_951 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_951);
    let x_955 : f32 = u_xlat0.x;
    let x_957 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_955 * x_957);
    let x_960 : vec4<f32> = u_xlat6;
    let x_962 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_960.x, x_960.y, x_960.z) * vec3<f32>(x_962.x, x_962.x, x_962.x));
    let x_965 : f32 = u_xlat47;
    let x_967 : vec4<f32> = u_xlat9;
    let x_970 : vec3<f32> = u_xlat0;
    let x_972 : vec3<f32> = ((vec3<f32>(x_965, x_965, x_965) * vec3<f32>(x_967.x, x_967.y, x_967.z)) + -(x_970));
    let x_973 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
    let x_976 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_978 : vec4<f32> = u_xlat6;
    let x_981 : vec3<f32> = u_xlat0;
    let x_982 : vec3<f32> = ((vec3<f32>(x_976.w, x_976.w, x_976.w) * vec3<f32>(x_978.x, x_978.y, x_978.z)) + x_981);
    let x_983 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_982.x, x_982.y, x_982.z, x_983.w);
  }
  let x_985 : vec4<f32> = u_xlat3;
  let x_987 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_985.x, x_985.y, x_985.z) * vec3<f32>(x_987.x, x_987.y, x_987.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_995 : f32 = x_37.x_Metallic;
  let x_997 : f32 = x_37.x_Metallic;
  let x_999 : f32 = x_37.x_Metallic;
  let x_1000 : vec3<f32> = vec3<f32>(x_995, x_997, x_999);
  let x_1005 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1000.x, x_1000.y, x_1000.z) * x_1005) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1011 : f32 = x_37.x_Metallic;
  u_xlat46 = ((-(x_1011) * 0.959999979f) + 0.959999979f);
  let x_1016 : f32 = u_xlat46;
  let x_1018 : vec3<f32> = u_xlat4;
  let x_1019 : vec3<f32> = (vec3<f32>(x_1016, x_1016, x_1016) * x_1018);
  let x_1020 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1019.x, x_1019.y, x_1019.z, x_1020.w);
  let x_1022 : vec3<f32> = u_xlat1;
  let x_1023 : f32 = u_xlat45;
  let x_1027 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1022 * vec3<f32>(x_1023, x_1023, x_1023)) + vec3<f32>(x_1027.x, x_1027.y, x_1027.z));
  let x_1030 : vec3<f32> = u_xlat1;
  let x_1031 : vec3<f32> = u_xlat1;
  u_xlat45 = dot(x_1030, x_1031);
  let x_1033 : f32 = u_xlat45;
  u_xlat45 = max(x_1033, 0.001f);
  let x_1036 : f32 = u_xlat45;
  u_xlat45 = inverseSqrt(x_1036);
  let x_1038 : f32 = u_xlat45;
  let x_1040 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1038, x_1038, x_1038) * x_1040);
  let x_1042 : vec4<f32> = u_xlat5;
  let x_1044 : vec4<f32> = u_xlat2;
  u_xlat45 = dot(vec3<f32>(x_1042.x, x_1042.y, x_1042.z), vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1047 : vec4<f32> = u_xlat5;
  let x_1050 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1047.x, x_1047.y, x_1047.z), vec3<f32>(x_1050.x, x_1050.y, x_1050.z));
  let x_1055 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1055, 0.0f, 1.0f);
  let x_1059 : vec4<f32> = u_xlat5;
  let x_1061 : vec3<f32> = u_xlat1;
  u_xlat17 = dot(vec3<f32>(x_1059.x, x_1059.y, x_1059.z), x_1061);
  let x_1063 : f32 = u_xlat17;
  u_xlat17 = clamp(x_1063, 0.0f, 1.0f);
  let x_1066 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_1068 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1066.x, x_1066.y, x_1066.z), x_1068);
  let x_1072 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1072, 0.0f, 1.0f);
  let x_1077 : f32 = u_xlat1.x;
  let x_1079 : f32 = u_xlat1.x;
  u_xlat16 = (x_1077 * x_1079);
  let x_1081 : f32 = u_xlat16;
  let x_1083 : f32 = u_xlat48;
  u_xlat16 = dot(vec2<f32>(x_1081, x_1081), vec2<f32>(x_1083, x_1083));
  let x_1086 : f32 = u_xlat16;
  u_xlat16 = (x_1086 + -0.5f);
  let x_1091 : f32 = u_xlat2.x;
  u_xlat31 = (-(x_1091) + 1.0f);
  let x_1095 : f32 = u_xlat31;
  let x_1096 : f32 = u_xlat31;
  u_xlat32 = (x_1095 * x_1096);
  let x_1098 : f32 = u_xlat32;
  let x_1099 : f32 = u_xlat32;
  u_xlat32 = (x_1098 * x_1099);
  let x_1101 : f32 = u_xlat31;
  let x_1102 : f32 = u_xlat32;
  u_xlat31 = (x_1101 * x_1102);
  let x_1104 : f32 = u_xlat16;
  let x_1105 : f32 = u_xlat31;
  u_xlat31 = ((x_1104 * x_1105) + 1.0f);
  let x_1108 : f32 = u_xlat45;
  u_xlat32 = (-(abs(x_1108)) + 1.0f);
  let x_1112 : f32 = u_xlat32;
  let x_1113 : f32 = u_xlat32;
  u_xlat47 = (x_1112 * x_1113);
  let x_1115 : f32 = u_xlat47;
  let x_1116 : f32 = u_xlat47;
  u_xlat47 = (x_1115 * x_1116);
  let x_1118 : f32 = u_xlat32;
  let x_1119 : f32 = u_xlat47;
  u_xlat32 = (x_1118 * x_1119);
  let x_1121 : f32 = u_xlat16;
  let x_1122 : f32 = u_xlat32;
  u_xlat16 = ((x_1121 * x_1122) + 1.0f);
  let x_1125 : f32 = u_xlat16;
  let x_1126 : f32 = u_xlat31;
  u_xlat16 = (x_1125 * x_1126);
  let x_1129 : f32 = u_xlat2.x;
  let x_1130 : f32 = u_xlat16;
  u_xlat16 = (x_1129 * x_1130);
  let x_1132 : f32 = u_xlat48;
  let x_1133 : f32 = u_xlat48;
  u_xlat31 = (x_1132 * x_1133);
  let x_1135 : f32 = u_xlat31;
  u_xlat31 = max(x_1135, 0.002f);
  let x_1138 : f32 = u_xlat31;
  u_xlat47 = (-(x_1138) + 1.0f);
  let x_1141 : f32 = u_xlat45;
  let x_1143 : f32 = u_xlat47;
  let x_1145 : f32 = u_xlat31;
  u_xlat48 = ((abs(x_1141) * x_1143) + x_1145);
  let x_1148 : f32 = u_xlat2.x;
  let x_1149 : f32 = u_xlat47;
  let x_1151 : f32 = u_xlat31;
  u_xlat47 = ((x_1148 * x_1149) + x_1151);
  let x_1153 : f32 = u_xlat45;
  let x_1155 : f32 = u_xlat47;
  u_xlat45 = (abs(x_1153) * x_1155);
  let x_1158 : f32 = u_xlat2.x;
  let x_1159 : f32 = u_xlat48;
  let x_1161 : f32 = u_xlat45;
  u_xlat45 = ((x_1158 * x_1159) + x_1161);
  let x_1163 : f32 = u_xlat45;
  u_xlat45 = (x_1163 + 0.00001f);
  let x_1166 : f32 = u_xlat45;
  u_xlat45 = (0.5f / x_1166);
  let x_1168 : f32 = u_xlat31;
  let x_1169 : f32 = u_xlat31;
  u_xlat47 = (x_1168 * x_1169);
  let x_1171 : f32 = u_xlat17;
  let x_1172 : f32 = u_xlat47;
  let x_1174 : f32 = u_xlat17;
  u_xlat48 = ((x_1171 * x_1172) + -(x_1174));
  let x_1177 : f32 = u_xlat48;
  let x_1178 : f32 = u_xlat17;
  u_xlat17 = ((x_1177 * x_1178) + 1.0f);
  let x_1181 : f32 = u_xlat47;
  u_xlat47 = (x_1181 * 0.318309873f);
  let x_1184 : f32 = u_xlat17;
  let x_1185 : f32 = u_xlat17;
  u_xlat17 = ((x_1184 * x_1185) + 0.0000001f);
  let x_1189 : f32 = u_xlat47;
  let x_1190 : f32 = u_xlat17;
  u_xlat17 = (x_1189 / x_1190);
  let x_1192 : f32 = u_xlat45;
  let x_1193 : f32 = u_xlat17;
  u_xlat45 = (x_1192 * x_1193);
  let x_1196 : f32 = u_xlat2.x;
  let x_1197 : f32 = u_xlat45;
  u_xlat45 = (x_1196 * x_1197);
  let x_1199 : f32 = u_xlat45;
  u_xlat45 = (x_1199 * 3.141592741f);
  let x_1202 : f32 = u_xlat45;
  u_xlat45 = max(x_1202, 0.0f);
  let x_1204 : f32 = u_xlat31;
  let x_1205 : f32 = u_xlat31;
  u_xlat31 = ((x_1204 * x_1205) + 1.0f);
  let x_1208 : f32 = u_xlat31;
  u_xlat31 = (1.0f / x_1208);
  let x_1210 : vec3<f32> = u_xlat0;
  let x_1211 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1210, x_1211);
  let x_1216 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1216 == 0.0f));
  let x_1218 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1218);
  let x_1221 : f32 = u_xlat45;
  let x_1223 : f32 = u_xlat2.x;
  u_xlat45 = (x_1221 * x_1223);
  let x_1225 : f32 = u_xlat46;
  let x_1228 : f32 = x_37.x_Glossiness;
  u_xlat46 = (-(x_1225) + x_1228);
  let x_1230 : f32 = u_xlat46;
  u_xlat46 = (x_1230 + 1.0f);
  let x_1232 : f32 = u_xlat46;
  u_xlat46 = clamp(x_1232, 0.0f, 1.0f);
  let x_1234 : vec3<f32> = u_xlat7;
  let x_1235 : f32 = u_xlat16;
  let x_1238 : vec4<f32> = u_xlat8;
  let x_1240 : vec3<f32> = ((x_1234 * vec3<f32>(x_1235, x_1235, x_1235)) + vec3<f32>(x_1238.x, x_1238.y, x_1238.z));
  let x_1241 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1240.x, x_1240.y, x_1241.z, x_1240.z);
  let x_1243 : vec3<f32> = u_xlat7;
  let x_1244 : f32 = u_xlat45;
  u_xlat4 = (x_1243 * vec3<f32>(x_1244, x_1244, x_1244));
  let x_1248 : f32 = u_xlat1.x;
  u_xlat45 = (-(x_1248) + 1.0f);
  let x_1251 : f32 = u_xlat45;
  let x_1252 : f32 = u_xlat45;
  u_xlat1.x = (x_1251 * x_1252);
  let x_1256 : f32 = u_xlat1.x;
  let x_1258 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1256 * x_1258);
  let x_1261 : f32 = u_xlat45;
  let x_1263 : f32 = u_xlat1.x;
  u_xlat45 = (x_1261 * x_1263);
  let x_1265 : vec3<f32> = u_xlat0;
  let x_1268 : vec3<f32> = (-(x_1265) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1269 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1268.x, x_1268.y, x_1268.z, x_1269.w);
  let x_1271 : vec4<f32> = u_xlat5;
  let x_1273 : f32 = u_xlat45;
  let x_1276 : vec3<f32> = u_xlat0;
  let x_1277 : vec3<f32> = ((vec3<f32>(x_1271.x, x_1271.y, x_1271.z) * vec3<f32>(x_1273, x_1273, x_1273)) + x_1276);
  let x_1278 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1277.x, x_1277.y, x_1277.z, x_1278.w);
  let x_1280 : vec3<f32> = u_xlat4;
  let x_1281 : vec4<f32> = u_xlat5;
  u_xlat4 = (x_1280 * vec3<f32>(x_1281.x, x_1281.y, x_1281.z));
  let x_1284 : vec4<f32> = u_xlat3;
  let x_1286 : vec4<f32> = u_xlat2;
  let x_1289 : vec3<f32> = u_xlat4;
  let x_1290 : vec3<f32> = ((vec3<f32>(x_1284.x, x_1284.y, x_1284.z) * vec3<f32>(x_1286.x, x_1286.y, x_1286.w)) + x_1289);
  let x_1291 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1290.x, x_1290.y, x_1291.z, x_1290.z);
  let x_1293 : vec4<f32> = u_xlat10;
  let x_1295 : f32 = u_xlat31;
  u_xlat1 = (vec3<f32>(x_1293.x, x_1293.y, x_1293.z) * vec3<f32>(x_1295, x_1295, x_1295));
  let x_1298 : vec3<f32> = u_xlat0;
  let x_1300 : f32 = u_xlat46;
  let x_1302 : vec3<f32> = (-(x_1298) + vec3<f32>(x_1300, x_1300, x_1300));
  let x_1303 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1302.x, x_1302.y, x_1302.z, x_1303.w);
  let x_1305 : f32 = u_xlat32;
  let x_1307 : vec4<f32> = u_xlat3;
  let x_1310 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1305, x_1305, x_1305) * vec3<f32>(x_1307.x, x_1307.y, x_1307.z)) + x_1310);
  let x_1312 : vec3<f32> = u_xlat1;
  let x_1313 : vec3<f32> = u_xlat0;
  let x_1315 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1312 * x_1313) + vec3<f32>(x_1315.x, x_1315.y, x_1315.w));
  let x_1320 : vec3<f32> = u_xlat0;
  let x_1323 : vec4<f32> = x_37.x_AmbientColor;
  let x_1325 : vec3<f32> = (x_1320 + vec3<f32>(x_1323.x, x_1323.y, x_1323.z));
  let x_1326 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1325.x, x_1325.y, x_1325.z, x_1326.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

