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
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_Emission : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_39 : PGlobals;

var<private> u_xlat51 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat52 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(14) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(16) var sampler_MetallicSmooth : sampler;

var<private> u_xlat53 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(13) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat54 : f32;

@group(0) @binding(4) var x_AO : texture_2d<f32>;

@group(0) @binding(17) var sampler_AO : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(15) var sampler_Normal : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlatb53 : bool;

var<private> u_xlatb37 : bool;

var<private> u_xlat55 : f32;

@group(0) @binding(9) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(11) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(12) var sampler_ShadowMapTexture : sampler;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb14 : vec3<bool>;

@group(0) @binding(7) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(10) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb55 : bool;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb16 : vec3<bool>;

@group(0) @binding(8) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_347 : vec3<f32>;
  var x_555 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_742 : f32;
  var x_754 : f32;
  var x_766 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_922 : f32;
  var x_934 : f32;
  var x_946 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_16;
  let x_22 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_22;
  let x_27 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_27;
  let x_33 : vec4<f32> = u_xlat0;
  let x_44 : vec3<f32> = x_39.x_WorldSpaceCameraPos;
  u_xlat1 = (-(vec3<f32>(x_33.x, x_33.y, x_33.z)) + x_44);
  let x_47 : vec3<f32> = u_xlat1;
  let x_48 : vec3<f32> = u_xlat1;
  u_xlat51 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_50);
  let x_53 : f32 = u_xlat51;
  let x_55 : vec3<f32> = u_xlat1;
  let x_56 : vec3<f32> = (vec3<f32>(x_53, x_53, x_53) * x_55);
  let x_57 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_56.x, x_56.y, x_56.z, x_57.w);
  let x_72 : vec4<f32> = vs_TEXCOORD0;
  let x_74 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_72.x, x_72.y));
  u_xlat52 = x_74.x;
  let x_82 : vec4<f32> = vs_TEXCOORD0;
  let x_84 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_82.z, x_82.w));
  let x_85 : vec2<f32> = vec2<f32>(x_84.x, x_84.w);
  let x_86 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_85.x, x_85.y, x_86.z);
  let x_88 : f32 = u_xlat52;
  u_xlat52 = (-(x_88) + 1.0f);
  let x_92 : f32 = u_xlat52;
  let x_96 : f32 = x_39.x_Cutoff;
  u_xlat52 = (x_92 + -(x_96));
  let x_102 : f32 = x_39.x_EdgeSize;
  u_xlat53 = (1.0f / -(x_102));
  let x_105 : f32 = u_xlat52;
  let x_106 : f32 = u_xlat53;
  u_xlat52 = (x_105 * x_106);
  let x_108 : f32 = u_xlat52;
  u_xlat52 = clamp(x_108, 0.0f, 1.0f);
  let x_111 : f32 = u_xlat52;
  u_xlat53 = ((x_111 * -2.0f) + 3.0f);
  let x_116 : f32 = u_xlat52;
  let x_117 : f32 = u_xlat52;
  u_xlat52 = (x_116 * x_117);
  let x_120 : f32 = u_xlat52;
  let x_121 : f32 = u_xlat53;
  u_xlat37 = (x_120 * x_121);
  let x_129 : vec4<f32> = vs_TEXCOORD0;
  let x_131 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_129.z, x_129.w));
  u_xlat4 = x_131;
  let x_133 : vec4<f32> = u_xlat4;
  let x_138 : vec4<f32> = x_39.x_Color;
  u_xlat5 = (vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_138.x, x_138.y, x_138.z));
  let x_147 : vec4<f32> = vs_TEXCOORD0;
  let x_149 : vec4<f32> = textureSample(x_AO, sampler_AO, vec2<f32>(x_147.z, x_147.w));
  u_xlat54 = x_149.x;
  let x_152 : f32 = u_xlat37;
  let x_156 : vec4<f32> = x_39.x_EdgeColor1;
  u_xlat6 = (vec3<f32>(x_152, x_152, x_152) * vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat4;
  let x_163 : vec4<f32> = x_39.x_Emission;
  let x_166 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_159.w, x_159.w, x_159.w) * vec3<f32>(x_163.x, x_163.y, x_163.z)) + x_166);
  let x_174 : vec4<f32> = vs_TEXCOORD0;
  let x_176 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_174.z, x_174.w));
  let x_177 : vec3<f32> = vec3<f32>(x_176.x, x_176.y, x_176.w);
  let x_178 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_177.x, x_177.y, x_177.z, x_178.w);
  let x_181 : f32 = u_xlat7.z;
  let x_183 : f32 = u_xlat7.x;
  u_xlat7.x = (x_181 * x_183);
  let x_186 : vec4<f32> = u_xlat7;
  let x_193 : vec2<f32> = ((vec2<f32>(x_186.x, x_186.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_194 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_193.x, x_193.y, x_194.z, x_194.w);
  let x_196 : vec4<f32> = u_xlat7;
  let x_198 : vec4<f32> = u_xlat7;
  u_xlat37 = dot(vec2<f32>(x_196.x, x_196.y), vec2<f32>(x_198.x, x_198.y));
  let x_201 : f32 = u_xlat37;
  u_xlat37 = min(x_201, 1.0f);
  let x_203 : f32 = u_xlat37;
  u_xlat37 = (-(x_203) + 1.0f);
  let x_206 : f32 = u_xlat37;
  u_xlat7.z = sqrt(x_206);
  let x_210 : f32 = u_xlat3.x;
  let x_213 : f32 = x_39.x_Metallic;
  u_xlat3.x = (x_210 * x_213);
  let x_216 : f32 = u_xlat53;
  let x_218 : f32 = u_xlat52;
  let x_221 : f32 = x_39.x_Cutoff;
  u_xlat52 = ((-(x_216) * x_218) + -(x_221));
  let x_224 : f32 = u_xlat52;
  u_xlat52 = (x_224 + 1.0f);
  let x_229 : f32 = u_xlat52;
  u_xlatb52 = (x_229 < 0.0f);
  let x_231 : bool = u_xlatb52;
  if (((select(0i, 1i, x_231) * -1i) != 0i)) {
    discard;
  }
  let x_243 : f32 = x_39.unity_MatrixV[0i].z;
  u_xlat8.x = x_243;
  let x_246 : f32 = x_39.unity_MatrixV[1i].z;
  u_xlat8.y = x_246;
  let x_250 : f32 = x_39.unity_MatrixV[2i].z;
  u_xlat8.z = x_250;
  let x_252 : vec3<f32> = u_xlat1;
  let x_253 : vec4<f32> = u_xlat8;
  u_xlat52 = dot(x_252, vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat0;
  let x_260 : vec4<f32> = x_39.unity_ShadowFadeCenterAndType;
  let x_263 : vec3<f32> = (vec3<f32>(x_256.x, x_256.y, x_256.z) + -(vec3<f32>(x_260.x, x_260.y, x_260.z)));
  let x_264 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_263.x, x_263.y, x_263.z, x_264.w);
  let x_266 : vec4<f32> = u_xlat8;
  let x_268 : vec4<f32> = u_xlat8;
  u_xlat53 = dot(vec3<f32>(x_266.x, x_266.y, x_266.z), vec3<f32>(x_268.x, x_268.y, x_268.z));
  let x_271 : f32 = u_xlat53;
  u_xlat53 = sqrt(x_271);
  let x_273 : f32 = u_xlat52;
  let x_275 : f32 = u_xlat53;
  u_xlat53 = (-(x_273) + x_275);
  let x_278 : f32 = x_39.unity_ShadowFadeCenterAndType.w;
  let x_279 : f32 = u_xlat53;
  let x_281 : f32 = u_xlat52;
  u_xlat52 = ((x_278 * x_279) + x_281);
  let x_283 : f32 = u_xlat52;
  let x_286 : f32 = x_39.x_LightShadowData.z;
  let x_289 : f32 = x_39.x_LightShadowData.w;
  u_xlat52 = ((x_283 * x_286) + x_289);
  let x_291 : f32 = u_xlat52;
  u_xlat52 = clamp(x_291, 0.0f, 1.0f);
  let x_296 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb53 = (x_296 == 1.0f);
  let x_298 : bool = u_xlatb53;
  if (x_298) {
    let x_303 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb37 = (x_303 == 1.0f);
    let x_305 : vec4<f32> = vs_TEXCOORD2;
    let x_309 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_311 : vec3<f32> = (vec3<f32>(x_305.w, x_305.w, x_305.w) * vec3<f32>(x_309.x, x_309.y, x_309.z));
    let x_312 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_311.x, x_311.y, x_311.z, x_312.w);
    let x_315 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_317 : vec4<f32> = vs_TEXCOORD1;
    let x_320 : vec4<f32> = u_xlat8;
    let x_322 : vec3<f32> = ((vec3<f32>(x_315.x, x_315.y, x_315.z) * vec3<f32>(x_317.w, x_317.w, x_317.w)) + vec3<f32>(x_320.x, x_320.y, x_320.z));
    let x_323 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
    let x_326 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_328 : vec4<f32> = vs_TEXCOORD3;
    let x_331 : vec4<f32> = u_xlat8;
    let x_333 : vec3<f32> = ((vec3<f32>(x_326.x, x_326.y, x_326.z) * vec3<f32>(x_328.w, x_328.w, x_328.w)) + vec3<f32>(x_331.x, x_331.y, x_331.z));
    let x_334 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
    let x_336 : vec4<f32> = u_xlat8;
    let x_340 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_342 : vec3<f32> = (vec3<f32>(x_336.x, x_336.y, x_336.z) + vec3<f32>(x_340.x, x_340.y, x_340.z));
    let x_343 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
    let x_345 : bool = u_xlatb37;
    if (x_345) {
      let x_350 : vec4<f32> = u_xlat8;
      x_347 = vec3<f32>(x_350.x, x_350.y, x_350.z);
    } else {
      let x_353 : vec4<f32> = u_xlat0;
      x_347 = vec3<f32>(x_353.x, x_353.y, x_353.z);
    }
    let x_355 : vec3<f32> = x_347;
    let x_356 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
    let x_358 : vec4<f32> = u_xlat8;
    let x_362 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_364 : vec3<f32> = (vec3<f32>(x_358.x, x_358.y, x_358.z) + -(x_362));
    let x_365 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
    let x_367 : vec4<f32> = u_xlat8;
    let x_371 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_372 : vec3<f32> = (vec3<f32>(x_367.x, x_367.y, x_367.z) * x_371);
    let x_373 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_373.x, x_372.x, x_372.y, x_372.z);
    let x_376 : f32 = u_xlat8.y;
    u_xlat37 = ((x_376 * 0.25f) + 0.75f);
    let x_383 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat55 = ((x_383 * 0.5f) + 0.75f);
    let x_387 : f32 = u_xlat37;
    let x_388 : f32 = u_xlat55;
    u_xlat8.x = max(x_387, x_388);
    let x_399 : vec4<f32> = u_xlat8;
    let x_401 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_399.x, x_399.z, x_399.w));
    u_xlat8 = x_401;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_407 : vec4<f32> = u_xlat8;
  let x_410 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat37 = dot(x_407, x_410);
  let x_412 : f32 = u_xlat37;
  u_xlat37 = clamp(x_412, 0.0f, 1.0f);
  let x_415 : vec4<f32> = vs_TEXCOORD6;
  let x_417 : vec4<f32> = vs_TEXCOORD6;
  let x_419 : vec2<f32> = (vec2<f32>(x_415.x, x_415.y) / vec2<f32>(x_417.w, x_417.w));
  let x_420 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_419.x, x_419.y, x_420.z, x_420.w);
  let x_427 : vec4<f32> = u_xlat8;
  let x_429 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_427.x, x_427.y));
  u_xlat55 = x_429.x;
  let x_431 : f32 = u_xlat37;
  let x_432 : f32 = u_xlat55;
  u_xlat37 = (x_431 + -(x_432));
  let x_435 : f32 = u_xlat52;
  let x_436 : f32 = u_xlat37;
  let x_438 : f32 = u_xlat55;
  u_xlat52 = ((x_435 * x_436) + x_438);
  let x_440 : vec4<f32> = vs_TEXCOORD1;
  let x_442 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(vec3<f32>(x_440.x, x_440.y, x_440.z), vec3<f32>(x_442.x, x_442.y, x_442.z));
  let x_446 : vec4<f32> = vs_TEXCOORD2;
  let x_448 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(vec3<f32>(x_446.x, x_446.y, x_446.z), vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_452 : vec4<f32> = vs_TEXCOORD3;
  let x_454 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(vec3<f32>(x_452.x, x_452.y, x_452.z), vec3<f32>(x_454.x, x_454.y, x_454.z));
  let x_458 : vec4<f32> = u_xlat8;
  let x_460 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_458.x, x_458.y, x_458.z), vec3<f32>(x_460.x, x_460.y, x_460.z));
  let x_463 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_463);
  let x_465 : f32 = u_xlat37;
  let x_467 : vec4<f32> = u_xlat8;
  let x_469 : vec3<f32> = (vec3<f32>(x_465, x_465, x_465) * vec3<f32>(x_467.x, x_467.y, x_467.z));
  let x_470 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
  let x_473 : f32 = u_xlat3.y;
  let x_477 : f32 = x_39.x_Glossiness;
  u_xlat37 = ((-(x_473) * x_477) + 1.0f);
  let x_480 : vec4<f32> = u_xlat2;
  let x_483 : vec4<f32> = u_xlat7;
  u_xlat55 = dot(-(vec3<f32>(x_480.x, x_480.y, x_480.z)), vec3<f32>(x_483.x, x_483.y, x_483.z));
  let x_486 : f32 = u_xlat55;
  let x_487 : f32 = u_xlat55;
  u_xlat55 = (x_486 + x_487);
  let x_489 : vec4<f32> = u_xlat7;
  let x_491 : f32 = u_xlat55;
  let x_495 : vec4<f32> = u_xlat2;
  let x_498 : vec3<f32> = ((vec3<f32>(x_489.x, x_489.y, x_489.z) * -(vec3<f32>(x_491, x_491, x_491))) + -(vec3<f32>(x_495.x, x_495.y, x_495.z)));
  let x_499 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
  let x_502 : f32 = u_xlat52;
  let x_506 : vec4<f32> = x_39.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_502, x_502, x_502) * vec3<f32>(x_506.x, x_506.y, x_506.z));
  let x_509 : bool = u_xlatb53;
  if (x_509) {
    let x_513 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb52 = (x_513 == 1.0f);
    let x_516 : vec4<f32> = vs_TEXCOORD2;
    let x_519 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_521 : vec3<f32> = (vec3<f32>(x_516.w, x_516.w, x_516.w) * vec3<f32>(x_519.x, x_519.y, x_519.z));
    let x_522 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_521.x, x_521.y, x_521.z, x_522.w);
    let x_525 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_527 : vec4<f32> = vs_TEXCOORD1;
    let x_530 : vec4<f32> = u_xlat10;
    let x_532 : vec3<f32> = ((vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_527.w, x_527.w, x_527.w)) + vec3<f32>(x_530.x, x_530.y, x_530.z));
    let x_533 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
    let x_536 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_538 : vec4<f32> = vs_TEXCOORD3;
    let x_541 : vec4<f32> = u_xlat10;
    let x_543 : vec3<f32> = ((vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(x_538.w, x_538.w, x_538.w)) + vec3<f32>(x_541.x, x_541.y, x_541.z));
    let x_544 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_543.x, x_543.y, x_543.z, x_544.w);
    let x_546 : vec4<f32> = u_xlat10;
    let x_549 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_551 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) + vec3<f32>(x_549.x, x_549.y, x_549.z));
    let x_552 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
    let x_554 : bool = u_xlatb52;
    if (x_554) {
      let x_558 : vec4<f32> = u_xlat10;
      x_555 = vec3<f32>(x_558.x, x_558.y, x_558.z);
    } else {
      let x_561 : vec4<f32> = u_xlat0;
      x_555 = vec3<f32>(x_561.x, x_561.y, x_561.z);
    }
    let x_563 : vec3<f32> = x_555;
    let x_564 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_563.x, x_563.y, x_563.z, x_564.w);
    let x_566 : vec4<f32> = u_xlat10;
    let x_569 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_571 : vec3<f32> = (vec3<f32>(x_566.x, x_566.y, x_566.z) + -(x_569));
    let x_572 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_571.x, x_571.y, x_571.z, x_572.w);
    let x_574 : vec4<f32> = u_xlat10;
    let x_577 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_578 : vec3<f32> = (vec3<f32>(x_574.x, x_574.y, x_574.z) * x_577);
    let x_579 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_579.x, x_578.x, x_578.y, x_578.z);
    let x_582 : f32 = u_xlat10.y;
    u_xlat52 = (x_582 * 0.25f);
    let x_585 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat53 = (x_585 * 0.5f);
    let x_588 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat55 = ((-(x_588) * 0.5f) + 0.25f);
    let x_592 : f32 = u_xlat52;
    let x_593 : f32 = u_xlat53;
    u_xlat52 = max(x_592, x_593);
    let x_595 : f32 = u_xlat55;
    let x_596 : f32 = u_xlat52;
    u_xlat10.x = min(x_595, x_596);
    let x_603 : vec4<f32> = u_xlat10;
    let x_605 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_603.x, x_603.z, x_603.w));
    u_xlat11 = x_605;
    let x_607 : vec4<f32> = u_xlat10;
    let x_610 : vec3<f32> = (vec3<f32>(x_607.x, x_607.z, x_607.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_611 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_610.x, x_610.y, x_610.z, x_611.w);
    let x_616 : vec4<f32> = u_xlat12;
    let x_618 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_616.x, x_616.y, x_616.z));
    u_xlat12 = x_618;
    let x_619 : vec4<f32> = u_xlat10;
    let x_622 : vec3<f32> = (vec3<f32>(x_619.x, x_619.z, x_619.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_623 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_622.x, x_622.y, x_622.z, x_623.w);
    let x_628 : vec4<f32> = u_xlat10;
    let x_630 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_628.x, x_628.y, x_628.z));
    u_xlat10 = x_630;
    u_xlat7.w = 1.0f;
    let x_632 : vec4<f32> = u_xlat11;
    let x_633 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_632, x_633);
    let x_636 : vec4<f32> = u_xlat12;
    let x_637 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_636, x_637);
    let x_640 : vec4<f32> = u_xlat10;
    let x_641 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_640, x_641);
  } else {
    u_xlat7.w = 1.0f;
    let x_647 : vec4<f32> = x_39.unity_SHAr;
    let x_648 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_647, x_648);
    let x_652 : vec4<f32> = x_39.unity_SHAg;
    let x_653 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_652, x_653);
    let x_658 : vec4<f32> = x_39.unity_SHAb;
    let x_659 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_658, x_659);
  }
  let x_662 : vec4<f32> = u_xlat11;
  let x_666 : vec3<f32> = vs_TEXCOORD4;
  let x_667 : vec3<f32> = (vec3<f32>(x_662.x, x_662.y, x_662.z) + x_666);
  let x_668 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_670 : vec4<f32> = u_xlat10;
  let x_673 : vec3<f32> = max(vec3<f32>(x_670.x, x_670.y, x_670.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_674 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  let x_678 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb52 = (0.0f < x_678);
  let x_680 : bool = u_xlatb52;
  if (x_680) {
    let x_683 : vec4<f32> = u_xlat8;
    let x_685 : vec4<f32> = u_xlat8;
    u_xlat52 = dot(vec3<f32>(x_683.x, x_683.y, x_683.z), vec3<f32>(x_685.x, x_685.y, x_685.z));
    let x_688 : f32 = u_xlat52;
    u_xlat52 = inverseSqrt(x_688);
    let x_690 : f32 = u_xlat52;
    let x_692 : vec4<f32> = u_xlat8;
    let x_694 : vec3<f32> = (vec3<f32>(x_690, x_690, x_690) * vec3<f32>(x_692.x, x_692.y, x_692.z));
    let x_695 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
    let x_697 : vec4<f32> = u_xlat0;
    let x_702 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    let x_704 : vec3<f32> = (-(vec3<f32>(x_697.x, x_697.y, x_697.z)) + vec3<f32>(x_702.x, x_702.y, x_702.z));
    let x_705 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_704.x, x_704.y, x_704.z, x_705.w);
    let x_707 : vec4<f32> = u_xlat12;
    let x_709 : vec4<f32> = u_xlat11;
    let x_711 : vec3<f32> = (vec3<f32>(x_707.x, x_707.y, x_707.z) / vec3<f32>(x_709.x, x_709.y, x_709.z));
    let x_712 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_711.x, x_711.y, x_711.z, x_712.w);
    let x_715 : vec4<f32> = u_xlat0;
    let x_720 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat13 = (-(vec3<f32>(x_715.x, x_715.y, x_715.z)) + vec3<f32>(x_720.x, x_720.y, x_720.z));
    let x_723 : vec3<f32> = u_xlat13;
    let x_724 : vec4<f32> = u_xlat11;
    u_xlat13 = (x_723 / vec3<f32>(x_724.x, x_724.y, x_724.z));
    let x_731 : vec4<f32> = u_xlat11;
    let x_734 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_731.x, x_731.y, x_731.z, x_731.x));
    u_xlatb14 = vec3<bool>(x_734.x, x_734.y, x_734.z);
    let x_738 : vec4<f32> = u_xlat12;
    hlslcc_movcTemp = x_738;
    let x_740 : bool = u_xlatb14.x;
    if (x_740) {
      let x_746 : f32 = u_xlat12.x;
      x_742 = x_746;
    } else {
      let x_749 : f32 = u_xlat13.x;
      x_742 = x_749;
    }
    let x_750 : f32 = x_742;
    hlslcc_movcTemp.x = x_750;
    let x_753 : bool = u_xlatb14.y;
    if (x_753) {
      let x_758 : f32 = u_xlat12.y;
      x_754 = x_758;
    } else {
      let x_761 : f32 = u_xlat13.y;
      x_754 = x_761;
    }
    let x_762 : f32 = x_754;
    hlslcc_movcTemp.y = x_762;
    let x_765 : bool = u_xlatb14.z;
    if (x_765) {
      let x_770 : f32 = u_xlat12.z;
      x_766 = x_770;
    } else {
      let x_773 : f32 = u_xlat13.z;
      x_766 = x_773;
    }
    let x_774 : f32 = x_766;
    hlslcc_movcTemp.z = x_774;
    let x_776 : vec4<f32> = hlslcc_movcTemp;
    u_xlat12 = x_776;
    let x_778 : f32 = u_xlat12.y;
    let x_780 : f32 = u_xlat12.x;
    u_xlat52 = min(x_778, x_780);
    let x_783 : f32 = u_xlat12.z;
    let x_784 : f32 = u_xlat52;
    u_xlat52 = min(x_783, x_784);
    let x_786 : vec4<f32> = u_xlat0;
    let x_789 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    let x_792 : vec3<f32> = (vec3<f32>(x_786.x, x_786.y, x_786.z) + -(vec3<f32>(x_789.x, x_789.y, x_789.z)));
    let x_793 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
    let x_795 : vec4<f32> = u_xlat11;
    let x_797 : f32 = u_xlat52;
    let x_800 : vec4<f32> = u_xlat12;
    let x_802 : vec3<f32> = ((vec3<f32>(x_795.x, x_795.y, x_795.z) * vec3<f32>(x_797, x_797, x_797)) + vec3<f32>(x_800.x, x_800.y, x_800.z));
    let x_803 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_802.x, x_802.y, x_802.z, x_803.w);
  } else {
    let x_806 : vec4<f32> = u_xlat8;
    let x_807 : vec3<f32> = vec3<f32>(x_806.x, x_806.y, x_806.z);
    let x_808 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_807.x, x_807.y, x_807.z, x_808.w);
  }
  let x_810 : f32 = u_xlat37;
  u_xlat52 = ((-(x_810) * 0.699999988f) + 1.700000048f);
  let x_816 : f32 = u_xlat52;
  let x_817 : f32 = u_xlat37;
  u_xlat52 = (x_816 * x_817);
  let x_819 : f32 = u_xlat52;
  u_xlat52 = (x_819 * 6.0f);
  let x_830 : vec4<f32> = u_xlat11;
  let x_832 : f32 = u_xlat52;
  let x_833 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_830.x, x_830.y, x_830.z), x_832);
  u_xlat11 = x_833;
  let x_835 : f32 = u_xlat11.w;
  u_xlat53 = (x_835 + -1.0f);
  let x_839 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_840 : f32 = u_xlat53;
  u_xlat53 = ((x_839 * x_840) + 1.0f);
  let x_843 : f32 = u_xlat53;
  u_xlat53 = log2(x_843);
  let x_845 : f32 = u_xlat53;
  let x_847 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat53 = (x_845 * x_847);
  let x_849 : f32 = u_xlat53;
  u_xlat53 = exp2(x_849);
  let x_851 : f32 = u_xlat53;
  let x_853 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat53 = (x_851 * x_853);
  let x_855 : vec4<f32> = u_xlat11;
  let x_857 : f32 = u_xlat53;
  let x_859 : vec3<f32> = (vec3<f32>(x_855.x, x_855.y, x_855.z) * vec3<f32>(x_857, x_857, x_857));
  let x_860 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_859.x, x_859.y, x_859.z, x_860.w);
  let x_864 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb55 = (x_864 < 0.999989986f);
  let x_867 : bool = u_xlatb55;
  if (x_867) {
    let x_872 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb55 = (0.0f < x_872);
    let x_874 : bool = u_xlatb55;
    if (x_874) {
      let x_877 : vec4<f32> = u_xlat8;
      let x_879 : vec4<f32> = u_xlat8;
      u_xlat55 = dot(vec3<f32>(x_877.x, x_877.y, x_877.z), vec3<f32>(x_879.x, x_879.y, x_879.z));
      let x_882 : f32 = u_xlat55;
      u_xlat55 = inverseSqrt(x_882);
      let x_884 : f32 = u_xlat55;
      let x_886 : vec4<f32> = u_xlat8;
      u_xlat13 = (vec3<f32>(x_884, x_884, x_884) * vec3<f32>(x_886.x, x_886.y, x_886.z));
      let x_890 : vec4<f32> = u_xlat0;
      let x_895 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat14 = (-(vec3<f32>(x_890.x, x_890.y, x_890.z)) + vec3<f32>(x_895.x, x_895.y, x_895.z));
      let x_898 : vec3<f32> = u_xlat14;
      let x_899 : vec3<f32> = u_xlat13;
      u_xlat14 = (x_898 / x_899);
      let x_902 : vec4<f32> = u_xlat0;
      let x_907 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat15 = (-(vec3<f32>(x_902.x, x_902.y, x_902.z)) + vec3<f32>(x_907.x, x_907.y, x_907.z));
      let x_910 : vec3<f32> = u_xlat15;
      let x_911 : vec3<f32> = u_xlat13;
      u_xlat15 = (x_910 / x_911);
      let x_914 : vec3<f32> = u_xlat13;
      let x_916 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_914.x, x_914.y, x_914.z, x_914.x));
      u_xlatb16 = vec3<bool>(x_916.x, x_916.y, x_916.z);
      let x_919 : vec3<f32> = u_xlat14;
      hlslcc_movcTemp_1 = x_919;
      let x_921 : bool = u_xlatb16.x;
      if (x_921) {
        let x_926 : f32 = u_xlat14.x;
        x_922 = x_926;
      } else {
        let x_929 : f32 = u_xlat15.x;
        x_922 = x_929;
      }
      let x_930 : f32 = x_922;
      hlslcc_movcTemp_1.x = x_930;
      let x_933 : bool = u_xlatb16.y;
      if (x_933) {
        let x_938 : f32 = u_xlat14.y;
        x_934 = x_938;
      } else {
        let x_941 : f32 = u_xlat15.y;
        x_934 = x_941;
      }
      let x_942 : f32 = x_934;
      hlslcc_movcTemp_1.y = x_942;
      let x_945 : bool = u_xlatb16.z;
      if (x_945) {
        let x_950 : f32 = u_xlat14.z;
        x_946 = x_950;
      } else {
        let x_953 : f32 = u_xlat15.z;
        x_946 = x_953;
      }
      let x_954 : f32 = x_946;
      hlslcc_movcTemp_1.z = x_954;
      let x_956 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat14 = x_956;
      let x_958 : f32 = u_xlat14.y;
      let x_960 : f32 = u_xlat14.x;
      u_xlat55 = min(x_958, x_960);
      let x_963 : f32 = u_xlat14.z;
      let x_964 : f32 = u_xlat55;
      u_xlat55 = min(x_963, x_964);
      let x_966 : vec4<f32> = u_xlat0;
      let x_969 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_972 : vec3<f32> = (vec3<f32>(x_966.x, x_966.y, x_966.z) + -(vec3<f32>(x_969.x, x_969.y, x_969.z)));
      let x_973 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
      let x_975 : vec3<f32> = u_xlat13;
      let x_976 : f32 = u_xlat55;
      let x_979 : vec4<f32> = u_xlat0;
      let x_981 : vec3<f32> = ((x_975 * vec3<f32>(x_976, x_976, x_976)) + vec3<f32>(x_979.x, x_979.y, x_979.z));
      let x_982 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_981.x, x_981.y, x_981.z, x_982.w);
    }
    let x_988 : vec4<f32> = u_xlat8;
    let x_990 : f32 = u_xlat52;
    let x_991 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_988.x, x_988.y, x_988.z), x_990);
    u_xlat8 = x_991;
    let x_993 : f32 = u_xlat8.w;
    u_xlat0.x = (x_993 + -1.0f);
    let x_998 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_1000 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_998 * x_1000) + 1.0f);
    let x_1005 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_1005);
    let x_1009 : f32 = u_xlat0.x;
    let x_1011 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_1009 * x_1011);
    let x_1015 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_1015);
    let x_1019 : f32 = u_xlat0.x;
    let x_1021 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_1019 * x_1021);
    let x_1024 : vec4<f32> = u_xlat8;
    let x_1026 : vec4<f32> = u_xlat0;
    let x_1028 : vec3<f32> = (vec3<f32>(x_1024.x, x_1024.y, x_1024.z) * vec3<f32>(x_1026.x, x_1026.x, x_1026.x));
    let x_1029 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_1028.x, x_1028.y, x_1028.z, x_1029.w);
    let x_1031 : f32 = u_xlat53;
    let x_1033 : vec4<f32> = u_xlat11;
    let x_1036 : vec4<f32> = u_xlat0;
    let x_1039 : vec3<f32> = ((vec3<f32>(x_1031, x_1031, x_1031) * vec3<f32>(x_1033.x, x_1033.y, x_1033.z)) + -(vec3<f32>(x_1036.x, x_1036.y, x_1036.z)));
    let x_1040 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_1039.x, x_1039.y, x_1039.z, x_1040.w);
    let x_1043 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_1045 : vec4<f32> = u_xlat8;
    let x_1048 : vec4<f32> = u_xlat0;
    let x_1050 : vec3<f32> = ((vec3<f32>(x_1043.w, x_1043.w, x_1043.w) * vec3<f32>(x_1045.x, x_1045.y, x_1045.z)) + vec3<f32>(x_1048.x, x_1048.y, x_1048.z));
    let x_1051 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1050.x, x_1050.y, x_1050.z, x_1051.w);
  }
  let x_1053 : f32 = u_xlat54;
  let x_1055 : vec4<f32> = u_xlat12;
  let x_1057 : vec3<f32> = (vec3<f32>(x_1053, x_1053, x_1053) * vec3<f32>(x_1055.x, x_1055.y, x_1055.z));
  let x_1058 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1057.x, x_1057.y, x_1057.z, x_1058.w);
  let x_1060 : vec4<f32> = u_xlat4;
  let x_1063 : vec4<f32> = x_39.x_Color;
  let x_1068 : vec3<f32> = ((vec3<f32>(x_1060.x, x_1060.y, x_1060.z) * vec3<f32>(x_1063.x, x_1063.y, x_1063.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1069 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1068.x, x_1068.y, x_1068.z, x_1069.w);
  let x_1071 : vec3<f32> = u_xlat3;
  let x_1073 : vec4<f32> = u_xlat4;
  let x_1078 : vec3<f32> = ((vec3<f32>(x_1071.x, x_1071.x, x_1071.x) * vec3<f32>(x_1073.x, x_1073.y, x_1073.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1079 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1078.x, x_1078.y, x_1078.z, x_1079.w);
  let x_1082 : f32 = u_xlat3.x;
  u_xlat52 = ((-(x_1082) * 0.959999979f) + 0.959999979f);
  let x_1087 : f32 = u_xlat52;
  let x_1089 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_1087, x_1087, x_1087) * x_1089);
  let x_1091 : vec3<f32> = u_xlat1;
  let x_1092 : f32 = u_xlat51;
  let x_1096 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1091 * vec3<f32>(x_1092, x_1092, x_1092)) + vec3<f32>(x_1096.x, x_1096.y, x_1096.z));
  let x_1099 : vec3<f32> = u_xlat1;
  let x_1100 : vec3<f32> = u_xlat1;
  u_xlat51 = dot(x_1099, x_1100);
  let x_1102 : f32 = u_xlat51;
  u_xlat51 = max(x_1102, 0.001f);
  let x_1105 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_1105);
  let x_1107 : f32 = u_xlat51;
  let x_1109 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1107, x_1107, x_1107) * x_1109);
  let x_1111 : vec4<f32> = u_xlat7;
  let x_1113 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_1111.x, x_1111.y, x_1111.z), vec3<f32>(x_1113.x, x_1113.y, x_1113.z));
  let x_1116 : vec4<f32> = u_xlat7;
  let x_1119 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1116.x, x_1116.y, x_1116.z), vec3<f32>(x_1119.x, x_1119.y, x_1119.z));
  let x_1124 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1124, 0.0f, 1.0f);
  let x_1128 : vec4<f32> = u_xlat7;
  let x_1130 : vec3<f32> = u_xlat1;
  u_xlat19 = dot(vec3<f32>(x_1128.x, x_1128.y, x_1128.z), x_1130);
  let x_1132 : f32 = u_xlat19;
  u_xlat19 = clamp(x_1132, 0.0f, 1.0f);
  let x_1135 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_1137 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1135.x, x_1135.y, x_1135.z), x_1137);
  let x_1141 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1141, 0.0f, 1.0f);
  let x_1146 : f32 = u_xlat1.x;
  let x_1148 : f32 = u_xlat1.x;
  u_xlat18 = (x_1146 * x_1148);
  let x_1150 : f32 = u_xlat18;
  let x_1152 : f32 = u_xlat37;
  u_xlat18 = dot(vec2<f32>(x_1150, x_1150), vec2<f32>(x_1152, x_1152));
  let x_1155 : f32 = u_xlat18;
  u_xlat18 = (x_1155 + -0.5f);
  let x_1160 : f32 = u_xlat2.x;
  u_xlat35 = (-(x_1160) + 1.0f);
  let x_1164 : f32 = u_xlat35;
  let x_1165 : f32 = u_xlat35;
  u_xlat36 = (x_1164 * x_1165);
  let x_1167 : f32 = u_xlat36;
  let x_1168 : f32 = u_xlat36;
  u_xlat36 = (x_1167 * x_1168);
  let x_1170 : f32 = u_xlat35;
  let x_1171 : f32 = u_xlat36;
  u_xlat35 = (x_1170 * x_1171);
  let x_1173 : f32 = u_xlat18;
  let x_1174 : f32 = u_xlat35;
  u_xlat35 = ((x_1173 * x_1174) + 1.0f);
  let x_1177 : f32 = u_xlat51;
  u_xlat36 = (-(abs(x_1177)) + 1.0f);
  let x_1181 : f32 = u_xlat36;
  let x_1182 : f32 = u_xlat36;
  u_xlat53 = (x_1181 * x_1182);
  let x_1184 : f32 = u_xlat53;
  let x_1185 : f32 = u_xlat53;
  u_xlat53 = (x_1184 * x_1185);
  let x_1187 : f32 = u_xlat36;
  let x_1188 : f32 = u_xlat53;
  u_xlat36 = (x_1187 * x_1188);
  let x_1190 : f32 = u_xlat18;
  let x_1191 : f32 = u_xlat36;
  u_xlat18 = ((x_1190 * x_1191) + 1.0f);
  let x_1194 : f32 = u_xlat18;
  let x_1195 : f32 = u_xlat35;
  u_xlat18 = (x_1194 * x_1195);
  let x_1198 : f32 = u_xlat2.x;
  let x_1199 : f32 = u_xlat18;
  u_xlat18 = (x_1198 * x_1199);
  let x_1201 : f32 = u_xlat37;
  let x_1202 : f32 = u_xlat37;
  u_xlat35 = (x_1201 * x_1202);
  let x_1204 : f32 = u_xlat35;
  u_xlat35 = max(x_1204, 0.002f);
  let x_1207 : f32 = u_xlat35;
  u_xlat53 = (-(x_1207) + 1.0f);
  let x_1210 : f32 = u_xlat51;
  let x_1212 : f32 = u_xlat53;
  let x_1214 : f32 = u_xlat35;
  u_xlat3.x = ((abs(x_1210) * x_1212) + x_1214);
  let x_1218 : f32 = u_xlat2.x;
  let x_1219 : f32 = u_xlat53;
  let x_1221 : f32 = u_xlat35;
  u_xlat53 = ((x_1218 * x_1219) + x_1221);
  let x_1223 : f32 = u_xlat51;
  let x_1225 : f32 = u_xlat53;
  u_xlat51 = (abs(x_1223) * x_1225);
  let x_1228 : f32 = u_xlat2.x;
  let x_1230 : f32 = u_xlat3.x;
  let x_1232 : f32 = u_xlat51;
  u_xlat51 = ((x_1228 * x_1230) + x_1232);
  let x_1234 : f32 = u_xlat51;
  u_xlat51 = (x_1234 + 0.00001f);
  let x_1237 : f32 = u_xlat51;
  u_xlat51 = (0.5f / x_1237);
  let x_1239 : f32 = u_xlat35;
  let x_1240 : f32 = u_xlat35;
  u_xlat53 = (x_1239 * x_1240);
  let x_1242 : f32 = u_xlat19;
  let x_1243 : f32 = u_xlat53;
  let x_1245 : f32 = u_xlat19;
  u_xlat3.x = ((x_1242 * x_1243) + -(x_1245));
  let x_1250 : f32 = u_xlat3.x;
  let x_1251 : f32 = u_xlat19;
  u_xlat19 = ((x_1250 * x_1251) + 1.0f);
  let x_1254 : f32 = u_xlat53;
  u_xlat53 = (x_1254 * 0.318309873f);
  let x_1257 : f32 = u_xlat19;
  let x_1258 : f32 = u_xlat19;
  u_xlat19 = ((x_1257 * x_1258) + 0.0000001f);
  let x_1262 : f32 = u_xlat53;
  let x_1263 : f32 = u_xlat19;
  u_xlat19 = (x_1262 / x_1263);
  let x_1265 : f32 = u_xlat51;
  let x_1266 : f32 = u_xlat19;
  u_xlat51 = (x_1265 * x_1266);
  let x_1269 : f32 = u_xlat2.x;
  let x_1270 : f32 = u_xlat51;
  u_xlat51 = (x_1269 * x_1270);
  let x_1272 : f32 = u_xlat51;
  u_xlat51 = (x_1272 * 3.141592741f);
  let x_1275 : f32 = u_xlat51;
  u_xlat51 = max(x_1275, 0.0f);
  let x_1277 : f32 = u_xlat35;
  let x_1278 : f32 = u_xlat35;
  u_xlat35 = ((x_1277 * x_1278) + 1.0f);
  let x_1281 : f32 = u_xlat35;
  u_xlat1.z = (1.0f / x_1281);
  let x_1284 : vec4<f32> = u_xlat4;
  let x_1286 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1284.x, x_1284.y, x_1284.z), vec3<f32>(x_1286.x, x_1286.y, x_1286.z));
  let x_1292 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1292 == 0.0f));
  let x_1294 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1294);
  let x_1297 : f32 = u_xlat51;
  let x_1299 : f32 = u_xlat2.x;
  u_xlat51 = (x_1297 * x_1299);
  let x_1302 : f32 = u_xlat3.y;
  let x_1304 : f32 = x_39.x_Glossiness;
  let x_1306 : f32 = u_xlat52;
  u_xlat52 = ((x_1302 * x_1304) + -(x_1306));
  let x_1309 : f32 = u_xlat52;
  u_xlat52 = (x_1309 + 1.0f);
  let x_1311 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1311, 0.0f, 1.0f);
  let x_1313 : f32 = u_xlat18;
  let x_1315 : vec3<f32> = u_xlat9;
  let x_1316 : vec3<f32> = (vec3<f32>(x_1313, x_1313, x_1313) * x_1315);
  let x_1317 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1316.x, x_1316.y, x_1317.z, x_1316.z);
  let x_1319 : vec4<f32> = u_xlat10;
  let x_1321 : f32 = u_xlat54;
  let x_1324 : vec4<f32> = u_xlat2;
  let x_1326 : vec3<f32> = ((vec3<f32>(x_1319.x, x_1319.y, x_1319.z) * vec3<f32>(x_1321, x_1321, x_1321)) + vec3<f32>(x_1324.x, x_1324.y, x_1324.w));
  let x_1327 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1326.x, x_1326.y, x_1327.z, x_1326.z);
  let x_1329 : vec3<f32> = u_xlat9;
  let x_1330 : f32 = u_xlat51;
  u_xlat3 = (x_1329 * vec3<f32>(x_1330, x_1330, x_1330));
  let x_1334 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1334) + 1.0f);
  let x_1339 : f32 = u_xlat0.w;
  let x_1341 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1339 * x_1341);
  let x_1345 : f32 = u_xlat1.x;
  let x_1347 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1345 * x_1347);
  let x_1350 : vec4<f32> = u_xlat0;
  let x_1351 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1350 * vec4<f32>(x_1351.z, x_1351.z, x_1351.z, x_1351.x));
  let x_1354 : vec4<f32> = u_xlat4;
  let x_1358 : vec3<f32> = (-(vec3<f32>(x_1354.x, x_1354.y, x_1354.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1359 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1358.x, x_1358.y, x_1358.z, x_1359.w);
  let x_1361 : vec4<f32> = u_xlat7;
  let x_1363 : vec4<f32> = u_xlat0;
  let x_1366 : vec4<f32> = u_xlat4;
  let x_1368 : vec3<f32> = ((vec3<f32>(x_1361.x, x_1361.y, x_1361.z) * vec3<f32>(x_1363.w, x_1363.w, x_1363.w)) + vec3<f32>(x_1366.x, x_1366.y, x_1366.z));
  let x_1369 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1368.x, x_1368.y, x_1368.z, x_1369.w);
  let x_1371 : vec3<f32> = u_xlat3;
  let x_1372 : vec4<f32> = u_xlat7;
  u_xlat3 = (x_1371 * vec3<f32>(x_1372.x, x_1372.y, x_1372.z));
  let x_1375 : vec3<f32> = u_xlat5;
  let x_1376 : vec4<f32> = u_xlat2;
  let x_1379 : vec3<f32> = u_xlat3;
  let x_1380 : vec3<f32> = ((x_1375 * vec3<f32>(x_1376.x, x_1376.y, x_1376.w)) + x_1379);
  let x_1381 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1380.x, x_1380.y, x_1381.z, x_1380.z);
  let x_1383 : vec4<f32> = u_xlat4;
  let x_1386 : f32 = u_xlat52;
  u_xlat1 = (-(vec3<f32>(x_1383.x, x_1383.y, x_1383.z)) + vec3<f32>(x_1386, x_1386, x_1386));
  let x_1389 : f32 = u_xlat36;
  let x_1391 : vec3<f32> = u_xlat1;
  let x_1393 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_1389, x_1389, x_1389) * x_1391) + vec3<f32>(x_1393.x, x_1393.y, x_1393.z));
  let x_1396 : vec4<f32> = u_xlat0;
  let x_1398 : vec3<f32> = u_xlat1;
  let x_1400 : vec4<f32> = u_xlat2;
  let x_1402 : vec3<f32> = ((vec3<f32>(x_1396.x, x_1396.y, x_1396.z) * x_1398) + vec3<f32>(x_1400.x, x_1400.y, x_1400.w));
  let x_1403 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1402.x, x_1402.y, x_1402.z, x_1403.w);
  let x_1407 : vec3<f32> = u_xlat6;
  let x_1408 : vec4<f32> = u_xlat0;
  let x_1410 : vec3<f32> = (x_1407 + vec3<f32>(x_1408.x, x_1408.y, x_1408.z));
  let x_1411 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1410.x, x_1410.y, x_1410.z, x_1411.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

