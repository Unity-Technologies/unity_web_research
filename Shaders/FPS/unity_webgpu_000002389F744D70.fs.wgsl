struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_MatrixV : mat4x4<f32>,
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
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat23 : f32;

var<private> u_xlatb23 : bool;

var<private> u_xlat24 : f32;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD7 : vec4<f32>;

@group(0) @binding(2) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(6) var sampler_ShadowMapTexture : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlatb22 : bool;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_252 : vec3<f32>;
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
  u_xlat21 = ((-(x_88) * 0.959999979f) + 0.959999979f);
  let x_93 : f32 = u_xlat21;
  let x_95 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_93, x_93, x_93) * x_95);
  let x_98 : vec4<f32> = vs_TEXCOORD4;
  let x_100 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_98.x, x_98.y, x_98.z), vec3<f32>(x_100.x, x_100.y, x_100.z));
  let x_103 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_103);
  let x_106 : f32 = u_xlat21;
  let x_108 : vec4<f32> = vs_TEXCOORD4;
  let x_110 : vec3<f32> = (vec3<f32>(x_106, x_106, x_106) * vec3<f32>(x_108.x, x_108.y, x_108.z));
  let x_111 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_110.x, x_110.y, x_110.z, x_111.w);
  let x_114 : vec4<f32> = vs_TEXCOORD1;
  let x_116 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_114.x, x_114.y, x_114.z), vec3<f32>(x_116.x, x_116.y, x_116.z));
  let x_119 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_119);
  let x_122 : f32 = u_xlat21;
  let x_124 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_122, x_122, x_122) * vec3<f32>(x_124.x, x_124.y, x_124.z));
  let x_130 : vec3<f32> = vs_TEXCOORD5;
  let x_135 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  let x_136 : vec3<f32> = (-(x_130) + x_135);
  let x_137 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_136.x, x_136.y, x_136.z, x_137.w);
  let x_143 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat5.x = x_143;
  let x_148 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat5.y = x_148;
  let x_153 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat5.z = x_153;
  let x_156 : vec4<f32> = u_xlat4;
  let x_158 : vec3<f32> = u_xlat5;
  u_xlat22 = dot(vec3<f32>(x_156.x, x_156.y, x_156.z), x_158);
  let x_160 : vec3<f32> = vs_TEXCOORD5;
  let x_163 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_166 : vec3<f32> = (x_160 + -(vec3<f32>(x_163.x, x_163.y, x_163.z)));
  let x_167 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
  let x_170 : vec4<f32> = u_xlat4;
  let x_172 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_170.x, x_170.y, x_170.z), vec3<f32>(x_172.x, x_172.y, x_172.z));
  let x_175 : f32 = u_xlat23;
  u_xlat23 = sqrt(x_175);
  let x_177 : f32 = u_xlat22;
  let x_179 : f32 = u_xlat23;
  u_xlat23 = (-(x_177) + x_179);
  let x_182 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_183 : f32 = u_xlat23;
  let x_185 : f32 = u_xlat22;
  u_xlat22 = ((x_182 * x_183) + x_185);
  let x_187 : f32 = u_xlat22;
  let x_189 : f32 = x_37.x_LightShadowData.z;
  let x_192 : f32 = x_37.x_LightShadowData.w;
  u_xlat22 = ((x_187 * x_189) + x_192);
  let x_194 : f32 = u_xlat22;
  u_xlat22 = clamp(x_194, 0.0f, 1.0f);
  let x_203 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb23 = (x_203 == 1.0f);
  let x_205 : bool = u_xlatb23;
  if (x_205) {
    let x_209 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb23 = (x_209 == 1.0f);
    let x_211 : vec3<f32> = vs_TEXCOORD5;
    let x_215 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_217 : vec3<f32> = (vec3<f32>(x_211.y, x_211.y, x_211.y) * vec3<f32>(x_215.x, x_215.y, x_215.z));
    let x_218 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
    let x_221 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_223 : vec3<f32> = vs_TEXCOORD5;
    let x_226 : vec4<f32> = u_xlat4;
    let x_228 : vec3<f32> = ((vec3<f32>(x_221.x, x_221.y, x_221.z) * vec3<f32>(x_223.x, x_223.x, x_223.x)) + vec3<f32>(x_226.x, x_226.y, x_226.z));
    let x_229 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_228.x, x_228.y, x_228.z, x_229.w);
    let x_232 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_234 : vec3<f32> = vs_TEXCOORD5;
    let x_237 : vec4<f32> = u_xlat4;
    let x_239 : vec3<f32> = ((vec3<f32>(x_232.x, x_232.y, x_232.z) * vec3<f32>(x_234.z, x_234.z, x_234.z)) + vec3<f32>(x_237.x, x_237.y, x_237.z));
    let x_240 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_239.x, x_239.y, x_239.z, x_240.w);
    let x_242 : vec4<f32> = u_xlat4;
    let x_245 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_247 : vec3<f32> = (vec3<f32>(x_242.x, x_242.y, x_242.z) + vec3<f32>(x_245.x, x_245.y, x_245.z));
    let x_248 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_247.x, x_247.y, x_247.z, x_248.w);
    let x_250 : bool = u_xlatb23;
    if (x_250) {
      let x_255 : vec4<f32> = u_xlat4;
      x_252 = vec3<f32>(x_255.x, x_255.y, x_255.z);
    } else {
      let x_258 : vec3<f32> = vs_TEXCOORD5;
      x_252 = x_258;
    }
    let x_259 : vec3<f32> = x_252;
    let x_260 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_259.x, x_259.y, x_259.z, x_260.w);
    let x_262 : vec4<f32> = u_xlat4;
    let x_266 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_268 : vec3<f32> = (vec3<f32>(x_262.x, x_262.y, x_262.z) + -(x_266));
    let x_269 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat4;
    let x_275 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_276 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) * x_275);
    let x_277 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_277.x, x_276.x, x_276.y, x_276.z);
    let x_280 : f32 = u_xlat4.y;
    u_xlat23 = ((x_280 * 0.25f) + 0.75f);
    let x_287 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_287 * 0.5f) + 0.75f);
    let x_291 : f32 = u_xlat23;
    let x_292 : f32 = u_xlat24;
    u_xlat4.x = max(x_291, x_292);
    let x_303 : vec4<f32> = u_xlat4;
    let x_305 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_303.x, x_303.z, x_303.w));
    u_xlat4 = x_305;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_311 : vec4<f32> = u_xlat4;
  let x_313 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat23 = dot(x_311, x_313);
  let x_315 : f32 = u_xlat23;
  u_xlat23 = clamp(x_315, 0.0f, 1.0f);
  let x_318 : vec4<f32> = vs_TEXCOORD7;
  let x_320 : vec4<f32> = vs_TEXCOORD7;
  let x_322 : vec2<f32> = (vec2<f32>(x_318.x, x_318.y) / vec2<f32>(x_320.w, x_320.w));
  let x_323 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_322.x, x_322.y, x_323.z, x_323.w);
  let x_330 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_330.x, x_330.y));
  u_xlat24 = x_332.x;
  let x_334 : f32 = u_xlat23;
  let x_335 : f32 = u_xlat24;
  u_xlat23 = (x_334 + -(x_335));
  let x_338 : f32 = u_xlat22;
  let x_339 : f32 = u_xlat23;
  let x_341 : f32 = u_xlat24;
  u_xlat22 = ((x_338 * x_339) + x_341);
  let x_343 : f32 = u_xlat22;
  let x_347 : vec4<f32> = x_37.x_LightColor0;
  let x_349 : vec3<f32> = (vec3<f32>(x_343, x_343, x_343) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_354 : f32 = x_37.x_Glossiness;
  u_xlat22 = (-(x_354) + 1.0f);
  let x_360 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_360;
  let x_364 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_364;
  let x_367 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_367;
  let x_370 : vec4<f32> = vs_TEXCOORD1;
  let x_373 : f32 = u_xlat21;
  let x_376 : vec3<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_370.x, x_370.y, x_370.z)) * vec3<f32>(x_373, x_373, x_373)) + x_376);
  let x_378 : vec3<f32> = u_xlat6;
  let x_379 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_378, x_379);
  let x_381 : f32 = u_xlat21;
  u_xlat21 = max(x_381, 0.001f);
  let x_384 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_384);
  let x_386 : f32 = u_xlat21;
  let x_388 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_386, x_386, x_386) * x_388);
  let x_390 : vec4<f32> = u_xlat2;
  let x_392 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_390.x, x_390.y, x_390.z), -(x_392));
  let x_395 : vec4<f32> = u_xlat2;
  let x_397 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_395.x, x_395.y, x_395.z), x_397);
  let x_399 : f32 = u_xlat23;
  u_xlat23 = clamp(x_399, 0.0f, 1.0f);
  let x_401 : vec4<f32> = u_xlat2;
  let x_403 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_401.x, x_401.y, x_401.z), x_403);
  let x_407 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_407, 0.0f, 1.0f);
  let x_411 : vec3<f32> = u_xlat5;
  let x_412 : vec3<f32> = u_xlat6;
  u_xlat9 = dot(x_411, x_412);
  let x_414 : f32 = u_xlat9;
  u_xlat9 = clamp(x_414, 0.0f, 1.0f);
  let x_417 : f32 = u_xlat9;
  let x_418 : f32 = u_xlat9;
  u_xlat16 = (x_417 * x_418);
  let x_420 : f32 = u_xlat16;
  let x_422 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_420, x_420), vec2<f32>(x_422, x_422));
  let x_425 : f32 = u_xlat16;
  u_xlat16 = (x_425 + -0.5f);
  let x_428 : f32 = u_xlat23;
  u_xlat3.x = (-(x_428) + 1.0f);
  let x_434 : f32 = u_xlat3.x;
  let x_436 : f32 = u_xlat3.x;
  u_xlat10 = (x_434 * x_436);
  let x_438 : f32 = u_xlat10;
  let x_439 : f32 = u_xlat10;
  u_xlat10 = (x_438 * x_439);
  let x_442 : f32 = u_xlat3.x;
  let x_443 : f32 = u_xlat10;
  u_xlat3.x = (x_442 * x_443);
  let x_446 : f32 = u_xlat16;
  let x_448 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_446 * x_448) + 1.0f);
  let x_452 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_452)) + 1.0f);
  let x_457 : f32 = u_xlat10;
  let x_458 : f32 = u_xlat10;
  u_xlat17 = (x_457 * x_458);
  let x_460 : f32 = u_xlat17;
  let x_461 : f32 = u_xlat17;
  u_xlat17 = (x_460 * x_461);
  let x_463 : f32 = u_xlat10;
  let x_464 : f32 = u_xlat17;
  u_xlat10 = (x_463 * x_464);
  let x_466 : f32 = u_xlat16;
  let x_467 : f32 = u_xlat10;
  u_xlat16 = ((x_466 * x_467) + 1.0f);
  let x_470 : f32 = u_xlat16;
  let x_472 : f32 = u_xlat3.x;
  u_xlat16 = (x_470 * x_472);
  let x_474 : f32 = u_xlat23;
  let x_475 : f32 = u_xlat16;
  u_xlat16 = (x_474 * x_475);
  let x_477 : f32 = u_xlat22;
  let x_478 : f32 = u_xlat22;
  u_xlat22 = (x_477 * x_478);
  let x_480 : f32 = u_xlat22;
  u_xlat22 = max(x_480, 0.002f);
  let x_483 : f32 = u_xlat22;
  u_xlat3.x = (-(x_483) + 1.0f);
  let x_487 : f32 = u_xlat21;
  let x_490 : f32 = u_xlat3.x;
  let x_492 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_487) * x_490) + x_492);
  let x_494 : f32 = u_xlat23;
  let x_496 : f32 = u_xlat3.x;
  let x_498 : f32 = u_xlat22;
  u_xlat3.x = ((x_494 * x_496) + x_498);
  let x_501 : f32 = u_xlat21;
  let x_504 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_501) * x_504);
  let x_506 : f32 = u_xlat23;
  let x_507 : f32 = u_xlat10;
  let x_509 : f32 = u_xlat21;
  u_xlat21 = ((x_506 * x_507) + x_509);
  let x_511 : f32 = u_xlat21;
  u_xlat21 = (x_511 + 0.00001f);
  let x_514 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_514);
  let x_516 : f32 = u_xlat22;
  let x_517 : f32 = u_xlat22;
  u_xlat22 = (x_516 * x_517);
  let x_520 : f32 = u_xlat2.x;
  let x_521 : f32 = u_xlat22;
  let x_524 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_520 * x_521) + -(x_524));
  let x_529 : f32 = u_xlat3.x;
  let x_531 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_529 * x_531) + 1.0f);
  let x_535 : f32 = u_xlat22;
  u_xlat22 = (x_535 * 0.318309873f);
  let x_539 : f32 = u_xlat2.x;
  let x_541 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_539 * x_541) + 0.0000001f);
  let x_546 : f32 = u_xlat22;
  let x_548 : f32 = u_xlat2.x;
  u_xlat22 = (x_546 / x_548);
  let x_550 : f32 = u_xlat21;
  let x_551 : f32 = u_xlat22;
  u_xlat21 = (x_550 * x_551);
  let x_553 : f32 = u_xlat23;
  let x_554 : f32 = u_xlat21;
  u_xlat21 = (x_553 * x_554);
  let x_556 : f32 = u_xlat21;
  u_xlat21 = (x_556 * 3.141592741f);
  let x_559 : f32 = u_xlat21;
  u_xlat21 = max(x_559, 0.0f);
  let x_561 : vec4<f32> = u_xlat0;
  let x_563 : vec4<f32> = u_xlat0;
  u_xlat22 = dot(vec3<f32>(x_561.x, x_561.y, x_561.z), vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_567 : f32 = u_xlat22;
  u_xlatb22 = !((x_567 == 0.0f));
  let x_569 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_569);
  let x_571 : f32 = u_xlat21;
  let x_572 : f32 = u_xlat22;
  u_xlat21 = (x_571 * x_572);
  let x_574 : f32 = u_xlat16;
  let x_576 : vec4<f32> = u_xlat4;
  let x_578 : vec3<f32> = (vec3<f32>(x_574, x_574, x_574) * vec3<f32>(x_576.x, x_576.y, x_576.z));
  let x_579 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_578.x, x_579.y, x_578.y, x_578.z);
  let x_581 : vec4<f32> = u_xlat4;
  let x_583 : f32 = u_xlat21;
  u_xlat3 = (vec3<f32>(x_581.x, x_581.y, x_581.z) * vec3<f32>(x_583, x_583, x_583));
  let x_586 : f32 = u_xlat9;
  u_xlat21 = (-(x_586) + 1.0f);
  let x_589 : f32 = u_xlat21;
  let x_590 : f32 = u_xlat21;
  u_xlat22 = (x_589 * x_590);
  let x_592 : f32 = u_xlat22;
  let x_593 : f32 = u_xlat22;
  u_xlat22 = (x_592 * x_593);
  let x_595 : f32 = u_xlat21;
  let x_596 : f32 = u_xlat22;
  u_xlat21 = (x_595 * x_596);
  let x_598 : vec4<f32> = u_xlat0;
  let x_602 : vec3<f32> = (-(vec3<f32>(x_598.x, x_598.y, x_598.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_603 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_602.x, x_602.y, x_602.z, x_603.w);
  let x_605 : vec4<f32> = u_xlat4;
  let x_607 : f32 = u_xlat21;
  let x_610 : vec4<f32> = u_xlat0;
  let x_612 : vec3<f32> = ((vec3<f32>(x_605.x, x_605.y, x_605.z) * vec3<f32>(x_607, x_607, x_607)) + vec3<f32>(x_610.x, x_610.y, x_610.z));
  let x_613 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_612.x, x_612.y, x_612.z, x_613.w);
  let x_615 : vec4<f32> = u_xlat0;
  let x_617 : vec3<f32> = u_xlat3;
  let x_618 : vec3<f32> = (vec3<f32>(x_615.x, x_615.y, x_615.z) * x_617);
  let x_619 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
  let x_621 : vec3<f32> = u_xlat1;
  let x_622 : vec4<f32> = u_xlat2;
  let x_625 : vec4<f32> = u_xlat0;
  let x_627 : vec3<f32> = ((x_621 * vec3<f32>(x_622.x, x_622.z, x_622.w)) + vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_628 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(6) vs_TEXCOORD7_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD7 = vs_TEXCOORD7_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

