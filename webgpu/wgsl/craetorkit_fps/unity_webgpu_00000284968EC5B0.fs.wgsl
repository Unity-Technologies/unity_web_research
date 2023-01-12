struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(8) var sampler_Normal : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(5) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(3) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat43 : f32;
  var u_xlatb43 : bool;
  var u_xlat6 : vec4<f32>;
  var x_242 : vec3<f32>;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb11 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_426 : f32;
  var x_438 : f32;
  var x_450 : f32;
  var u_xlatb46 : bool;
  var u_xlat46 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_599 : f32;
  var x_611 : f32;
  var x_623 : f32;
  var u_xlat16 : f32;
  var u_xlat15 : f32;
  var u_xlat29 : f32;
  var u_xlat30 : f32;
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
  u_xlat42 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat42;
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
  let x_119 : vec3<f32> = u_xlat5;
  let x_121 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_119.x, x_119.y));
  u_xlat5 = vec3<f32>(x_121.x, x_121.y, x_121.w);
  let x_124 : f32 = u_xlat5.z;
  let x_126 : f32 = u_xlat5.x;
  u_xlat5.x = (x_124 * x_126);
  let x_129 : vec3<f32> = u_xlat5;
  let x_136 : vec2<f32> = ((vec2<f32>(x_129.x, x_129.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_137 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_136.x, x_136.y, x_137.z);
  let x_139 : vec3<f32> = u_xlat5;
  let x_143 : f32 = x_37.x_NormalSacle;
  let x_145 : vec2<f32> = (vec2<f32>(x_139.x, x_139.y) * vec2<f32>(x_143, x_143));
  let x_146 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_145.x, x_145.y, x_146.z);
  let x_149 : vec3<f32> = u_xlat5;
  let x_151 : vec3<f32> = u_xlat5;
  u_xlat43 = dot(vec2<f32>(x_149.x, x_149.y), vec2<f32>(x_151.x, x_151.y));
  let x_154 : f32 = u_xlat43;
  u_xlat43 = min(x_154, 1.0f);
  let x_157 : f32 = u_xlat43;
  u_xlat43 = (-(x_157) + 1.0f);
  let x_160 : f32 = u_xlat43;
  u_xlat5.z = sqrt(x_160);
  let x_164 : f32 = vs_COLOR0.w;
  u_xlat43 = (-(x_164) + 1.0f);
  let x_168 : f32 = u_xlat3.w;
  let x_170 : f32 = x_37.x_Color.w;
  let x_172 : f32 = u_xlat43;
  u_xlat43 = ((x_168 * x_170) + -(x_172));
  let x_178 : f32 = u_xlat43;
  u_xlatb43 = (x_178 < 0.0f);
  let x_181 : bool = u_xlatb43;
  if (((select(0i, 1i, x_181) * -1i) != 0i)) {
    discard;
  }
  let x_191 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb43 = (x_191 == 1.0f);
  let x_193 : bool = u_xlatb43;
  if (x_193) {
    let x_197 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb43 = (x_197 == 1.0f);
    let x_200 : vec4<f32> = vs_TEXCOORD2;
    let x_204 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_206 : vec3<f32> = (vec3<f32>(x_200.w, x_200.w, x_200.w) * vec3<f32>(x_204.x, x_204.y, x_204.z));
    let x_207 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_206.x, x_206.y, x_206.z, x_207.w);
    let x_210 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_212 : vec4<f32> = vs_TEXCOORD1;
    let x_215 : vec4<f32> = u_xlat6;
    let x_217 : vec3<f32> = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.w, x_212.w, x_212.w)) + vec3<f32>(x_215.x, x_215.y, x_215.z));
    let x_218 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_217.x, x_217.y, x_217.z, x_218.w);
    let x_222 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_224 : vec4<f32> = vs_TEXCOORD3;
    let x_227 : vec4<f32> = u_xlat6;
    let x_229 : vec3<f32> = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.w, x_224.w, x_224.w)) + vec3<f32>(x_227.x, x_227.y, x_227.z));
    let x_230 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    let x_232 : vec4<f32> = u_xlat6;
    let x_236 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_238 : vec3<f32> = (vec3<f32>(x_232.x, x_232.y, x_232.z) + vec3<f32>(x_236.x, x_236.y, x_236.z));
    let x_239 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
    let x_241 : bool = u_xlatb43;
    if (x_241) {
      let x_245 : vec4<f32> = u_xlat6;
      x_242 = vec3<f32>(x_245.x, x_245.y, x_245.z);
    } else {
      let x_248 : vec3<f32> = u_xlat0;
      x_242 = x_248;
    }
    let x_249 : vec3<f32> = x_242;
    let x_250 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_249.x, x_249.y, x_249.z, x_250.w);
    let x_252 : vec4<f32> = u_xlat6;
    let x_256 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_258 : vec3<f32> = (vec3<f32>(x_252.x, x_252.y, x_252.z) + -(x_256));
    let x_259 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat6;
    let x_265 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_266 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) * x_265);
    let x_267 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_267.x, x_266.x, x_266.y, x_266.z);
    let x_270 : f32 = u_xlat6.y;
    u_xlat43 = ((x_270 * 0.25f) + 0.75f);
    let x_277 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat44 = ((x_277 * 0.5f) + 0.75f);
    let x_281 : f32 = u_xlat43;
    let x_282 : f32 = u_xlat44;
    u_xlat6.x = max(x_281, x_282);
    let x_293 : vec4<f32> = u_xlat6;
    let x_295 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_293.x, x_293.z, x_293.w));
    u_xlat6 = x_295;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_301 : vec4<f32> = u_xlat6;
  let x_303 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat43 = dot(x_301, x_303);
  let x_305 : f32 = u_xlat43;
  u_xlat43 = clamp(x_305, 0.0f, 1.0f);
  let x_307 : vec4<f32> = vs_TEXCOORD1;
  let x_309 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_307.x, x_307.y, x_307.z), x_309);
  let x_312 : vec4<f32> = vs_TEXCOORD2;
  let x_314 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_312.x, x_312.y, x_312.z), x_314);
  let x_317 : vec4<f32> = vs_TEXCOORD3;
  let x_319 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_317.x, x_317.y, x_317.z), x_319);
  let x_322 : vec4<f32> = u_xlat6;
  let x_324 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_322.x, x_322.y, x_322.z), vec3<f32>(x_324.x, x_324.y, x_324.z));
  let x_327 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_327);
  let x_329 : f32 = u_xlat44;
  let x_331 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_329, x_329, x_329) * vec3<f32>(x_331.x, x_331.y, x_331.z));
  let x_336 : f32 = x_37.x_Glossiness;
  u_xlat44 = (-(x_336) + 1.0f);
  let x_340 : vec4<f32> = u_xlat2;
  let x_343 : vec3<f32> = u_xlat5;
  u_xlat45 = dot(-(vec3<f32>(x_340.x, x_340.y, x_340.z)), x_343);
  let x_345 : f32 = u_xlat45;
  let x_346 : f32 = u_xlat45;
  u_xlat45 = (x_345 + x_346);
  let x_348 : vec3<f32> = u_xlat5;
  let x_349 : f32 = u_xlat45;
  let x_353 : vec4<f32> = u_xlat2;
  let x_356 : vec3<f32> = ((x_348 * -(vec3<f32>(x_349, x_349, x_349))) + -(vec3<f32>(x_353.x, x_353.y, x_353.z)));
  let x_357 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_356.x, x_356.y, x_356.z, x_357.w);
  let x_360 : f32 = u_xlat43;
  let x_364 : vec4<f32> = x_37.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_360, x_360, x_360) * vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_369 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb43 = (0.0f < x_369);
  let x_371 : bool = u_xlatb43;
  if (x_371) {
    let x_374 : vec4<f32> = u_xlat6;
    let x_376 : vec4<f32> = u_xlat6;
    u_xlat43 = dot(vec3<f32>(x_374.x, x_374.y, x_374.z), vec3<f32>(x_376.x, x_376.y, x_376.z));
    let x_379 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_379);
    let x_382 : f32 = u_xlat43;
    let x_384 : vec4<f32> = u_xlat6;
    let x_386 : vec3<f32> = (vec3<f32>(x_382, x_382, x_382) * vec3<f32>(x_384.x, x_384.y, x_384.z));
    let x_387 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_386.x, x_386.y, x_386.z, x_387.w);
    let x_390 : vec3<f32> = u_xlat0;
    let x_394 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    u_xlat9 = (-(x_390) + vec3<f32>(x_394.x, x_394.y, x_394.z));
    let x_397 : vec3<f32> = u_xlat9;
    let x_398 : vec4<f32> = u_xlat8;
    u_xlat9 = (x_397 / vec3<f32>(x_398.x, x_398.y, x_398.z));
    let x_402 : vec3<f32> = u_xlat0;
    let x_406 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat10 = (-(x_402) + vec3<f32>(x_406.x, x_406.y, x_406.z));
    let x_409 : vec3<f32> = u_xlat10;
    let x_410 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_409 / vec3<f32>(x_410.x, x_410.y, x_410.z));
    let x_417 : vec4<f32> = u_xlat8;
    let x_420 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_417.x, x_417.y, x_417.z, x_417.x));
    u_xlatb11 = vec3<bool>(x_420.x, x_420.y, x_420.z);
    let x_423 : vec3<f32> = u_xlat9;
    hlslcc_movcTemp = x_423;
    let x_425 : bool = u_xlatb11.x;
    if (x_425) {
      let x_430 : f32 = u_xlat9.x;
      x_426 = x_430;
    } else {
      let x_433 : f32 = u_xlat10.x;
      x_426 = x_433;
    }
    let x_434 : f32 = x_426;
    hlslcc_movcTemp.x = x_434;
    let x_437 : bool = u_xlatb11.y;
    if (x_437) {
      let x_442 : f32 = u_xlat9.y;
      x_438 = x_442;
    } else {
      let x_445 : f32 = u_xlat10.y;
      x_438 = x_445;
    }
    let x_446 : f32 = x_438;
    hlslcc_movcTemp.y = x_446;
    let x_449 : bool = u_xlatb11.z;
    if (x_449) {
      let x_454 : f32 = u_xlat9.z;
      x_450 = x_454;
    } else {
      let x_457 : f32 = u_xlat10.z;
      x_450 = x_457;
    }
    let x_458 : f32 = x_450;
    hlslcc_movcTemp.z = x_458;
    let x_460 : vec3<f32> = hlslcc_movcTemp;
    u_xlat9 = x_460;
    let x_462 : f32 = u_xlat9.y;
    let x_464 : f32 = u_xlat9.x;
    u_xlat43 = min(x_462, x_464);
    let x_467 : f32 = u_xlat9.z;
    let x_468 : f32 = u_xlat43;
    u_xlat43 = min(x_467, x_468);
    let x_470 : vec3<f32> = u_xlat0;
    let x_472 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    u_xlat9 = (x_470 + -(vec3<f32>(x_472.x, x_472.y, x_472.z)));
    let x_476 : vec4<f32> = u_xlat8;
    let x_478 : f32 = u_xlat43;
    let x_481 : vec3<f32> = u_xlat9;
    let x_482 : vec3<f32> = ((vec3<f32>(x_476.x, x_476.y, x_476.z) * vec3<f32>(x_478, x_478, x_478)) + x_481);
    let x_483 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  } else {
    let x_486 : vec4<f32> = u_xlat6;
    let x_487 : vec3<f32> = vec3<f32>(x_486.x, x_486.y, x_486.z);
    let x_488 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
  }
  let x_490 : f32 = u_xlat44;
  u_xlat43 = ((-(x_490) * 0.699999988f) + 1.700000048f);
  let x_496 : f32 = u_xlat43;
  let x_497 : f32 = u_xlat44;
  u_xlat43 = (x_496 * x_497);
  let x_499 : f32 = u_xlat43;
  u_xlat43 = (x_499 * 6.0f);
  let x_510 : vec4<f32> = u_xlat8;
  let x_512 : f32 = u_xlat43;
  let x_513 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_510.x, x_510.y, x_510.z), x_512);
  u_xlat8 = x_513;
  let x_515 : f32 = u_xlat8.w;
  u_xlat45 = (x_515 + -1.0f);
  let x_519 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_520 : f32 = u_xlat45;
  u_xlat45 = ((x_519 * x_520) + 1.0f);
  let x_523 : f32 = u_xlat45;
  u_xlat45 = log2(x_523);
  let x_525 : f32 = u_xlat45;
  let x_527 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_525 * x_527);
  let x_529 : f32 = u_xlat45;
  u_xlat45 = exp2(x_529);
  let x_531 : f32 = u_xlat45;
  let x_533 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_531 * x_533);
  let x_535 : vec4<f32> = u_xlat8;
  let x_537 : f32 = u_xlat45;
  u_xlat9 = (vec3<f32>(x_535.x, x_535.y, x_535.z) * vec3<f32>(x_537, x_537, x_537));
  let x_542 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb46 = (x_542 < 0.999989986f);
  let x_545 : bool = u_xlatb46;
  if (x_545) {
    let x_550 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb46 = (0.0f < x_550);
    let x_552 : bool = u_xlatb46;
    if (x_552) {
      let x_556 : vec4<f32> = u_xlat6;
      let x_558 : vec4<f32> = u_xlat6;
      u_xlat46 = dot(vec3<f32>(x_556.x, x_556.y, x_556.z), vec3<f32>(x_558.x, x_558.y, x_558.z));
      let x_561 : f32 = u_xlat46;
      u_xlat46 = inverseSqrt(x_561);
      let x_563 : f32 = u_xlat46;
      let x_565 : vec4<f32> = u_xlat6;
      u_xlat10 = (vec3<f32>(x_563, x_563, x_563) * vec3<f32>(x_565.x, x_565.y, x_565.z));
      let x_569 : vec3<f32> = u_xlat0;
      let x_573 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat11 = (-(x_569) + vec3<f32>(x_573.x, x_573.y, x_573.z));
      let x_576 : vec3<f32> = u_xlat11;
      let x_577 : vec3<f32> = u_xlat10;
      u_xlat11 = (x_576 / x_577);
      let x_580 : vec3<f32> = u_xlat0;
      let x_584 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat12 = (-(x_580) + vec3<f32>(x_584.x, x_584.y, x_584.z));
      let x_587 : vec3<f32> = u_xlat12;
      let x_588 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_587 / x_588);
      let x_591 : vec3<f32> = u_xlat10;
      let x_593 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_591.x, x_591.y, x_591.z, x_591.x));
      u_xlatb13 = vec3<bool>(x_593.x, x_593.y, x_593.z);
      let x_596 : vec3<f32> = u_xlat11;
      hlslcc_movcTemp_1 = x_596;
      let x_598 : bool = u_xlatb13.x;
      if (x_598) {
        let x_603 : f32 = u_xlat11.x;
        x_599 = x_603;
      } else {
        let x_606 : f32 = u_xlat12.x;
        x_599 = x_606;
      }
      let x_607 : f32 = x_599;
      hlslcc_movcTemp_1.x = x_607;
      let x_610 : bool = u_xlatb13.y;
      if (x_610) {
        let x_615 : f32 = u_xlat11.y;
        x_611 = x_615;
      } else {
        let x_618 : f32 = u_xlat12.y;
        x_611 = x_618;
      }
      let x_619 : f32 = x_611;
      hlslcc_movcTemp_1.y = x_619;
      let x_622 : bool = u_xlatb13.z;
      if (x_622) {
        let x_627 : f32 = u_xlat11.z;
        x_623 = x_627;
      } else {
        let x_630 : f32 = u_xlat12.z;
        x_623 = x_630;
      }
      let x_631 : f32 = x_623;
      hlslcc_movcTemp_1.z = x_631;
      let x_633 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat11 = x_633;
      let x_635 : f32 = u_xlat11.y;
      let x_637 : f32 = u_xlat11.x;
      u_xlat46 = min(x_635, x_637);
      let x_640 : f32 = u_xlat11.z;
      let x_641 : f32 = u_xlat46;
      u_xlat46 = min(x_640, x_641);
      let x_643 : vec3<f32> = u_xlat0;
      let x_645 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_643 + -(vec3<f32>(x_645.x, x_645.y, x_645.z)));
      let x_649 : vec3<f32> = u_xlat10;
      let x_650 : f32 = u_xlat46;
      let x_653 : vec3<f32> = u_xlat0;
      let x_654 : vec3<f32> = ((x_649 * vec3<f32>(x_650, x_650, x_650)) + x_653);
      let x_655 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_654.x, x_654.y, x_654.z, x_655.w);
    }
    let x_661 : vec4<f32> = u_xlat6;
    let x_663 : f32 = u_xlat43;
    let x_664 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_661.x, x_661.y, x_661.z), x_663);
    u_xlat6 = x_664;
    let x_666 : f32 = u_xlat6.w;
    u_xlat0.x = (x_666 + -1.0f);
    let x_671 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_673 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_671 * x_673) + 1.0f);
    let x_678 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_678);
    let x_682 : f32 = u_xlat0.x;
    let x_684 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_682 * x_684);
    let x_688 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_688);
    let x_692 : f32 = u_xlat0.x;
    let x_694 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_692 * x_694);
    let x_697 : vec4<f32> = u_xlat6;
    let x_699 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_697.x, x_697.y, x_697.z) * vec3<f32>(x_699.x, x_699.x, x_699.x));
    let x_702 : f32 = u_xlat45;
    let x_704 : vec4<f32> = u_xlat8;
    let x_707 : vec3<f32> = u_xlat0;
    let x_709 : vec3<f32> = ((vec3<f32>(x_702, x_702, x_702) * vec3<f32>(x_704.x, x_704.y, x_704.z)) + -(x_707));
    let x_710 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
    let x_713 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_715 : vec4<f32> = u_xlat6;
    let x_718 : vec3<f32> = u_xlat0;
    u_xlat9 = ((vec3<f32>(x_713.w, x_713.w, x_713.w) * vec3<f32>(x_715.x, x_715.y, x_715.z)) + x_718);
  }
  let x_720 : vec4<f32> = u_xlat3;
  let x_722 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_720.x, x_720.y, x_720.z) * vec3<f32>(x_722.x, x_722.y, x_722.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_730 : f32 = x_37.x_Metallic;
  let x_732 : f32 = x_37.x_Metallic;
  let x_734 : f32 = x_37.x_Metallic;
  let x_735 : vec3<f32> = vec3<f32>(x_730, x_732, x_734);
  let x_740 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_735.x, x_735.y, x_735.z) * x_740) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_746 : f32 = x_37.x_Metallic;
  u_xlat43 = ((-(x_746) * 0.959999979f) + 0.959999979f);
  let x_751 : f32 = u_xlat43;
  let x_753 : vec3<f32> = u_xlat4;
  let x_754 : vec3<f32> = (vec3<f32>(x_751, x_751, x_751) * x_753);
  let x_755 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_757 : vec3<f32> = u_xlat1;
  let x_758 : f32 = u_xlat42;
  let x_762 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_757 * vec3<f32>(x_758, x_758, x_758)) + vec3<f32>(x_762.x, x_762.y, x_762.z));
  let x_765 : vec3<f32> = u_xlat1;
  let x_766 : vec3<f32> = u_xlat1;
  u_xlat42 = dot(x_765, x_766);
  let x_768 : f32 = u_xlat42;
  u_xlat42 = max(x_768, 0.001f);
  let x_771 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_771);
  let x_773 : f32 = u_xlat42;
  let x_775 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_773, x_773, x_773) * x_775);
  let x_777 : vec3<f32> = u_xlat5;
  let x_778 : vec4<f32> = u_xlat2;
  u_xlat42 = dot(x_777, vec3<f32>(x_778.x, x_778.y, x_778.z));
  let x_781 : vec3<f32> = u_xlat5;
  let x_783 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_781, vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_788 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_788, 0.0f, 1.0f);
  let x_792 : vec3<f32> = u_xlat5;
  let x_793 : vec3<f32> = u_xlat1;
  u_xlat16 = dot(x_792, x_793);
  let x_795 : f32 = u_xlat16;
  u_xlat16 = clamp(x_795, 0.0f, 1.0f);
  let x_798 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_800 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_798.x, x_798.y, x_798.z), x_800);
  let x_804 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_804, 0.0f, 1.0f);
  let x_809 : f32 = u_xlat1.x;
  let x_811 : f32 = u_xlat1.x;
  u_xlat15 = (x_809 * x_811);
  let x_813 : f32 = u_xlat15;
  let x_815 : f32 = u_xlat44;
  u_xlat15 = dot(vec2<f32>(x_813, x_813), vec2<f32>(x_815, x_815));
  let x_818 : f32 = u_xlat15;
  u_xlat15 = (x_818 + -0.5f);
  let x_823 : f32 = u_xlat2.x;
  u_xlat29 = (-(x_823) + 1.0f);
  let x_827 : f32 = u_xlat29;
  let x_828 : f32 = u_xlat29;
  u_xlat30 = (x_827 * x_828);
  let x_830 : f32 = u_xlat30;
  let x_831 : f32 = u_xlat30;
  u_xlat30 = (x_830 * x_831);
  let x_833 : f32 = u_xlat29;
  let x_834 : f32 = u_xlat30;
  u_xlat29 = (x_833 * x_834);
  let x_836 : f32 = u_xlat15;
  let x_837 : f32 = u_xlat29;
  u_xlat29 = ((x_836 * x_837) + 1.0f);
  let x_840 : f32 = u_xlat42;
  u_xlat30 = (-(abs(x_840)) + 1.0f);
  let x_844 : f32 = u_xlat30;
  let x_845 : f32 = u_xlat30;
  u_xlat45 = (x_844 * x_845);
  let x_847 : f32 = u_xlat45;
  let x_848 : f32 = u_xlat45;
  u_xlat45 = (x_847 * x_848);
  let x_850 : f32 = u_xlat30;
  let x_851 : f32 = u_xlat45;
  u_xlat30 = (x_850 * x_851);
  let x_853 : f32 = u_xlat15;
  let x_854 : f32 = u_xlat30;
  u_xlat15 = ((x_853 * x_854) + 1.0f);
  let x_857 : f32 = u_xlat15;
  let x_858 : f32 = u_xlat29;
  u_xlat15 = (x_857 * x_858);
  let x_861 : f32 = u_xlat2.x;
  let x_862 : f32 = u_xlat15;
  u_xlat15 = (x_861 * x_862);
  let x_864 : f32 = u_xlat44;
  let x_865 : f32 = u_xlat44;
  u_xlat29 = (x_864 * x_865);
  let x_867 : f32 = u_xlat29;
  u_xlat29 = max(x_867, 0.002f);
  let x_870 : f32 = u_xlat29;
  u_xlat44 = (-(x_870) + 1.0f);
  let x_873 : f32 = u_xlat42;
  let x_875 : f32 = u_xlat44;
  let x_877 : f32 = u_xlat29;
  u_xlat45 = ((abs(x_873) * x_875) + x_877);
  let x_880 : f32 = u_xlat2.x;
  let x_881 : f32 = u_xlat44;
  let x_883 : f32 = u_xlat29;
  u_xlat44 = ((x_880 * x_881) + x_883);
  let x_885 : f32 = u_xlat42;
  let x_887 : f32 = u_xlat44;
  u_xlat42 = (abs(x_885) * x_887);
  let x_890 : f32 = u_xlat2.x;
  let x_891 : f32 = u_xlat45;
  let x_893 : f32 = u_xlat42;
  u_xlat42 = ((x_890 * x_891) + x_893);
  let x_895 : f32 = u_xlat42;
  u_xlat42 = (x_895 + 0.00001f);
  let x_898 : f32 = u_xlat42;
  u_xlat42 = (0.5f / x_898);
  let x_900 : f32 = u_xlat29;
  let x_901 : f32 = u_xlat29;
  u_xlat44 = (x_900 * x_901);
  let x_903 : f32 = u_xlat16;
  let x_904 : f32 = u_xlat44;
  let x_906 : f32 = u_xlat16;
  u_xlat45 = ((x_903 * x_904) + -(x_906));
  let x_909 : f32 = u_xlat45;
  let x_910 : f32 = u_xlat16;
  u_xlat16 = ((x_909 * x_910) + 1.0f);
  let x_913 : f32 = u_xlat44;
  u_xlat44 = (x_913 * 0.318309873f);
  let x_916 : f32 = u_xlat16;
  let x_917 : f32 = u_xlat16;
  u_xlat16 = ((x_916 * x_917) + 0.0000001f);
  let x_921 : f32 = u_xlat44;
  let x_922 : f32 = u_xlat16;
  u_xlat16 = (x_921 / x_922);
  let x_924 : f32 = u_xlat42;
  let x_925 : f32 = u_xlat16;
  u_xlat42 = (x_924 * x_925);
  let x_928 : f32 = u_xlat2.x;
  let x_929 : f32 = u_xlat42;
  u_xlat42 = (x_928 * x_929);
  let x_931 : f32 = u_xlat42;
  u_xlat42 = (x_931 * 3.141592741f);
  let x_934 : f32 = u_xlat42;
  u_xlat42 = max(x_934, 0.0f);
  let x_936 : f32 = u_xlat29;
  let x_937 : f32 = u_xlat29;
  u_xlat29 = ((x_936 * x_937) + 1.0f);
  let x_940 : f32 = u_xlat29;
  u_xlat29 = (1.0f / x_940);
  let x_942 : vec3<f32> = u_xlat0;
  let x_943 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_942, x_943);
  let x_948 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_948 == 0.0f));
  let x_950 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_950);
  let x_953 : f32 = u_xlat42;
  let x_955 : f32 = u_xlat2.x;
  u_xlat42 = (x_953 * x_955);
  let x_957 : f32 = u_xlat43;
  let x_960 : f32 = x_37.x_Glossiness;
  u_xlat43 = (-(x_957) + x_960);
  let x_962 : f32 = u_xlat43;
  u_xlat43 = (x_962 + 1.0f);
  let x_964 : f32 = u_xlat43;
  u_xlat43 = clamp(x_964, 0.0f, 1.0f);
  let x_966 : f32 = u_xlat15;
  let x_968 : vec3<f32> = u_xlat7;
  let x_969 : vec3<f32> = (vec3<f32>(x_966, x_966, x_966) * x_968);
  let x_970 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_969.x, x_969.y, x_970.z, x_969.z);
  let x_972 : vec3<f32> = u_xlat7;
  let x_973 : f32 = u_xlat42;
  u_xlat4 = (x_972 * vec3<f32>(x_973, x_973, x_973));
  let x_977 : f32 = u_xlat1.x;
  u_xlat42 = (-(x_977) + 1.0f);
  let x_980 : f32 = u_xlat42;
  let x_981 : f32 = u_xlat42;
  u_xlat1.x = (x_980 * x_981);
  let x_985 : f32 = u_xlat1.x;
  let x_987 : f32 = u_xlat1.x;
  u_xlat1.x = (x_985 * x_987);
  let x_990 : f32 = u_xlat42;
  let x_992 : f32 = u_xlat1.x;
  u_xlat42 = (x_990 * x_992);
  let x_994 : vec3<f32> = u_xlat0;
  u_xlat5 = (-(x_994) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_998 : vec3<f32> = u_xlat5;
  let x_999 : f32 = u_xlat42;
  let x_1002 : vec3<f32> = u_xlat0;
  u_xlat5 = ((x_998 * vec3<f32>(x_999, x_999, x_999)) + x_1002);
  let x_1004 : vec3<f32> = u_xlat4;
  let x_1005 : vec3<f32> = u_xlat5;
  u_xlat4 = (x_1004 * x_1005);
  let x_1007 : vec4<f32> = u_xlat3;
  let x_1009 : vec4<f32> = u_xlat2;
  let x_1012 : vec3<f32> = u_xlat4;
  let x_1013 : vec3<f32> = ((vec3<f32>(x_1007.x, x_1007.y, x_1007.z) * vec3<f32>(x_1009.x, x_1009.y, x_1009.w)) + x_1012);
  let x_1014 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1013.x, x_1013.y, x_1014.z, x_1013.z);
  let x_1016 : vec3<f32> = u_xlat9;
  let x_1017 : f32 = u_xlat29;
  u_xlat1 = (x_1016 * vec3<f32>(x_1017, x_1017, x_1017));
  let x_1020 : vec3<f32> = u_xlat0;
  let x_1022 : f32 = u_xlat43;
  let x_1024 : vec3<f32> = (-(x_1020) + vec3<f32>(x_1022, x_1022, x_1022));
  let x_1025 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1024.x, x_1024.y, x_1024.z, x_1025.w);
  let x_1027 : f32 = u_xlat30;
  let x_1029 : vec4<f32> = u_xlat3;
  let x_1032 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1027, x_1027, x_1027) * vec3<f32>(x_1029.x, x_1029.y, x_1029.z)) + x_1032);
  let x_1034 : vec3<f32> = u_xlat1;
  let x_1035 : vec3<f32> = u_xlat0;
  let x_1037 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1034 * x_1035) + vec3<f32>(x_1037.x, x_1037.y, x_1037.w));
  let x_1042 : vec3<f32> = u_xlat0;
  let x_1045 : vec4<f32> = x_37.x_AmbientColor;
  let x_1047 : vec3<f32> = (x_1042 + vec3<f32>(x_1045.x, x_1045.y, x_1045.z));
  let x_1048 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1047.x, x_1047.y, x_1047.z, x_1048.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

