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
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  x_OcclusionStrength : f32,
  @size(4)
  padding_3 : u32,
  x_EmissionColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec4<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat42 : f32;

var<private> u_xlatb42 : bool;

var<private> u_xlat43 : f32;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(13) var sampler_ShadowMapTexture : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> u_xlatb41 : bool;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> u_xlatb10 : vec3<bool>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat44 : f32;

var<private> u_xlatb45 : bool;

var<private> u_xlat45 : f32;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlat28 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat29 : f32;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_EmissionMap : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_265 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_475 : f32;
  var x_487 : f32;
  var x_499 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_654 : f32;
  var x_666 : f32;
  var x_678 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_32 : f32 = u_xlat0.w;
  let x_42 : f32 = x_37.x_Color.w;
  SV_Target0.w = (x_32 * x_42);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_37.x_Color;
  u_xlat1 = (vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = x_37.x_Color;
  let x_58 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.y, x_58.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : f32 = x_37.x_Metallic;
  let x_70 : f32 = x_37.x_Metallic;
  let x_72 : f32 = x_37.x_Metallic;
  let x_73 : vec3<f32> = vec3<f32>(x_68, x_70, x_72);
  let x_78 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : f32 = x_37.x_Metallic;
  u_xlat39 = ((-(x_88) * 0.959999979f) + 0.959999979f);
  let x_93 : f32 = u_xlat39;
  let x_95 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_93, x_93, x_93) * x_95);
  let x_99 : vec4<f32> = vs_TEXCOORD4;
  let x_101 : vec4<f32> = vs_TEXCOORD4;
  u_xlat40 = dot(vec3<f32>(x_99.x, x_99.y, x_99.z), vec3<f32>(x_101.x, x_101.y, x_101.z));
  let x_104 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_104);
  let x_107 : f32 = u_xlat40;
  let x_109 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_107, x_107, x_107) * vec3<f32>(x_109.x, x_109.y, x_109.z));
  let x_113 : vec4<f32> = vs_TEXCOORD1;
  let x_115 : vec4<f32> = vs_TEXCOORD1;
  u_xlat40 = dot(vec3<f32>(x_113.x, x_113.y, x_113.z), vec3<f32>(x_115.x, x_115.y, x_115.z));
  let x_118 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_118);
  let x_121 : f32 = u_xlat40;
  let x_123 : vec4<f32> = vs_TEXCOORD1;
  let x_125 : vec3<f32> = (vec3<f32>(x_121, x_121, x_121) * vec3<f32>(x_123.x, x_123.y, x_123.z));
  let x_126 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_125.x, x_125.y, x_125.z, x_126.w);
  let x_132 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_132;
  let x_137 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_137;
  let x_141 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_141;
  let x_145 : vec3<f32> = u_xlat4;
  let x_150 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  let x_151 : vec3<f32> = (-(x_145) + x_150);
  let x_152 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_151.x, x_151.y, x_151.z, x_152.w);
  let x_157 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat6.x = x_157;
  let x_161 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat6.y = x_161;
  let x_165 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat6.z = x_165;
  let x_168 : vec4<f32> = u_xlat5;
  let x_170 : vec3<f32> = u_xlat6;
  u_xlat41 = dot(vec3<f32>(x_168.x, x_168.y, x_168.z), x_170);
  let x_172 : vec3<f32> = u_xlat4;
  let x_175 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_178 : vec3<f32> = (x_172 + -(vec3<f32>(x_175.x, x_175.y, x_175.z)));
  let x_179 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_182 : vec4<f32> = u_xlat5;
  let x_184 : vec4<f32> = u_xlat5;
  u_xlat42 = dot(vec3<f32>(x_182.x, x_182.y, x_182.z), vec3<f32>(x_184.x, x_184.y, x_184.z));
  let x_187 : f32 = u_xlat42;
  u_xlat42 = sqrt(x_187);
  let x_189 : f32 = u_xlat41;
  let x_191 : f32 = u_xlat42;
  u_xlat42 = (-(x_189) + x_191);
  let x_194 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_195 : f32 = u_xlat42;
  let x_197 : f32 = u_xlat41;
  u_xlat41 = ((x_194 * x_195) + x_197);
  let x_199 : f32 = u_xlat41;
  let x_202 : f32 = x_37.x_LightShadowData.z;
  let x_205 : f32 = x_37.x_LightShadowData.w;
  u_xlat41 = ((x_199 * x_202) + x_205);
  let x_207 : f32 = u_xlat41;
  u_xlat41 = clamp(x_207, 0.0f, 1.0f);
  let x_216 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb42 = (x_216 == 1.0f);
  let x_218 : bool = u_xlatb42;
  if (x_218) {
    let x_222 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb42 = (x_222 == 1.0f);
    let x_224 : vec4<f32> = vs_TEXCOORD3;
    let x_228 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_230 : vec3<f32> = (vec3<f32>(x_224.w, x_224.w, x_224.w) * vec3<f32>(x_228.x, x_228.y, x_228.z));
    let x_231 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_230.x, x_230.y, x_230.z, x_231.w);
    let x_234 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_236 : vec4<f32> = vs_TEXCOORD2;
    let x_239 : vec4<f32> = u_xlat5;
    let x_241 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.w, x_236.w, x_236.w)) + vec3<f32>(x_239.x, x_239.y, x_239.z));
    let x_242 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
    let x_245 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_247 : vec4<f32> = vs_TEXCOORD4;
    let x_250 : vec4<f32> = u_xlat5;
    let x_252 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.w, x_247.w, x_247.w)) + vec3<f32>(x_250.x, x_250.y, x_250.z));
    let x_253 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
    let x_255 : vec4<f32> = u_xlat5;
    let x_258 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_260 : vec3<f32> = (vec3<f32>(x_255.x, x_255.y, x_255.z) + vec3<f32>(x_258.x, x_258.y, x_258.z));
    let x_261 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
    let x_263 : bool = u_xlatb42;
    if (x_263) {
      let x_268 : vec4<f32> = u_xlat5;
      x_265 = vec3<f32>(x_268.x, x_268.y, x_268.z);
    } else {
      let x_271 : vec3<f32> = u_xlat4;
      x_265 = x_271;
    }
    let x_272 : vec3<f32> = x_265;
    let x_273 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_272.x, x_272.y, x_272.z, x_273.w);
    let x_275 : vec4<f32> = u_xlat5;
    let x_279 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_281 : vec3<f32> = (vec3<f32>(x_275.x, x_275.y, x_275.z) + -(x_279));
    let x_282 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat5;
    let x_288 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) * x_288);
    let x_290 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_290.x, x_289.x, x_289.y, x_289.z);
    let x_293 : f32 = u_xlat5.y;
    u_xlat42 = ((x_293 * 0.25f) + 0.75f);
    let x_300 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat43 = ((x_300 * 0.5f) + 0.75f);
    let x_304 : f32 = u_xlat42;
    let x_305 : f32 = u_xlat43;
    u_xlat5.x = max(x_304, x_305);
    let x_316 : vec4<f32> = u_xlat5;
    let x_318 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_316.x, x_316.z, x_316.w));
    u_xlat5 = x_318;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_324 : vec4<f32> = u_xlat5;
  let x_326 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat42 = dot(x_324, x_326);
  let x_328 : f32 = u_xlat42;
  u_xlat42 = clamp(x_328, 0.0f, 1.0f);
  let x_331 : vec4<f32> = vs_TEXCOORD7;
  let x_333 : vec4<f32> = vs_TEXCOORD7;
  let x_335 : vec2<f32> = (vec2<f32>(x_331.x, x_331.y) / vec2<f32>(x_333.w, x_333.w));
  let x_336 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_335.x, x_335.y, x_336.z, x_336.w);
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_343.x, x_343.y));
  u_xlat43 = x_345.x;
  let x_347 : f32 = u_xlat42;
  let x_348 : f32 = u_xlat43;
  u_xlat42 = (x_347 + -(x_348));
  let x_351 : f32 = u_xlat41;
  let x_352 : f32 = u_xlat42;
  let x_354 : f32 = u_xlat43;
  u_xlat41 = ((x_351 * x_352) + x_354);
  let x_361 : vec4<f32> = vs_TEXCOORD0;
  let x_363 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_361.x, x_361.y));
  u_xlat42 = x_363.y;
  let x_367 : f32 = x_37.x_OcclusionStrength;
  u_xlat43 = (-(x_367) + 1.0f);
  let x_370 : f32 = u_xlat42;
  let x_372 : f32 = x_37.x_OcclusionStrength;
  let x_374 : f32 = u_xlat43;
  u_xlat42 = ((x_370 * x_372) + x_374);
  let x_378 : f32 = x_37.x_Glossiness;
  u_xlat43 = (-(x_378) + 1.0f);
  let x_381 : vec4<f32> = u_xlat3;
  let x_383 : vec3<f32> = u_xlat2;
  u_xlat5.x = dot(vec3<f32>(x_381.x, x_381.y, x_381.z), x_383);
  let x_387 : f32 = u_xlat5.x;
  let x_389 : f32 = u_xlat5.x;
  u_xlat5.x = (x_387 + x_389);
  let x_392 : vec3<f32> = u_xlat2;
  let x_393 : vec4<f32> = u_xlat5;
  let x_397 : vec4<f32> = u_xlat3;
  let x_399 : vec3<f32> = ((x_392 * -(vec3<f32>(x_393.x, x_393.x, x_393.x))) + vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_399.x, x_399.y, x_399.z, x_400.w);
  let x_402 : f32 = u_xlat41;
  let x_406 : vec4<f32> = x_37.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_402, x_402, x_402) * vec3<f32>(x_406.x, x_406.y, x_406.z));
  let x_412 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb41 = (0.0f < x_412);
  let x_414 : bool = u_xlatb41;
  if (x_414) {
    let x_417 : vec4<f32> = u_xlat5;
    let x_419 : vec4<f32> = u_xlat5;
    u_xlat41 = dot(vec3<f32>(x_417.x, x_417.y, x_417.z), vec3<f32>(x_419.x, x_419.y, x_419.z));
    let x_422 : f32 = u_xlat41;
    u_xlat41 = inverseSqrt(x_422);
    let x_425 : f32 = u_xlat41;
    let x_427 : vec4<f32> = u_xlat5;
    let x_429 : vec3<f32> = (vec3<f32>(x_425, x_425, x_425) * vec3<f32>(x_427.x, x_427.y, x_427.z));
    let x_430 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
    let x_433 : vec3<f32> = u_xlat4;
    let x_437 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    u_xlat8 = (-(x_433) + vec3<f32>(x_437.x, x_437.y, x_437.z));
    let x_440 : vec3<f32> = u_xlat8;
    let x_441 : vec4<f32> = u_xlat7;
    u_xlat8 = (x_440 / vec3<f32>(x_441.x, x_441.y, x_441.z));
    let x_445 : vec3<f32> = u_xlat4;
    let x_449 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_451 : vec3<f32> = (-(x_445) + vec3<f32>(x_449.x, x_449.y, x_449.z));
    let x_452 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
    let x_454 : vec4<f32> = u_xlat9;
    let x_456 : vec4<f32> = u_xlat7;
    let x_458 : vec3<f32> = (vec3<f32>(x_454.x, x_454.y, x_454.z) / vec3<f32>(x_456.x, x_456.y, x_456.z));
    let x_459 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_458.x, x_458.y, x_458.z, x_459.w);
    let x_465 : vec4<f32> = u_xlat7;
    let x_468 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_465.x, x_465.y, x_465.z, x_465.x));
    u_xlatb10 = vec3<bool>(x_468.x, x_468.y, x_468.z);
    let x_471 : vec3<f32> = u_xlat8;
    hlslcc_movcTemp = x_471;
    let x_473 : bool = u_xlatb10.x;
    if (x_473) {
      let x_479 : f32 = u_xlat8.x;
      x_475 = x_479;
    } else {
      let x_482 : f32 = u_xlat9.x;
      x_475 = x_482;
    }
    let x_483 : f32 = x_475;
    hlslcc_movcTemp.x = x_483;
    let x_486 : bool = u_xlatb10.y;
    if (x_486) {
      let x_491 : f32 = u_xlat8.y;
      x_487 = x_491;
    } else {
      let x_494 : f32 = u_xlat9.y;
      x_487 = x_494;
    }
    let x_495 : f32 = x_487;
    hlslcc_movcTemp.y = x_495;
    let x_498 : bool = u_xlatb10.z;
    if (x_498) {
      let x_503 : f32 = u_xlat8.z;
      x_499 = x_503;
    } else {
      let x_506 : f32 = u_xlat9.z;
      x_499 = x_506;
    }
    let x_507 : f32 = x_499;
    hlslcc_movcTemp.z = x_507;
    let x_509 : vec3<f32> = hlslcc_movcTemp;
    u_xlat8 = x_509;
    let x_511 : f32 = u_xlat8.y;
    let x_513 : f32 = u_xlat8.x;
    u_xlat41 = min(x_511, x_513);
    let x_516 : f32 = u_xlat8.z;
    let x_517 : f32 = u_xlat41;
    u_xlat41 = min(x_516, x_517);
    let x_519 : vec3<f32> = u_xlat4;
    let x_521 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    u_xlat8 = (x_519 + -(vec3<f32>(x_521.x, x_521.y, x_521.z)));
    let x_525 : vec4<f32> = u_xlat7;
    let x_527 : f32 = u_xlat41;
    let x_530 : vec3<f32> = u_xlat8;
    let x_531 : vec3<f32> = ((vec3<f32>(x_525.x, x_525.y, x_525.z) * vec3<f32>(x_527, x_527, x_527)) + x_530);
    let x_532 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_531.x, x_531.y, x_531.z, x_532.w);
  } else {
    let x_535 : vec4<f32> = u_xlat5;
    let x_536 : vec3<f32> = vec3<f32>(x_535.x, x_535.y, x_535.z);
    let x_537 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_536.x, x_536.y, x_536.z, x_537.w);
  }
  let x_539 : f32 = u_xlat43;
  u_xlat41 = ((-(x_539) * 0.699999988f) + 1.700000048f);
  let x_545 : f32 = u_xlat41;
  let x_546 : f32 = u_xlat43;
  u_xlat41 = (x_545 * x_546);
  let x_548 : f32 = u_xlat41;
  u_xlat41 = (x_548 * 6.0f);
  let x_559 : vec4<f32> = u_xlat7;
  let x_561 : f32 = u_xlat41;
  let x_562 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_559.x, x_559.y, x_559.z), x_561);
  u_xlat7 = x_562;
  let x_565 : f32 = u_xlat7.w;
  u_xlat44 = (x_565 + -1.0f);
  let x_570 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_571 : f32 = u_xlat44;
  u_xlat44 = ((x_570 * x_571) + 1.0f);
  let x_574 : f32 = u_xlat44;
  u_xlat44 = log2(x_574);
  let x_576 : f32 = u_xlat44;
  let x_578 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat44 = (x_576 * x_578);
  let x_580 : f32 = u_xlat44;
  u_xlat44 = exp2(x_580);
  let x_582 : f32 = u_xlat44;
  let x_584 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat44 = (x_582 * x_584);
  let x_586 : vec4<f32> = u_xlat7;
  let x_588 : f32 = u_xlat44;
  u_xlat8 = (vec3<f32>(x_586.x, x_586.y, x_586.z) * vec3<f32>(x_588, x_588, x_588));
  let x_593 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb45 = (x_593 < 0.999989986f);
  let x_596 : bool = u_xlatb45;
  if (x_596) {
    let x_601 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb45 = (0.0f < x_601);
    let x_603 : bool = u_xlatb45;
    if (x_603) {
      let x_607 : vec4<f32> = u_xlat5;
      let x_609 : vec4<f32> = u_xlat5;
      u_xlat45 = dot(vec3<f32>(x_607.x, x_607.y, x_607.z), vec3<f32>(x_609.x, x_609.y, x_609.z));
      let x_612 : f32 = u_xlat45;
      u_xlat45 = inverseSqrt(x_612);
      let x_614 : vec4<f32> = u_xlat5;
      let x_616 : f32 = u_xlat45;
      let x_618 : vec3<f32> = (vec3<f32>(x_614.x, x_614.y, x_614.z) * vec3<f32>(x_616, x_616, x_616));
      let x_619 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
      let x_622 : vec3<f32> = u_xlat4;
      let x_626 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_622) + vec3<f32>(x_626.x, x_626.y, x_626.z));
      let x_629 : vec3<f32> = u_xlat10;
      let x_630 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_629 / vec3<f32>(x_630.x, x_630.y, x_630.z));
      let x_634 : vec3<f32> = u_xlat4;
      let x_638 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_634) + vec3<f32>(x_638.x, x_638.y, x_638.z));
      let x_641 : vec3<f32> = u_xlat11;
      let x_642 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_641 / vec3<f32>(x_642.x, x_642.y, x_642.z));
      let x_646 : vec4<f32> = u_xlat9;
      let x_648 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_646.x, x_646.y, x_646.z, x_646.x));
      u_xlatb12 = vec3<bool>(x_648.x, x_648.y, x_648.z);
      let x_651 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_651;
      let x_653 : bool = u_xlatb12.x;
      if (x_653) {
        let x_658 : f32 = u_xlat10.x;
        x_654 = x_658;
      } else {
        let x_661 : f32 = u_xlat11.x;
        x_654 = x_661;
      }
      let x_662 : f32 = x_654;
      hlslcc_movcTemp_1.x = x_662;
      let x_665 : bool = u_xlatb12.y;
      if (x_665) {
        let x_670 : f32 = u_xlat10.y;
        x_666 = x_670;
      } else {
        let x_673 : f32 = u_xlat11.y;
        x_666 = x_673;
      }
      let x_674 : f32 = x_666;
      hlslcc_movcTemp_1.y = x_674;
      let x_677 : bool = u_xlatb12.z;
      if (x_677) {
        let x_682 : f32 = u_xlat10.z;
        x_678 = x_682;
      } else {
        let x_685 : f32 = u_xlat11.z;
        x_678 = x_685;
      }
      let x_686 : f32 = x_678;
      hlslcc_movcTemp_1.z = x_686;
      let x_688 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_688;
      let x_690 : f32 = u_xlat10.y;
      let x_692 : f32 = u_xlat10.x;
      u_xlat45 = min(x_690, x_692);
      let x_695 : f32 = u_xlat10.z;
      let x_696 : f32 = u_xlat45;
      u_xlat45 = min(x_695, x_696);
      let x_698 : vec3<f32> = u_xlat4;
      let x_700 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat4 = (x_698 + -(vec3<f32>(x_700.x, x_700.y, x_700.z)));
      let x_704 : vec4<f32> = u_xlat9;
      let x_706 : f32 = u_xlat45;
      let x_709 : vec3<f32> = u_xlat4;
      let x_710 : vec3<f32> = ((vec3<f32>(x_704.x, x_704.y, x_704.z) * vec3<f32>(x_706, x_706, x_706)) + x_709);
      let x_711 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
    }
    let x_717 : vec4<f32> = u_xlat5;
    let x_719 : f32 = u_xlat41;
    let x_720 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_717.x, x_717.y, x_717.z), x_719);
    u_xlat9 = x_720;
    let x_722 : f32 = u_xlat9.w;
    u_xlat41 = (x_722 + -1.0f);
    let x_726 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_727 : f32 = u_xlat41;
    u_xlat41 = ((x_726 * x_727) + 1.0f);
    let x_730 : f32 = u_xlat41;
    u_xlat41 = log2(x_730);
    let x_732 : f32 = u_xlat41;
    let x_734 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat41 = (x_732 * x_734);
    let x_736 : f32 = u_xlat41;
    u_xlat41 = exp2(x_736);
    let x_738 : f32 = u_xlat41;
    let x_740 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat41 = (x_738 * x_740);
    let x_742 : vec4<f32> = u_xlat9;
    let x_744 : f32 = u_xlat41;
    u_xlat4 = (vec3<f32>(x_742.x, x_742.y, x_742.z) * vec3<f32>(x_744, x_744, x_744));
    let x_747 : f32 = u_xlat44;
    let x_749 : vec4<f32> = u_xlat7;
    let x_752 : vec3<f32> = u_xlat4;
    let x_754 : vec3<f32> = ((vec3<f32>(x_747, x_747, x_747) * vec3<f32>(x_749.x, x_749.y, x_749.z)) + -(x_752));
    let x_755 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
    let x_758 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_760 : vec4<f32> = u_xlat5;
    let x_763 : vec3<f32> = u_xlat4;
    u_xlat8 = ((vec3<f32>(x_758.w, x_758.w, x_758.w) * vec3<f32>(x_760.x, x_760.y, x_760.z)) + x_763);
  }
  let x_765 : f32 = u_xlat42;
  let x_767 : vec3<f32> = u_xlat8;
  u_xlat4 = (vec3<f32>(x_765, x_765, x_765) * x_767);
  let x_769 : vec4<f32> = vs_TEXCOORD1;
  let x_772 : f32 = u_xlat40;
  let x_776 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_778 : vec3<f32> = ((-(vec3<f32>(x_769.x, x_769.y, x_769.z)) * vec3<f32>(x_772, x_772, x_772)) + vec3<f32>(x_776.x, x_776.y, x_776.z));
  let x_779 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_778.x, x_778.y, x_778.z, x_779.w);
  let x_781 : vec4<f32> = u_xlat5;
  let x_783 : vec4<f32> = u_xlat5;
  u_xlat40 = dot(vec3<f32>(x_781.x, x_781.y, x_781.z), vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : f32 = u_xlat40;
  u_xlat40 = max(x_786, 0.001f);
  let x_789 : f32 = u_xlat40;
  u_xlat40 = inverseSqrt(x_789);
  let x_791 : f32 = u_xlat40;
  let x_793 : vec4<f32> = u_xlat5;
  let x_795 : vec3<f32> = (vec3<f32>(x_791, x_791, x_791) * vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_796 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_795.x, x_795.y, x_795.z, x_796.w);
  let x_798 : vec3<f32> = u_xlat2;
  let x_799 : vec4<f32> = u_xlat3;
  u_xlat40 = dot(x_798, -(vec3<f32>(x_799.x, x_799.y, x_799.z)));
  let x_803 : vec3<f32> = u_xlat2;
  let x_805 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat41 = dot(x_803, vec3<f32>(x_805.x, x_805.y, x_805.z));
  let x_808 : f32 = u_xlat41;
  u_xlat41 = clamp(x_808, 0.0f, 1.0f);
  let x_810 : vec3<f32> = u_xlat2;
  let x_811 : vec4<f32> = u_xlat5;
  u_xlat2.x = dot(x_810, vec3<f32>(x_811.x, x_811.y, x_811.z));
  let x_816 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_816, 0.0f, 1.0f);
  let x_821 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_823 : vec4<f32> = u_xlat5;
  u_xlat15.x = dot(vec3<f32>(x_821.x, x_821.y, x_821.z), vec3<f32>(x_823.x, x_823.y, x_823.z));
  let x_828 : f32 = u_xlat15.x;
  u_xlat15.x = clamp(x_828, 0.0f, 1.0f);
  let x_833 : f32 = u_xlat15.x;
  let x_835 : f32 = u_xlat15.x;
  u_xlat28 = (x_833 * x_835);
  let x_837 : f32 = u_xlat28;
  let x_839 : f32 = u_xlat43;
  u_xlat28 = dot(vec2<f32>(x_837, x_837), vec2<f32>(x_839, x_839));
  let x_842 : f32 = u_xlat28;
  u_xlat28 = (x_842 + -0.5f);
  let x_845 : f32 = u_xlat41;
  u_xlat3.x = (-(x_845) + 1.0f);
  let x_851 : f32 = u_xlat3.x;
  let x_853 : f32 = u_xlat3.x;
  u_xlat16 = (x_851 * x_853);
  let x_855 : f32 = u_xlat16;
  let x_856 : f32 = u_xlat16;
  u_xlat16 = (x_855 * x_856);
  let x_859 : f32 = u_xlat3.x;
  let x_860 : f32 = u_xlat16;
  u_xlat3.x = (x_859 * x_860);
  let x_863 : f32 = u_xlat28;
  let x_865 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_863 * x_865) + 1.0f);
  let x_869 : f32 = u_xlat40;
  u_xlat16 = (-(abs(x_869)) + 1.0f);
  let x_874 : f32 = u_xlat16;
  let x_875 : f32 = u_xlat16;
  u_xlat29 = (x_874 * x_875);
  let x_877 : f32 = u_xlat29;
  let x_878 : f32 = u_xlat29;
  u_xlat29 = (x_877 * x_878);
  let x_880 : f32 = u_xlat16;
  let x_881 : f32 = u_xlat29;
  u_xlat16 = (x_880 * x_881);
  let x_883 : f32 = u_xlat28;
  let x_884 : f32 = u_xlat16;
  u_xlat28 = ((x_883 * x_884) + 1.0f);
  let x_887 : f32 = u_xlat28;
  let x_889 : f32 = u_xlat3.x;
  u_xlat28 = (x_887 * x_889);
  let x_891 : f32 = u_xlat41;
  let x_892 : f32 = u_xlat28;
  u_xlat28 = (x_891 * x_892);
  let x_894 : f32 = u_xlat43;
  let x_895 : f32 = u_xlat43;
  u_xlat3.x = (x_894 * x_895);
  let x_899 : f32 = u_xlat3.x;
  u_xlat3.x = max(x_899, 0.002f);
  let x_904 : f32 = u_xlat3.x;
  u_xlat29 = (-(x_904) + 1.0f);
  let x_907 : f32 = u_xlat40;
  let x_909 : f32 = u_xlat29;
  let x_912 : f32 = u_xlat3.x;
  u_xlat42 = ((abs(x_907) * x_909) + x_912);
  let x_914 : f32 = u_xlat41;
  let x_915 : f32 = u_xlat29;
  let x_918 : f32 = u_xlat3.x;
  u_xlat29 = ((x_914 * x_915) + x_918);
  let x_920 : f32 = u_xlat40;
  let x_922 : f32 = u_xlat29;
  u_xlat40 = (abs(x_920) * x_922);
  let x_924 : f32 = u_xlat41;
  let x_925 : f32 = u_xlat42;
  let x_927 : f32 = u_xlat40;
  u_xlat40 = ((x_924 * x_925) + x_927);
  let x_929 : f32 = u_xlat40;
  u_xlat40 = (x_929 + 0.00001f);
  let x_932 : f32 = u_xlat40;
  u_xlat40 = (0.5f / x_932);
  let x_935 : f32 = u_xlat3.x;
  let x_937 : f32 = u_xlat3.x;
  u_xlat29 = (x_935 * x_937);
  let x_940 : f32 = u_xlat2.x;
  let x_941 : f32 = u_xlat29;
  let x_944 : f32 = u_xlat2.x;
  u_xlat42 = ((x_940 * x_941) + -(x_944));
  let x_947 : f32 = u_xlat42;
  let x_949 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_947 * x_949) + 1.0f);
  let x_953 : f32 = u_xlat29;
  u_xlat29 = (x_953 * 0.318309873f);
  let x_957 : f32 = u_xlat2.x;
  let x_959 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_957 * x_959) + 0.0000001f);
  let x_964 : f32 = u_xlat29;
  let x_966 : f32 = u_xlat2.x;
  u_xlat2.x = (x_964 / x_966);
  let x_969 : f32 = u_xlat40;
  let x_971 : f32 = u_xlat2.x;
  u_xlat40 = (x_969 * x_971);
  let x_973 : f32 = u_xlat41;
  let x_974 : f32 = u_xlat40;
  u_xlat40 = (x_973 * x_974);
  let x_976 : f32 = u_xlat40;
  u_xlat40 = (x_976 * 3.141592741f);
  let x_979 : f32 = u_xlat40;
  u_xlat40 = max(x_979, 0.0f);
  let x_982 : f32 = u_xlat3.x;
  let x_984 : f32 = u_xlat3.x;
  u_xlat2.x = ((x_982 * x_984) + 1.0f);
  let x_989 : f32 = u_xlat2.x;
  u_xlat2.x = (1.0f / x_989);
  let x_992 : vec4<f32> = u_xlat0;
  let x_994 : vec4<f32> = u_xlat0;
  u_xlat41 = dot(vec3<f32>(x_992.x, x_992.y, x_992.z), vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : f32 = u_xlat41;
  u_xlatb41 = !((x_997 == 0.0f));
  let x_999 : bool = u_xlatb41;
  u_xlat41 = select(0.0f, 1.0f, x_999);
  let x_1001 : f32 = u_xlat40;
  let x_1002 : f32 = u_xlat41;
  u_xlat40 = (x_1001 * x_1002);
  let x_1004 : f32 = u_xlat39;
  let x_1007 : f32 = x_37.x_Glossiness;
  u_xlat39 = (-(x_1004) + x_1007);
  let x_1009 : f32 = u_xlat39;
  u_xlat39 = (x_1009 + 1.0f);
  let x_1011 : f32 = u_xlat39;
  u_xlat39 = clamp(x_1011, 0.0f, 1.0f);
  let x_1013 : f32 = u_xlat28;
  let x_1015 : vec3<f32> = u_xlat6;
  let x_1016 : vec3<f32> = (vec3<f32>(x_1013, x_1013, x_1013) * x_1015);
  let x_1017 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1016.x, x_1017.y, x_1016.y, x_1016.z);
  let x_1019 : vec3<f32> = u_xlat6;
  let x_1020 : f32 = u_xlat40;
  let x_1022 : vec3<f32> = (x_1019 * vec3<f32>(x_1020, x_1020, x_1020));
  let x_1023 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1022.x, x_1022.y, x_1022.z, x_1023.w);
  let x_1026 : f32 = u_xlat15.x;
  u_xlat40 = (-(x_1026) + 1.0f);
  let x_1029 : f32 = u_xlat40;
  let x_1030 : f32 = u_xlat40;
  u_xlat15.x = (x_1029 * x_1030);
  let x_1034 : f32 = u_xlat15.x;
  let x_1036 : f32 = u_xlat15.x;
  u_xlat15.x = (x_1034 * x_1036);
  let x_1039 : f32 = u_xlat40;
  let x_1041 : f32 = u_xlat15.x;
  u_xlat40 = (x_1039 * x_1041);
  let x_1043 : vec4<f32> = u_xlat0;
  u_xlat15 = (-(vec3<f32>(x_1043.x, x_1043.y, x_1043.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1048 : vec3<f32> = u_xlat15;
  let x_1049 : f32 = u_xlat40;
  let x_1052 : vec4<f32> = u_xlat0;
  u_xlat15 = ((x_1048 * vec3<f32>(x_1049, x_1049, x_1049)) + vec3<f32>(x_1052.x, x_1052.y, x_1052.z));
  let x_1055 : vec3<f32> = u_xlat15;
  let x_1056 : vec4<f32> = u_xlat5;
  u_xlat15 = (x_1055 * vec3<f32>(x_1056.x, x_1056.y, x_1056.z));
  let x_1059 : vec3<f32> = u_xlat1;
  let x_1060 : vec4<f32> = u_xlat3;
  let x_1063 : vec3<f32> = u_xlat15;
  u_xlat1 = ((x_1059 * vec3<f32>(x_1060.x, x_1060.z, x_1060.w)) + x_1063);
  let x_1065 : vec3<f32> = u_xlat4;
  let x_1066 : vec3<f32> = u_xlat2;
  u_xlat2 = (x_1065 * vec3<f32>(x_1066.x, x_1066.x, x_1066.x));
  let x_1069 : vec4<f32> = u_xlat0;
  let x_1072 : f32 = u_xlat39;
  let x_1074 : vec3<f32> = (-(vec3<f32>(x_1069.x, x_1069.y, x_1069.z)) + vec3<f32>(x_1072, x_1072, x_1072));
  let x_1075 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1074.x, x_1075.y, x_1074.y, x_1074.z);
  let x_1077 : f32 = u_xlat16;
  let x_1079 : vec4<f32> = u_xlat3;
  let x_1082 : vec4<f32> = u_xlat0;
  let x_1084 : vec3<f32> = ((vec3<f32>(x_1077, x_1077, x_1077) * vec3<f32>(x_1079.x, x_1079.z, x_1079.w)) + vec3<f32>(x_1082.x, x_1082.y, x_1082.z));
  let x_1085 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1084.x, x_1084.y, x_1084.z, x_1085.w);
  let x_1087 : vec3<f32> = u_xlat2;
  let x_1088 : vec4<f32> = u_xlat0;
  let x_1091 : vec3<f32> = u_xlat1;
  let x_1092 : vec3<f32> = ((x_1087 * vec3<f32>(x_1088.x, x_1088.y, x_1088.z)) + x_1091);
  let x_1093 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1092.x, x_1092.y, x_1092.z, x_1093.w);
  let x_1100 : vec4<f32> = vs_TEXCOORD0;
  let x_1102 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1100.x, x_1100.y));
  u_xlat1 = vec3<f32>(x_1102.x, x_1102.y, x_1102.z);
  let x_1104 : vec3<f32> = u_xlat1;
  let x_1107 : vec4<f32> = x_37.x_EmissionColor;
  let x_1110 : vec4<f32> = u_xlat0;
  let x_1112 : vec3<f32> = ((x_1104 * vec3<f32>(x_1107.x, x_1107.y, x_1107.z)) + vec3<f32>(x_1110.x, x_1110.y, x_1110.z));
  let x_1113 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1112.x, x_1112.y, x_1112.z, x_1113.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(5) vs_TEXCOORD7_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

