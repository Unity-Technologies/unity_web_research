struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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

var<private> vs_TEXCOORD6 : f32;

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
  var x_427 : f32;
  var x_439 : f32;
  var x_451 : f32;
  var u_xlatb46 : bool;
  var u_xlat46 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_600 : f32;
  var x_612 : f32;
  var x_624 : f32;
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
  let x_304 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat43 = dot(x_301, x_304);
  let x_306 : f32 = u_xlat43;
  u_xlat43 = clamp(x_306, 0.0f, 1.0f);
  let x_308 : vec4<f32> = vs_TEXCOORD1;
  let x_310 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(vec3<f32>(x_308.x, x_308.y, x_308.z), x_310);
  let x_313 : vec4<f32> = vs_TEXCOORD2;
  let x_315 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(vec3<f32>(x_313.x, x_313.y, x_313.z), x_315);
  let x_318 : vec4<f32> = vs_TEXCOORD3;
  let x_320 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(vec3<f32>(x_318.x, x_318.y, x_318.z), x_320);
  let x_323 : vec4<f32> = u_xlat6;
  let x_325 : vec4<f32> = u_xlat6;
  u_xlat44 = dot(vec3<f32>(x_323.x, x_323.y, x_323.z), vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : f32 = u_xlat44;
  u_xlat44 = inverseSqrt(x_328);
  let x_330 : f32 = u_xlat44;
  let x_332 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_330, x_330, x_330) * vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_337 : f32 = x_37.x_Glossiness;
  u_xlat44 = (-(x_337) + 1.0f);
  let x_341 : vec4<f32> = u_xlat2;
  let x_344 : vec3<f32> = u_xlat5;
  u_xlat45 = dot(-(vec3<f32>(x_341.x, x_341.y, x_341.z)), x_344);
  let x_346 : f32 = u_xlat45;
  let x_347 : f32 = u_xlat45;
  u_xlat45 = (x_346 + x_347);
  let x_349 : vec3<f32> = u_xlat5;
  let x_350 : f32 = u_xlat45;
  let x_354 : vec4<f32> = u_xlat2;
  let x_357 : vec3<f32> = ((x_349 * -(vec3<f32>(x_350, x_350, x_350))) + -(vec3<f32>(x_354.x, x_354.y, x_354.z)));
  let x_358 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_357.x, x_357.y, x_357.z, x_358.w);
  let x_361 : f32 = u_xlat43;
  let x_365 : vec4<f32> = x_37.x_LightColor0;
  u_xlat7 = (vec3<f32>(x_361, x_361, x_361) * vec3<f32>(x_365.x, x_365.y, x_365.z));
  let x_370 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb43 = (0.0f < x_370);
  let x_372 : bool = u_xlatb43;
  if (x_372) {
    let x_375 : vec4<f32> = u_xlat6;
    let x_377 : vec4<f32> = u_xlat6;
    u_xlat43 = dot(vec3<f32>(x_375.x, x_375.y, x_375.z), vec3<f32>(x_377.x, x_377.y, x_377.z));
    let x_380 : f32 = u_xlat43;
    u_xlat43 = inverseSqrt(x_380);
    let x_383 : f32 = u_xlat43;
    let x_385 : vec4<f32> = u_xlat6;
    let x_387 : vec3<f32> = (vec3<f32>(x_383, x_383, x_383) * vec3<f32>(x_385.x, x_385.y, x_385.z));
    let x_388 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
    let x_391 : vec3<f32> = u_xlat0;
    let x_395 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    u_xlat9 = (-(x_391) + vec3<f32>(x_395.x, x_395.y, x_395.z));
    let x_398 : vec3<f32> = u_xlat9;
    let x_399 : vec4<f32> = u_xlat8;
    u_xlat9 = (x_398 / vec3<f32>(x_399.x, x_399.y, x_399.z));
    let x_403 : vec3<f32> = u_xlat0;
    let x_407 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat10 = (-(x_403) + vec3<f32>(x_407.x, x_407.y, x_407.z));
    let x_410 : vec3<f32> = u_xlat10;
    let x_411 : vec4<f32> = u_xlat8;
    u_xlat10 = (x_410 / vec3<f32>(x_411.x, x_411.y, x_411.z));
    let x_418 : vec4<f32> = u_xlat8;
    let x_421 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_418.x, x_418.y, x_418.z, x_418.x));
    u_xlatb11 = vec3<bool>(x_421.x, x_421.y, x_421.z);
    let x_424 : vec3<f32> = u_xlat9;
    hlslcc_movcTemp = x_424;
    let x_426 : bool = u_xlatb11.x;
    if (x_426) {
      let x_431 : f32 = u_xlat9.x;
      x_427 = x_431;
    } else {
      let x_434 : f32 = u_xlat10.x;
      x_427 = x_434;
    }
    let x_435 : f32 = x_427;
    hlslcc_movcTemp.x = x_435;
    let x_438 : bool = u_xlatb11.y;
    if (x_438) {
      let x_443 : f32 = u_xlat9.y;
      x_439 = x_443;
    } else {
      let x_446 : f32 = u_xlat10.y;
      x_439 = x_446;
    }
    let x_447 : f32 = x_439;
    hlslcc_movcTemp.y = x_447;
    let x_450 : bool = u_xlatb11.z;
    if (x_450) {
      let x_455 : f32 = u_xlat9.z;
      x_451 = x_455;
    } else {
      let x_458 : f32 = u_xlat10.z;
      x_451 = x_458;
    }
    let x_459 : f32 = x_451;
    hlslcc_movcTemp.z = x_459;
    let x_461 : vec3<f32> = hlslcc_movcTemp;
    u_xlat9 = x_461;
    let x_463 : f32 = u_xlat9.y;
    let x_465 : f32 = u_xlat9.x;
    u_xlat43 = min(x_463, x_465);
    let x_468 : f32 = u_xlat9.z;
    let x_469 : f32 = u_xlat43;
    u_xlat43 = min(x_468, x_469);
    let x_471 : vec3<f32> = u_xlat0;
    let x_473 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    u_xlat9 = (x_471 + -(vec3<f32>(x_473.x, x_473.y, x_473.z)));
    let x_477 : vec4<f32> = u_xlat8;
    let x_479 : f32 = u_xlat43;
    let x_482 : vec3<f32> = u_xlat9;
    let x_483 : vec3<f32> = ((vec3<f32>(x_477.x, x_477.y, x_477.z) * vec3<f32>(x_479, x_479, x_479)) + x_482);
    let x_484 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_483.x, x_483.y, x_483.z, x_484.w);
  } else {
    let x_487 : vec4<f32> = u_xlat6;
    let x_488 : vec3<f32> = vec3<f32>(x_487.x, x_487.y, x_487.z);
    let x_489 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
  }
  let x_491 : f32 = u_xlat44;
  u_xlat43 = ((-(x_491) * 0.699999988f) + 1.700000048f);
  let x_497 : f32 = u_xlat43;
  let x_498 : f32 = u_xlat44;
  u_xlat43 = (x_497 * x_498);
  let x_500 : f32 = u_xlat43;
  u_xlat43 = (x_500 * 6.0f);
  let x_511 : vec4<f32> = u_xlat8;
  let x_513 : f32 = u_xlat43;
  let x_514 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_511.x, x_511.y, x_511.z), x_513);
  u_xlat8 = x_514;
  let x_516 : f32 = u_xlat8.w;
  u_xlat45 = (x_516 + -1.0f);
  let x_520 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_521 : f32 = u_xlat45;
  u_xlat45 = ((x_520 * x_521) + 1.0f);
  let x_524 : f32 = u_xlat45;
  u_xlat45 = log2(x_524);
  let x_526 : f32 = u_xlat45;
  let x_528 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_526 * x_528);
  let x_530 : f32 = u_xlat45;
  u_xlat45 = exp2(x_530);
  let x_532 : f32 = u_xlat45;
  let x_534 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_532 * x_534);
  let x_536 : vec4<f32> = u_xlat8;
  let x_538 : f32 = u_xlat45;
  u_xlat9 = (vec3<f32>(x_536.x, x_536.y, x_536.z) * vec3<f32>(x_538, x_538, x_538));
  let x_543 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb46 = (x_543 < 0.999989986f);
  let x_546 : bool = u_xlatb46;
  if (x_546) {
    let x_551 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb46 = (0.0f < x_551);
    let x_553 : bool = u_xlatb46;
    if (x_553) {
      let x_557 : vec4<f32> = u_xlat6;
      let x_559 : vec4<f32> = u_xlat6;
      u_xlat46 = dot(vec3<f32>(x_557.x, x_557.y, x_557.z), vec3<f32>(x_559.x, x_559.y, x_559.z));
      let x_562 : f32 = u_xlat46;
      u_xlat46 = inverseSqrt(x_562);
      let x_564 : f32 = u_xlat46;
      let x_566 : vec4<f32> = u_xlat6;
      u_xlat10 = (vec3<f32>(x_564, x_564, x_564) * vec3<f32>(x_566.x, x_566.y, x_566.z));
      let x_570 : vec3<f32> = u_xlat0;
      let x_574 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat11 = (-(x_570) + vec3<f32>(x_574.x, x_574.y, x_574.z));
      let x_577 : vec3<f32> = u_xlat11;
      let x_578 : vec3<f32> = u_xlat10;
      u_xlat11 = (x_577 / x_578);
      let x_581 : vec3<f32> = u_xlat0;
      let x_585 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat12 = (-(x_581) + vec3<f32>(x_585.x, x_585.y, x_585.z));
      let x_588 : vec3<f32> = u_xlat12;
      let x_589 : vec3<f32> = u_xlat10;
      u_xlat12 = (x_588 / x_589);
      let x_592 : vec3<f32> = u_xlat10;
      let x_594 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_592.x, x_592.y, x_592.z, x_592.x));
      u_xlatb13 = vec3<bool>(x_594.x, x_594.y, x_594.z);
      let x_597 : vec3<f32> = u_xlat11;
      hlslcc_movcTemp_1 = x_597;
      let x_599 : bool = u_xlatb13.x;
      if (x_599) {
        let x_604 : f32 = u_xlat11.x;
        x_600 = x_604;
      } else {
        let x_607 : f32 = u_xlat12.x;
        x_600 = x_607;
      }
      let x_608 : f32 = x_600;
      hlslcc_movcTemp_1.x = x_608;
      let x_611 : bool = u_xlatb13.y;
      if (x_611) {
        let x_616 : f32 = u_xlat11.y;
        x_612 = x_616;
      } else {
        let x_619 : f32 = u_xlat12.y;
        x_612 = x_619;
      }
      let x_620 : f32 = x_612;
      hlslcc_movcTemp_1.y = x_620;
      let x_623 : bool = u_xlatb13.z;
      if (x_623) {
        let x_628 : f32 = u_xlat11.z;
        x_624 = x_628;
      } else {
        let x_631 : f32 = u_xlat12.z;
        x_624 = x_631;
      }
      let x_632 : f32 = x_624;
      hlslcc_movcTemp_1.z = x_632;
      let x_634 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat11 = x_634;
      let x_636 : f32 = u_xlat11.y;
      let x_638 : f32 = u_xlat11.x;
      u_xlat46 = min(x_636, x_638);
      let x_641 : f32 = u_xlat11.z;
      let x_642 : f32 = u_xlat46;
      u_xlat46 = min(x_641, x_642);
      let x_644 : vec3<f32> = u_xlat0;
      let x_646 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_644 + -(vec3<f32>(x_646.x, x_646.y, x_646.z)));
      let x_650 : vec3<f32> = u_xlat10;
      let x_651 : f32 = u_xlat46;
      let x_654 : vec3<f32> = u_xlat0;
      let x_655 : vec3<f32> = ((x_650 * vec3<f32>(x_651, x_651, x_651)) + x_654);
      let x_656 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_655.x, x_655.y, x_655.z, x_656.w);
    }
    let x_662 : vec4<f32> = u_xlat6;
    let x_664 : f32 = u_xlat43;
    let x_665 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_662.x, x_662.y, x_662.z), x_664);
    u_xlat6 = x_665;
    let x_667 : f32 = u_xlat6.w;
    u_xlat0.x = (x_667 + -1.0f);
    let x_672 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_674 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_672 * x_674) + 1.0f);
    let x_679 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_679);
    let x_683 : f32 = u_xlat0.x;
    let x_685 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_683 * x_685);
    let x_689 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_689);
    let x_693 : f32 = u_xlat0.x;
    let x_695 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_693 * x_695);
    let x_698 : vec4<f32> = u_xlat6;
    let x_700 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(x_700.x, x_700.x, x_700.x));
    let x_703 : f32 = u_xlat45;
    let x_705 : vec4<f32> = u_xlat8;
    let x_708 : vec3<f32> = u_xlat0;
    let x_710 : vec3<f32> = ((vec3<f32>(x_703, x_703, x_703) * vec3<f32>(x_705.x, x_705.y, x_705.z)) + -(x_708));
    let x_711 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
    let x_714 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_716 : vec4<f32> = u_xlat6;
    let x_719 : vec3<f32> = u_xlat0;
    u_xlat9 = ((vec3<f32>(x_714.w, x_714.w, x_714.w) * vec3<f32>(x_716.x, x_716.y, x_716.z)) + x_719);
  }
  let x_721 : vec4<f32> = u_xlat3;
  let x_723 : vec4<f32> = vs_COLOR0;
  u_xlat0 = ((vec3<f32>(x_721.x, x_721.y, x_721.z) * vec3<f32>(x_723.x, x_723.y, x_723.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_731 : f32 = x_37.x_Metallic;
  let x_733 : f32 = x_37.x_Metallic;
  let x_735 : f32 = x_37.x_Metallic;
  let x_736 : vec3<f32> = vec3<f32>(x_731, x_733, x_735);
  let x_741 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_736.x, x_736.y, x_736.z) * x_741) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_747 : f32 = x_37.x_Metallic;
  u_xlat43 = ((-(x_747) * 0.959999979f) + 0.959999979f);
  let x_752 : f32 = u_xlat43;
  let x_754 : vec3<f32> = u_xlat4;
  let x_755 : vec3<f32> = (vec3<f32>(x_752, x_752, x_752) * x_754);
  let x_756 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_755.x, x_755.y, x_755.z, x_756.w);
  let x_758 : vec3<f32> = u_xlat1;
  let x_759 : f32 = u_xlat42;
  let x_763 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_758 * vec3<f32>(x_759, x_759, x_759)) + vec3<f32>(x_763.x, x_763.y, x_763.z));
  let x_766 : vec3<f32> = u_xlat1;
  let x_767 : vec3<f32> = u_xlat1;
  u_xlat42 = dot(x_766, x_767);
  let x_769 : f32 = u_xlat42;
  u_xlat42 = max(x_769, 0.001f);
  let x_772 : f32 = u_xlat42;
  u_xlat42 = inverseSqrt(x_772);
  let x_774 : f32 = u_xlat42;
  let x_776 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_774, x_774, x_774) * x_776);
  let x_778 : vec3<f32> = u_xlat5;
  let x_779 : vec4<f32> = u_xlat2;
  u_xlat42 = dot(x_778, vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : vec3<f32> = u_xlat5;
  let x_784 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_782, vec3<f32>(x_784.x, x_784.y, x_784.z));
  let x_789 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_789, 0.0f, 1.0f);
  let x_793 : vec3<f32> = u_xlat5;
  let x_794 : vec3<f32> = u_xlat1;
  u_xlat16 = dot(x_793, x_794);
  let x_796 : f32 = u_xlat16;
  u_xlat16 = clamp(x_796, 0.0f, 1.0f);
  let x_799 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_801 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_799.x, x_799.y, x_799.z), x_801);
  let x_805 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_805, 0.0f, 1.0f);
  let x_810 : f32 = u_xlat1.x;
  let x_812 : f32 = u_xlat1.x;
  u_xlat15 = (x_810 * x_812);
  let x_814 : f32 = u_xlat15;
  let x_816 : f32 = u_xlat44;
  u_xlat15 = dot(vec2<f32>(x_814, x_814), vec2<f32>(x_816, x_816));
  let x_819 : f32 = u_xlat15;
  u_xlat15 = (x_819 + -0.5f);
  let x_824 : f32 = u_xlat2.x;
  u_xlat29 = (-(x_824) + 1.0f);
  let x_828 : f32 = u_xlat29;
  let x_829 : f32 = u_xlat29;
  u_xlat30 = (x_828 * x_829);
  let x_831 : f32 = u_xlat30;
  let x_832 : f32 = u_xlat30;
  u_xlat30 = (x_831 * x_832);
  let x_834 : f32 = u_xlat29;
  let x_835 : f32 = u_xlat30;
  u_xlat29 = (x_834 * x_835);
  let x_837 : f32 = u_xlat15;
  let x_838 : f32 = u_xlat29;
  u_xlat29 = ((x_837 * x_838) + 1.0f);
  let x_841 : f32 = u_xlat42;
  u_xlat30 = (-(abs(x_841)) + 1.0f);
  let x_845 : f32 = u_xlat30;
  let x_846 : f32 = u_xlat30;
  u_xlat45 = (x_845 * x_846);
  let x_848 : f32 = u_xlat45;
  let x_849 : f32 = u_xlat45;
  u_xlat45 = (x_848 * x_849);
  let x_851 : f32 = u_xlat30;
  let x_852 : f32 = u_xlat45;
  u_xlat30 = (x_851 * x_852);
  let x_854 : f32 = u_xlat15;
  let x_855 : f32 = u_xlat30;
  u_xlat15 = ((x_854 * x_855) + 1.0f);
  let x_858 : f32 = u_xlat15;
  let x_859 : f32 = u_xlat29;
  u_xlat15 = (x_858 * x_859);
  let x_862 : f32 = u_xlat2.x;
  let x_863 : f32 = u_xlat15;
  u_xlat15 = (x_862 * x_863);
  let x_865 : f32 = u_xlat44;
  let x_866 : f32 = u_xlat44;
  u_xlat29 = (x_865 * x_866);
  let x_868 : f32 = u_xlat29;
  u_xlat29 = max(x_868, 0.002f);
  let x_871 : f32 = u_xlat29;
  u_xlat44 = (-(x_871) + 1.0f);
  let x_874 : f32 = u_xlat42;
  let x_876 : f32 = u_xlat44;
  let x_878 : f32 = u_xlat29;
  u_xlat45 = ((abs(x_874) * x_876) + x_878);
  let x_881 : f32 = u_xlat2.x;
  let x_882 : f32 = u_xlat44;
  let x_884 : f32 = u_xlat29;
  u_xlat44 = ((x_881 * x_882) + x_884);
  let x_886 : f32 = u_xlat42;
  let x_888 : f32 = u_xlat44;
  u_xlat42 = (abs(x_886) * x_888);
  let x_891 : f32 = u_xlat2.x;
  let x_892 : f32 = u_xlat45;
  let x_894 : f32 = u_xlat42;
  u_xlat42 = ((x_891 * x_892) + x_894);
  let x_896 : f32 = u_xlat42;
  u_xlat42 = (x_896 + 0.00001f);
  let x_899 : f32 = u_xlat42;
  u_xlat42 = (0.5f / x_899);
  let x_901 : f32 = u_xlat29;
  let x_902 : f32 = u_xlat29;
  u_xlat44 = (x_901 * x_902);
  let x_904 : f32 = u_xlat16;
  let x_905 : f32 = u_xlat44;
  let x_907 : f32 = u_xlat16;
  u_xlat45 = ((x_904 * x_905) + -(x_907));
  let x_910 : f32 = u_xlat45;
  let x_911 : f32 = u_xlat16;
  u_xlat16 = ((x_910 * x_911) + 1.0f);
  let x_914 : f32 = u_xlat44;
  u_xlat44 = (x_914 * 0.318309873f);
  let x_917 : f32 = u_xlat16;
  let x_918 : f32 = u_xlat16;
  u_xlat16 = ((x_917 * x_918) + 0.0000001f);
  let x_922 : f32 = u_xlat44;
  let x_923 : f32 = u_xlat16;
  u_xlat16 = (x_922 / x_923);
  let x_925 : f32 = u_xlat42;
  let x_926 : f32 = u_xlat16;
  u_xlat42 = (x_925 * x_926);
  let x_929 : f32 = u_xlat2.x;
  let x_930 : f32 = u_xlat42;
  u_xlat42 = (x_929 * x_930);
  let x_932 : f32 = u_xlat42;
  u_xlat42 = (x_932 * 3.141592741f);
  let x_935 : f32 = u_xlat42;
  u_xlat42 = max(x_935, 0.0f);
  let x_937 : f32 = u_xlat29;
  let x_938 : f32 = u_xlat29;
  u_xlat29 = ((x_937 * x_938) + 1.0f);
  let x_941 : f32 = u_xlat29;
  u_xlat29 = (1.0f / x_941);
  let x_943 : vec3<f32> = u_xlat0;
  let x_944 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_943, x_944);
  let x_949 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_949 == 0.0f));
  let x_951 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_951);
  let x_954 : f32 = u_xlat42;
  let x_956 : f32 = u_xlat2.x;
  u_xlat42 = (x_954 * x_956);
  let x_958 : f32 = u_xlat43;
  let x_961 : f32 = x_37.x_Glossiness;
  u_xlat43 = (-(x_958) + x_961);
  let x_963 : f32 = u_xlat43;
  u_xlat43 = (x_963 + 1.0f);
  let x_965 : f32 = u_xlat43;
  u_xlat43 = clamp(x_965, 0.0f, 1.0f);
  let x_967 : f32 = u_xlat15;
  let x_969 : vec3<f32> = u_xlat7;
  let x_970 : vec3<f32> = (vec3<f32>(x_967, x_967, x_967) * x_969);
  let x_971 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_970.x, x_970.y, x_971.z, x_970.z);
  let x_973 : vec3<f32> = u_xlat7;
  let x_974 : f32 = u_xlat42;
  u_xlat4 = (x_973 * vec3<f32>(x_974, x_974, x_974));
  let x_978 : f32 = u_xlat1.x;
  u_xlat42 = (-(x_978) + 1.0f);
  let x_981 : f32 = u_xlat42;
  let x_982 : f32 = u_xlat42;
  u_xlat1.x = (x_981 * x_982);
  let x_986 : f32 = u_xlat1.x;
  let x_988 : f32 = u_xlat1.x;
  u_xlat1.x = (x_986 * x_988);
  let x_991 : f32 = u_xlat42;
  let x_993 : f32 = u_xlat1.x;
  u_xlat42 = (x_991 * x_993);
  let x_995 : vec3<f32> = u_xlat0;
  u_xlat5 = (-(x_995) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_999 : vec3<f32> = u_xlat5;
  let x_1000 : f32 = u_xlat42;
  let x_1003 : vec3<f32> = u_xlat0;
  u_xlat5 = ((x_999 * vec3<f32>(x_1000, x_1000, x_1000)) + x_1003);
  let x_1005 : vec3<f32> = u_xlat4;
  let x_1006 : vec3<f32> = u_xlat5;
  u_xlat4 = (x_1005 * x_1006);
  let x_1008 : vec4<f32> = u_xlat3;
  let x_1010 : vec4<f32> = u_xlat2;
  let x_1013 : vec3<f32> = u_xlat4;
  let x_1014 : vec3<f32> = ((vec3<f32>(x_1008.x, x_1008.y, x_1008.z) * vec3<f32>(x_1010.x, x_1010.y, x_1010.w)) + x_1013);
  let x_1015 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1014.x, x_1014.y, x_1015.z, x_1014.z);
  let x_1017 : vec3<f32> = u_xlat9;
  let x_1018 : f32 = u_xlat29;
  u_xlat1 = (x_1017 * vec3<f32>(x_1018, x_1018, x_1018));
  let x_1021 : vec3<f32> = u_xlat0;
  let x_1023 : f32 = u_xlat43;
  let x_1025 : vec3<f32> = (-(x_1021) + vec3<f32>(x_1023, x_1023, x_1023));
  let x_1026 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_1025.x, x_1025.y, x_1025.z, x_1026.w);
  let x_1028 : f32 = u_xlat30;
  let x_1030 : vec4<f32> = u_xlat3;
  let x_1033 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1028, x_1028, x_1028) * vec3<f32>(x_1030.x, x_1030.y, x_1030.z)) + x_1033);
  let x_1035 : vec3<f32> = u_xlat1;
  let x_1036 : vec3<f32> = u_xlat0;
  let x_1038 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1035 * x_1036) + vec3<f32>(x_1038.x, x_1038.y, x_1038.w));
  let x_1041 : vec3<f32> = u_xlat0;
  let x_1044 : vec4<f32> = x_37.x_AmbientColor;
  u_xlat0 = (x_1041 + vec3<f32>(x_1044.x, x_1044.y, x_1044.z));
  let x_1048 : f32 = vs_TEXCOORD6;
  let x_1050 : f32 = x_37.x_ProjectionParams.y;
  u_xlat42 = (x_1048 / x_1050);
  let x_1052 : f32 = u_xlat42;
  u_xlat42 = (-(x_1052) + 1.0f);
  let x_1055 : f32 = u_xlat42;
  let x_1057 : f32 = x_37.x_ProjectionParams.z;
  u_xlat42 = (x_1055 * x_1057);
  let x_1059 : f32 = u_xlat42;
  u_xlat42 = max(x_1059, 0.0f);
  let x_1061 : f32 = u_xlat42;
  let x_1064 : f32 = x_37.unity_FogParams.x;
  u_xlat42 = (x_1061 * x_1064);
  let x_1066 : f32 = u_xlat42;
  let x_1067 : f32 = u_xlat42;
  u_xlat42 = (x_1066 * -(x_1067));
  let x_1070 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1070);
  let x_1072 : vec3<f32> = u_xlat0;
  let x_1075 : vec4<f32> = x_37.unity_FogColor;
  u_xlat0 = (x_1072 + -(vec3<f32>(x_1075.x, x_1075.y, x_1075.z)));
  let x_1081 : f32 = u_xlat42;
  let x_1083 : vec3<f32> = u_xlat0;
  let x_1086 : vec4<f32> = x_37.unity_FogColor;
  let x_1088 : vec3<f32> = ((vec3<f32>(x_1081, x_1081, x_1081) * x_1083) + vec3<f32>(x_1086.x, x_1086.y, x_1086.z));
  let x_1089 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1088.x, x_1088.y, x_1088.z, x_1089.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_COLOR0_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

