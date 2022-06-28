struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat22 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat23 : f32;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat8 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_177 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD2;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat22;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_70 : vec2<f32> = vs_TEXCOORD0;
  let x_71 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_70);
  u_xlat3 = vec3<f32>(x_71.x, x_71.y, x_71.z);
  let x_73 : vec3<f32> = u_xlat3;
  let x_76 : vec4<f32> = x_18.x_Color;
  u_xlat3 = (x_73 * vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_80 : vec3<f32> = u_xlat3;
  let x_83 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (x_80 * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_87 : vec3<f32> = vs_TEXCOORD2;
  let x_91 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat5 = (vec3<f32>(x_87.y, x_87.y, x_87.y) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_95 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_97 : vec3<f32> = vs_TEXCOORD2;
  let x_100 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_95.x, x_95.y, x_95.z) * vec3<f32>(x_97.x, x_97.x, x_97.x)) + x_100);
  let x_104 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_106 : vec3<f32> = vs_TEXCOORD2;
  let x_109 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_104.x, x_104.y, x_104.z) * vec3<f32>(x_106.z, x_106.z, x_106.z)) + x_109);
  let x_111 : vec3<f32> = u_xlat5;
  let x_114 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat5 = (x_111 + vec3<f32>(x_114.x, x_114.y, x_114.z));
  let x_124 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_124 == 1.0f);
  let x_127 : bool = u_xlatb22;
  if (x_127) {
    let x_132 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_132 == 1.0f);
    let x_136 : vec3<f32> = vs_TEXCOORD2;
    let x_140 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_142 : vec3<f32> = (vec3<f32>(x_136.y, x_136.y, x_136.y) * vec3<f32>(x_140.x, x_140.y, x_140.z));
    let x_143 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_142.x, x_142.y, x_142.z, x_143.w);
    let x_146 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_148 : vec3<f32> = vs_TEXCOORD2;
    let x_151 : vec4<f32> = u_xlat6;
    let x_153 : vec3<f32> = ((vec3<f32>(x_146.x, x_146.y, x_146.z) * vec3<f32>(x_148.x, x_148.x, x_148.x)) + vec3<f32>(x_151.x, x_151.y, x_151.z));
    let x_154 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
    let x_157 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_159 : vec3<f32> = vs_TEXCOORD2;
    let x_162 : vec4<f32> = u_xlat6;
    let x_164 : vec3<f32> = ((vec3<f32>(x_157.x, x_157.y, x_157.z) * vec3<f32>(x_159.z, x_159.z, x_159.z)) + vec3<f32>(x_162.x, x_162.y, x_162.z));
    let x_165 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_164.x, x_164.y, x_164.z, x_165.w);
    let x_167 : vec4<f32> = u_xlat6;
    let x_170 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_172 : vec3<f32> = (vec3<f32>(x_167.x, x_167.y, x_167.z) + vec3<f32>(x_170.x, x_170.y, x_170.z));
    let x_173 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
    let x_175 : bool = u_xlatb22;
    if (x_175) {
      let x_180 : vec4<f32> = u_xlat6;
      x_177 = vec3<f32>(x_180.x, x_180.y, x_180.z);
    } else {
      let x_183 : vec3<f32> = vs_TEXCOORD2;
      x_177 = x_183;
    }
    let x_184 : vec3<f32> = x_177;
    let x_185 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_184.x, x_184.y, x_184.z, x_185.w);
    let x_187 : vec4<f32> = u_xlat6;
    let x_191 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_193 : vec3<f32> = (vec3<f32>(x_187.x, x_187.y, x_187.z) + -(x_191));
    let x_194 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
    let x_196 : vec4<f32> = u_xlat6;
    let x_200 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_201 : vec3<f32> = (vec3<f32>(x_196.x, x_196.y, x_196.z) * x_200);
    let x_202 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_202.x, x_201.x, x_201.y, x_201.z);
    let x_205 : f32 = u_xlat6.y;
    u_xlat22 = ((x_205 * 0.25f) + 0.75f);
    let x_213 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_213 * 0.5f) + 0.75f);
    let x_217 : f32 = u_xlat22;
    let x_218 : f32 = u_xlat23;
    u_xlat6.x = max(x_217, x_218);
    let x_229 : vec4<f32> = u_xlat6;
    let x_231 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_229.x, x_229.z, x_229.w));
    u_xlat6 = x_231;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_238 : vec4<f32> = u_xlat6;
  let x_240 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_238, x_240);
  let x_242 : f32 = u_xlat22;
  u_xlat22 = clamp(x_242, 0.0f, 1.0f);
  let x_245 : vec3<f32> = u_xlat5;
  let x_246 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(x_245, x_246);
  let x_253 : f32 = u_xlat23;
  let x_255 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_253, x_253));
  u_xlat23 = x_255.x;
  let x_257 : f32 = u_xlat22;
  let x_258 : f32 = u_xlat23;
  u_xlat22 = (x_257 * x_258);
  let x_260 : f32 = u_xlat22;
  let x_264 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_260, x_260, x_260) * vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_268 : vec3<f32> = vs_TEXCOORD1;
  let x_269 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_268, x_269);
  let x_271 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_271);
  let x_273 : f32 = u_xlat22;
  let x_275 : vec3<f32> = vs_TEXCOORD1;
  let x_276 : vec3<f32> = (vec3<f32>(x_273, x_273, x_273) * x_275);
  let x_277 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : vec3<f32> = u_xlat3;
  let x_280 : vec4<f32> = vs_COLOR0;
  u_xlat3 = ((x_279 * vec3<f32>(x_280.x, x_280.y, x_280.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_288 : f32 = x_18.x_Metallic;
  let x_290 : f32 = x_18.x_Metallic;
  let x_292 : f32 = x_18.x_Metallic;
  let x_293 : vec3<f32> = vec3<f32>(x_288, x_290, x_292);
  let x_298 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_293.x, x_293.y, x_293.z) * x_298) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_304 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_304) * 0.959999979f) + 0.959999979f);
  let x_309 : f32 = u_xlat22;
  let x_311 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_309, x_309, x_309) * x_311);
  let x_315 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_315) + 1.0f);
  let x_318 : vec3<f32> = u_xlat0;
  let x_319 : f32 = u_xlat21;
  let x_322 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_318 * vec3<f32>(x_319, x_319, x_319)) + x_322);
  let x_324 : vec3<f32> = u_xlat0;
  let x_325 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_324, x_325);
  let x_327 : f32 = u_xlat21;
  u_xlat21 = max(x_327, 0.001f);
  let x_330 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_330);
  let x_332 : f32 = u_xlat21;
  let x_334 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_332, x_332, x_332) * x_334);
  let x_336 : vec4<f32> = u_xlat6;
  let x_338 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_336.x, x_336.y, x_336.z), x_338);
  let x_340 : vec4<f32> = u_xlat6;
  let x_342 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_340.x, x_340.y, x_340.z), x_342);
  let x_346 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_346, 0.0f, 1.0f);
  let x_350 : vec4<f32> = u_xlat6;
  let x_352 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_350.x, x_350.y, x_350.z), x_352);
  let x_354 : f32 = u_xlat9;
  u_xlat9 = clamp(x_354, 0.0f, 1.0f);
  let x_356 : vec3<f32> = u_xlat1;
  let x_357 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_356, x_357);
  let x_361 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_361, 0.0f, 1.0f);
  let x_366 : f32 = u_xlat0.x;
  let x_368 : f32 = u_xlat0.x;
  u_xlat7.x = (x_366 * x_368);
  let x_371 : vec3<f32> = u_xlat7;
  let x_373 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_371.x, x_371.x), vec2<f32>(x_373, x_373));
  let x_378 : f32 = u_xlat7.x;
  u_xlat7.x = (x_378 + -0.5f);
  let x_384 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_384) + 1.0f);
  let x_387 : f32 = u_xlat14;
  let x_388 : f32 = u_xlat14;
  u_xlat1.x = (x_387 * x_388);
  let x_392 : f32 = u_xlat1.x;
  let x_394 : f32 = u_xlat1.x;
  u_xlat1.x = (x_392 * x_394);
  let x_397 : f32 = u_xlat14;
  let x_399 : f32 = u_xlat1.x;
  u_xlat14 = (x_397 * x_399);
  let x_402 : f32 = u_xlat7.x;
  let x_403 : f32 = u_xlat14;
  u_xlat14 = ((x_402 * x_403) + 1.0f);
  let x_406 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_406)) + 1.0f);
  let x_413 : f32 = u_xlat1.x;
  let x_415 : f32 = u_xlat1.x;
  u_xlat8 = (x_413 * x_415);
  let x_417 : f32 = u_xlat8;
  let x_418 : f32 = u_xlat8;
  u_xlat8 = (x_417 * x_418);
  let x_421 : f32 = u_xlat1.x;
  let x_422 : f32 = u_xlat8;
  u_xlat1.x = (x_421 * x_422);
  let x_426 : f32 = u_xlat7.x;
  let x_428 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_426 * x_428) + 1.0f);
  let x_433 : f32 = u_xlat7.x;
  let x_434 : f32 = u_xlat14;
  u_xlat7.x = (x_433 * x_434);
  let x_437 : f32 = u_xlat22;
  let x_438 : f32 = u_xlat22;
  u_xlat14 = (x_437 * x_438);
  let x_440 : f32 = u_xlat14;
  u_xlat14 = max(x_440, 0.002f);
  let x_443 : f32 = u_xlat14;
  u_xlat1.x = (-(x_443) + 1.0f);
  let x_447 : f32 = u_xlat21;
  let x_450 : f32 = u_xlat1.x;
  let x_452 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_447) * x_450) + x_452);
  let x_455 : f32 = u_xlat2.x;
  let x_457 : f32 = u_xlat1.x;
  let x_459 : f32 = u_xlat14;
  u_xlat1.x = ((x_455 * x_457) + x_459);
  let x_462 : f32 = u_xlat21;
  let x_465 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_462) * x_465);
  let x_468 : f32 = u_xlat2.x;
  let x_469 : f32 = u_xlat8;
  let x_471 : f32 = u_xlat21;
  u_xlat21 = ((x_468 * x_469) + x_471);
  let x_473 : f32 = u_xlat21;
  u_xlat21 = (x_473 + 0.00001f);
  let x_476 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_476);
  let x_478 : f32 = u_xlat14;
  let x_479 : f32 = u_xlat14;
  u_xlat14 = (x_478 * x_479);
  let x_481 : f32 = u_xlat9;
  let x_482 : f32 = u_xlat14;
  let x_484 : f32 = u_xlat9;
  u_xlat1.x = ((x_481 * x_482) + -(x_484));
  let x_489 : f32 = u_xlat1.x;
  let x_490 : f32 = u_xlat9;
  u_xlat1.x = ((x_489 * x_490) + 1.0f);
  let x_494 : f32 = u_xlat14;
  u_xlat14 = (x_494 * 0.318309873f);
  let x_498 : f32 = u_xlat1.x;
  let x_500 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_498 * x_500) + 0.0000001f);
  let x_505 : f32 = u_xlat14;
  let x_507 : f32 = u_xlat1.x;
  u_xlat14 = (x_505 / x_507);
  let x_509 : f32 = u_xlat14;
  let x_510 : f32 = u_xlat21;
  u_xlat7.y = (x_509 * x_510);
  let x_513 : vec3<f32> = u_xlat2;
  let x_515 : vec3<f32> = u_xlat7;
  let x_517 : vec2<f32> = (vec2<f32>(x_513.x, x_513.x) * vec2<f32>(x_515.x, x_515.y));
  let x_518 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_517.x, x_517.y, x_518.z);
  let x_521 : f32 = u_xlat7.y;
  u_xlat14 = (x_521 * 3.141592741f);
  let x_524 : f32 = u_xlat14;
  u_xlat14 = max(x_524, 0.0f);
  let x_526 : vec3<f32> = u_xlat3;
  let x_527 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_526, x_527);
  let x_530 : f32 = u_xlat21;
  u_xlatb21 = !((x_530 == 0.0f));
  let x_532 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_532);
  let x_534 : f32 = u_xlat21;
  let x_535 : f32 = u_xlat14;
  u_xlat14 = (x_534 * x_535);
  let x_537 : vec3<f32> = u_xlat7;
  let x_539 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_537.x, x_537.x, x_537.x) * x_539);
  let x_541 : vec3<f32> = u_xlat5;
  let x_542 : f32 = u_xlat14;
  u_xlat7 = (x_541 * vec3<f32>(x_542, x_542, x_542));
  let x_546 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_546) + 1.0f);
  let x_551 : f32 = u_xlat0.x;
  let x_553 : f32 = u_xlat0.x;
  u_xlat22 = (x_551 * x_553);
  let x_555 : f32 = u_xlat22;
  let x_556 : f32 = u_xlat22;
  u_xlat22 = (x_555 * x_556);
  let x_559 : f32 = u_xlat0.x;
  let x_560 : f32 = u_xlat22;
  u_xlat0.x = (x_559 * x_560);
  let x_563 : vec3<f32> = u_xlat3;
  u_xlat2 = (-(x_563) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_567 : vec3<f32> = u_xlat2;
  let x_568 : vec3<f32> = u_xlat0;
  let x_571 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_567 * vec3<f32>(x_568.x, x_568.x, x_568.x)) + x_571);
  let x_573 : vec3<f32> = u_xlat7;
  let x_574 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_573 * x_574);
  let x_578 : vec3<f32> = u_xlat4;
  let x_579 : vec3<f32> = u_xlat1;
  let x_581 : vec3<f32> = u_xlat0;
  let x_582 : vec3<f32> = ((x_578 * x_579) + x_581);
  let x_583 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD2_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

