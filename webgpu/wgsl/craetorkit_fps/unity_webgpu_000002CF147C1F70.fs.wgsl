struct PGlobals {
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
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  x_OcclusionStrength : f32,
  @size(4)
  padding_2 : u32,
  x_EmissionColor : vec4<f32>,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_45 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(13) var sampler_OcclusionMap : sampler;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(14) var sampler_EmissionMap : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat43 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb42 : bool;
  var u_xlat5 : vec4<f32>;
  var u_xlat20 : vec3<f32>;
  var x_251 : vec3<f32>;
  var u_xlat42 : f32;
  var u_xlat44 : f32;
  var u_xlat45 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat8 : vec3<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec3<f32>;
  var u_xlatb11 : vec3<bool>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_440 : f32;
  var x_452 : f32;
  var x_464 : f32;
  var u_xlatb46 : bool;
  var u_xlat46 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_622 : f32;
  var x_634 : f32;
  var x_646 : f32;
  var u_xlat17 : f32;
  var u_xlat31 : f32;
  var u_xlatb43 : bool;
  var u_xlat14 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_24.x, x_24.y));
  let x_27 : vec2<f32> = vec2<f32>(x_26.x, x_26.w);
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_27.x, x_27.y, x_28.z);
  let x_36 : vec4<f32> = vs_TEXCOORD0;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_36.x, x_36.y));
  u_xlat1 = vec3<f32>(x_38.x, x_38.y, x_38.z);
  let x_41 : vec3<f32> = u_xlat1;
  let x_50 : vec4<f32> = x_45.x_Color;
  u_xlat2 = (x_41 * vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_54 : vec4<f32> = x_45.x_Color;
  let x_56 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_54.x, x_54.y, x_54.z) * x_56) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_61 : vec3<f32> = u_xlat0;
  let x_63 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_61.x, x_61.x, x_61.x) * x_63) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_72 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_72) * 0.959999979f) + 0.959999979f);
  let x_78 : vec3<f32> = u_xlat0;
  let x_80 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_78.x, x_78.x, x_78.x) * x_80);
  let x_88 : vec4<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_88.x, x_88.y));
  u_xlat3 = vec3<f32>(x_90.x, x_90.y, x_90.w);
  let x_94 : f32 = u_xlat3.z;
  let x_96 : f32 = u_xlat3.x;
  u_xlat3.x = (x_94 * x_96);
  let x_101 : vec3<f32> = u_xlat3;
  u_xlat28 = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec2<f32> = u_xlat28;
  let x_113 : f32 = x_45.x_BumpScale;
  u_xlat28 = (x_109 * vec2<f32>(x_113, x_113));
  let x_117 : vec2<f32> = u_xlat28;
  let x_118 : vec2<f32> = u_xlat28;
  u_xlat43 = dot(x_117, x_118);
  let x_120 : f32 = u_xlat43;
  u_xlat43 = min(x_120, 1.0f);
  let x_123 : f32 = u_xlat43;
  u_xlat43 = (-(x_123) + 1.0f);
  let x_126 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_126);
  let x_128 : vec2<f32> = u_xlat28;
  let x_131 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_128.y, x_128.y, x_128.y) * vec3<f32>(x_131.x, x_131.y, x_131.z));
  let x_135 : vec4<f32> = vs_TEXCOORD2;
  let x_137 : vec2<f32> = u_xlat28;
  let x_140 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_135.x, x_135.y, x_135.z) * vec3<f32>(x_137.x, x_137.x, x_137.x)) + x_140);
  let x_143 : vec4<f32> = vs_TEXCOORD4;
  let x_145 : f32 = u_xlat43;
  let x_148 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_143.x, x_143.y, x_143.z) * vec3<f32>(x_145, x_145, x_145)) + x_148);
  let x_150 : vec3<f32> = u_xlat3;
  let x_151 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(x_150, x_151);
  let x_155 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_155);
  let x_158 : vec2<f32> = u_xlat28;
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_158.x, x_158.x, x_158.x) * x_160);
  let x_163 : vec4<f32> = vs_TEXCOORD1;
  let x_165 : vec4<f32> = vs_TEXCOORD1;
  u_xlat28.x = dot(vec3<f32>(x_163.x, x_163.y, x_163.z), vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_170 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_170);
  let x_174 : vec2<f32> = u_xlat28;
  let x_176 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_174.x, x_174.x, x_174.x) * vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_184 : f32 = x_45.unity_ProbeVolumeParams.x;
  u_xlatb42 = (x_184 == 1.0f);
  let x_186 : bool = u_xlatb42;
  if (x_186) {
    let x_191 : f32 = x_45.unity_ProbeVolumeParams.y;
    u_xlatb42 = (x_191 == 1.0f);
    let x_195 : vec4<f32> = vs_TEXCOORD3;
    let x_200 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[1i];
    let x_202 : vec3<f32> = (vec3<f32>(x_195.w, x_195.w, x_195.w) * vec3<f32>(x_200.x, x_200.y, x_200.z));
    let x_203 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_202.x, x_202.y, x_202.z, x_203.w);
    let x_207 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[0i];
    let x_209 : vec4<f32> = vs_TEXCOORD2;
    let x_212 : vec4<f32> = u_xlat5;
    let x_214 : vec3<f32> = ((vec3<f32>(x_207.x, x_207.y, x_207.z) * vec3<f32>(x_209.w, x_209.w, x_209.w)) + vec3<f32>(x_212.x, x_212.y, x_212.z));
    let x_215 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_214.x, x_214.y, x_214.z, x_215.w);
    let x_219 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[2i];
    let x_221 : vec4<f32> = vs_TEXCOORD4;
    let x_224 : vec4<f32> = u_xlat5;
    let x_226 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.w, x_221.w, x_221.w)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
    let x_227 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_229 : vec4<f32> = u_xlat5;
    let x_233 : vec4<f32> = x_45.unity_ProbeVolumeWorldToObject[3i];
    let x_235 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) + vec3<f32>(x_233.x, x_233.y, x_233.z));
    let x_236 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
    let x_242 : f32 = vs_TEXCOORD2.w;
    u_xlat20.x = x_242;
    let x_245 : f32 = vs_TEXCOORD3.w;
    u_xlat20.y = x_245;
    let x_248 : f32 = vs_TEXCOORD4.w;
    u_xlat20.z = x_248;
    let x_250 : bool = u_xlatb42;
    if (x_250) {
      let x_254 : vec4<f32> = u_xlat5;
      x_251 = vec3<f32>(x_254.x, x_254.y, x_254.z);
    } else {
      let x_257 : vec3<f32> = u_xlat20;
      x_251 = x_257;
    }
    let x_258 : vec3<f32> = x_251;
    let x_259 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_261 : vec4<f32> = u_xlat5;
    let x_266 : vec3<f32> = x_45.unity_ProbeVolumeMin;
    let x_268 : vec3<f32> = (vec3<f32>(x_261.x, x_261.y, x_261.z) + -(x_266));
    let x_269 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_268.x, x_268.y, x_268.z, x_269.w);
    let x_271 : vec4<f32> = u_xlat5;
    let x_275 : vec3<f32> = x_45.unity_ProbeVolumeSizeInv;
    let x_276 : vec3<f32> = (vec3<f32>(x_271.x, x_271.y, x_271.z) * x_275);
    let x_277 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_277.x, x_276.x, x_276.y, x_276.z);
    let x_281 : f32 = u_xlat5.y;
    u_xlat42 = ((x_281 * 0.25f) + 0.75f);
    let x_287 : f32 = x_45.unity_ProbeVolumeParams.z;
    u_xlat43 = ((x_287 * 0.5f) + 0.75f);
    let x_291 : f32 = u_xlat42;
    let x_292 : f32 = u_xlat43;
    u_xlat5.x = max(x_291, x_292);
    let x_303 : vec4<f32> = u_xlat5;
    let x_305 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_303.x, x_303.z, x_303.w));
    u_xlat5 = x_305;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_311 : vec4<f32> = u_xlat5;
  let x_313 : vec4<f32> = x_45.unity_OcclusionMaskSelector;
  u_xlat42 = dot(x_311, x_313);
  let x_315 : f32 = u_xlat42;
  u_xlat42 = clamp(x_315, 0.0f, 1.0f);
  let x_323 : vec4<f32> = vs_TEXCOORD0;
  let x_325 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_323.x, x_323.y));
  u_xlat43 = x_325.y;
  let x_330 : f32 = x_45.x_OcclusionStrength;
  u_xlat44 = (-(x_330) + 1.0f);
  let x_333 : f32 = u_xlat43;
  let x_335 : f32 = x_45.x_OcclusionStrength;
  let x_337 : f32 = u_xlat44;
  u_xlat43 = ((x_333 * x_335) + x_337);
  let x_340 : f32 = u_xlat0.y;
  let x_344 : f32 = x_45.x_GlossMapScale;
  u_xlat44 = ((-(x_340) * x_344) + 1.0f);
  let x_348 : vec3<f32> = u_xlat4;
  let x_349 : vec3<f32> = u_xlat3;
  u_xlat45 = dot(x_348, x_349);
  let x_351 : f32 = u_xlat45;
  let x_352 : f32 = u_xlat45;
  u_xlat45 = (x_351 + x_352);
  let x_354 : vec3<f32> = u_xlat3;
  let x_355 : f32 = u_xlat45;
  let x_359 : vec3<f32> = u_xlat4;
  let x_360 : vec3<f32> = ((x_354 * -(vec3<f32>(x_355, x_355, x_355))) + x_359);
  let x_361 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_360.x, x_360.y, x_360.z, x_361.w);
  let x_364 : f32 = u_xlat42;
  let x_368 : vec4<f32> = x_45.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_364, x_364, x_364) * vec3<f32>(x_368.x, x_368.y, x_368.z));
  let x_373 : f32 = x_45.unity_SpecCube0_ProbePosition.w;
  u_xlatb42 = (0.0f < x_373);
  let x_375 : bool = u_xlatb42;
  if (x_375) {
    let x_378 : vec4<f32> = u_xlat5;
    let x_380 : vec4<f32> = u_xlat5;
    u_xlat42 = dot(vec3<f32>(x_378.x, x_378.y, x_378.z), vec3<f32>(x_380.x, x_380.y, x_380.z));
    let x_383 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_383);
    let x_386 : f32 = u_xlat42;
    let x_388 : vec4<f32> = u_xlat5;
    let x_390 : vec3<f32> = (vec3<f32>(x_386, x_386, x_386) * vec3<f32>(x_388.x, x_388.y, x_388.z));
    let x_391 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
    let x_395 : f32 = vs_TEXCOORD2.w;
    u_xlat8.x = x_395;
    let x_398 : f32 = vs_TEXCOORD3.w;
    u_xlat8.y = x_398;
    let x_401 : f32 = vs_TEXCOORD4.w;
    u_xlat8.z = x_401;
    let x_404 : vec3<f32> = u_xlat8;
    let x_408 : vec4<f32> = x_45.unity_SpecCube0_BoxMax;
    u_xlat9 = (-(x_404) + vec3<f32>(x_408.x, x_408.y, x_408.z));
    let x_411 : vec3<f32> = u_xlat9;
    let x_412 : vec4<f32> = u_xlat7;
    u_xlat9 = (x_411 / vec3<f32>(x_412.x, x_412.y, x_412.z));
    let x_416 : vec3<f32> = u_xlat8;
    let x_420 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    u_xlat10 = (-(x_416) + vec3<f32>(x_420.x, x_420.y, x_420.z));
    let x_423 : vec3<f32> = u_xlat10;
    let x_424 : vec4<f32> = u_xlat7;
    u_xlat10 = (x_423 / vec3<f32>(x_424.x, x_424.y, x_424.z));
    let x_431 : vec4<f32> = u_xlat7;
    let x_434 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_431.x, x_431.y, x_431.z, x_431.x));
    u_xlatb11 = vec3<bool>(x_434.x, x_434.y, x_434.z);
    let x_437 : vec3<f32> = u_xlat9;
    hlslcc_movcTemp = x_437;
    let x_439 : bool = u_xlatb11.x;
    if (x_439) {
      let x_444 : f32 = u_xlat9.x;
      x_440 = x_444;
    } else {
      let x_447 : f32 = u_xlat10.x;
      x_440 = x_447;
    }
    let x_448 : f32 = x_440;
    hlslcc_movcTemp.x = x_448;
    let x_451 : bool = u_xlatb11.y;
    if (x_451) {
      let x_456 : f32 = u_xlat9.y;
      x_452 = x_456;
    } else {
      let x_459 : f32 = u_xlat10.y;
      x_452 = x_459;
    }
    let x_460 : f32 = x_452;
    hlslcc_movcTemp.y = x_460;
    let x_463 : bool = u_xlatb11.z;
    if (x_463) {
      let x_468 : f32 = u_xlat9.z;
      x_464 = x_468;
    } else {
      let x_471 : f32 = u_xlat10.z;
      x_464 = x_471;
    }
    let x_472 : f32 = x_464;
    hlslcc_movcTemp.z = x_472;
    let x_474 : vec3<f32> = hlslcc_movcTemp;
    u_xlat9 = x_474;
    let x_476 : f32 = u_xlat9.y;
    let x_478 : f32 = u_xlat9.x;
    u_xlat42 = min(x_476, x_478);
    let x_481 : f32 = u_xlat9.z;
    let x_482 : f32 = u_xlat42;
    u_xlat42 = min(x_481, x_482);
    let x_484 : vec3<f32> = u_xlat8;
    let x_486 : vec4<f32> = x_45.unity_SpecCube0_ProbePosition;
    u_xlat8 = (x_484 + -(vec3<f32>(x_486.x, x_486.y, x_486.z)));
    let x_490 : vec4<f32> = u_xlat7;
    let x_492 : f32 = u_xlat42;
    let x_495 : vec3<f32> = u_xlat8;
    let x_496 : vec3<f32> = ((vec3<f32>(x_490.x, x_490.y, x_490.z) * vec3<f32>(x_492, x_492, x_492)) + x_495);
    let x_497 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_496.x, x_496.y, x_496.z, x_497.w);
  } else {
    let x_500 : vec4<f32> = u_xlat5;
    let x_501 : vec3<f32> = vec3<f32>(x_500.x, x_500.y, x_500.z);
    let x_502 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_501.x, x_501.y, x_501.z, x_502.w);
  }
  let x_504 : f32 = u_xlat44;
  u_xlat42 = ((-(x_504) * 0.699999988f) + 1.700000048f);
  let x_510 : f32 = u_xlat42;
  let x_511 : f32 = u_xlat44;
  u_xlat42 = (x_510 * x_511);
  let x_513 : f32 = u_xlat42;
  u_xlat42 = (x_513 * 6.0f);
  let x_524 : vec4<f32> = u_xlat7;
  let x_526 : f32 = u_xlat42;
  let x_527 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_524.x, x_524.y, x_524.z), x_526);
  u_xlat7 = x_527;
  let x_529 : f32 = u_xlat7.w;
  u_xlat45 = (x_529 + -1.0f);
  let x_533 : f32 = x_45.unity_SpecCube0_HDR.w;
  let x_534 : f32 = u_xlat45;
  u_xlat45 = ((x_533 * x_534) + 1.0f);
  let x_537 : f32 = u_xlat45;
  u_xlat45 = log2(x_537);
  let x_539 : f32 = u_xlat45;
  let x_541 : f32 = x_45.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_539 * x_541);
  let x_543 : f32 = u_xlat45;
  u_xlat45 = exp2(x_543);
  let x_545 : f32 = u_xlat45;
  let x_547 : f32 = x_45.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_545 * x_547);
  let x_549 : vec4<f32> = u_xlat7;
  let x_551 : f32 = u_xlat45;
  u_xlat8 = (vec3<f32>(x_549.x, x_549.y, x_549.z) * vec3<f32>(x_551, x_551, x_551));
  let x_556 : f32 = x_45.unity_SpecCube0_BoxMin.w;
  u_xlatb46 = (x_556 < 0.999989986f);
  let x_559 : bool = u_xlatb46;
  if (x_559) {
    let x_564 : f32 = x_45.unity_SpecCube1_ProbePosition.w;
    u_xlatb46 = (0.0f < x_564);
    let x_566 : bool = u_xlatb46;
    if (x_566) {
      let x_570 : vec4<f32> = u_xlat5;
      let x_572 : vec4<f32> = u_xlat5;
      u_xlat46 = dot(vec3<f32>(x_570.x, x_570.y, x_570.z), vec3<f32>(x_572.x, x_572.y, x_572.z));
      let x_575 : f32 = u_xlat46;
      u_xlat46 = inverseSqrt(x_575);
      let x_577 : f32 = u_xlat46;
      let x_579 : vec4<f32> = u_xlat5;
      u_xlat9 = (vec3<f32>(x_577, x_577, x_577) * vec3<f32>(x_579.x, x_579.y, x_579.z));
      let x_583 : f32 = vs_TEXCOORD2.w;
      u_xlat10.x = x_583;
      let x_586 : f32 = vs_TEXCOORD3.w;
      u_xlat10.y = x_586;
      let x_589 : f32 = vs_TEXCOORD4.w;
      u_xlat10.z = x_589;
      let x_592 : vec3<f32> = u_xlat10;
      let x_596 : vec4<f32> = x_45.unity_SpecCube1_BoxMax;
      u_xlat11 = (-(x_592) + vec3<f32>(x_596.x, x_596.y, x_596.z));
      let x_599 : vec3<f32> = u_xlat11;
      let x_600 : vec3<f32> = u_xlat9;
      u_xlat11 = (x_599 / x_600);
      let x_603 : vec3<f32> = u_xlat10;
      let x_607 : vec4<f32> = x_45.unity_SpecCube1_BoxMin;
      u_xlat12 = (-(x_603) + vec3<f32>(x_607.x, x_607.y, x_607.z));
      let x_610 : vec3<f32> = u_xlat12;
      let x_611 : vec3<f32> = u_xlat9;
      u_xlat12 = (x_610 / x_611);
      let x_614 : vec3<f32> = u_xlat9;
      let x_616 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_614.x, x_614.y, x_614.z, x_614.x));
      u_xlatb13 = vec3<bool>(x_616.x, x_616.y, x_616.z);
      let x_619 : vec3<f32> = u_xlat11;
      hlslcc_movcTemp_1 = x_619;
      let x_621 : bool = u_xlatb13.x;
      if (x_621) {
        let x_626 : f32 = u_xlat11.x;
        x_622 = x_626;
      } else {
        let x_629 : f32 = u_xlat12.x;
        x_622 = x_629;
      }
      let x_630 : f32 = x_622;
      hlslcc_movcTemp_1.x = x_630;
      let x_633 : bool = u_xlatb13.y;
      if (x_633) {
        let x_638 : f32 = u_xlat11.y;
        x_634 = x_638;
      } else {
        let x_641 : f32 = u_xlat12.y;
        x_634 = x_641;
      }
      let x_642 : f32 = x_634;
      hlslcc_movcTemp_1.y = x_642;
      let x_645 : bool = u_xlatb13.z;
      if (x_645) {
        let x_650 : f32 = u_xlat11.z;
        x_646 = x_650;
      } else {
        let x_653 : f32 = u_xlat12.z;
        x_646 = x_653;
      }
      let x_654 : f32 = x_646;
      hlslcc_movcTemp_1.z = x_654;
      let x_656 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat11 = x_656;
      let x_658 : f32 = u_xlat11.y;
      let x_660 : f32 = u_xlat11.x;
      u_xlat46 = min(x_658, x_660);
      let x_663 : f32 = u_xlat11.z;
      let x_664 : f32 = u_xlat46;
      u_xlat46 = min(x_663, x_664);
      let x_666 : vec3<f32> = u_xlat10;
      let x_668 : vec4<f32> = x_45.unity_SpecCube1_ProbePosition;
      u_xlat10 = (x_666 + -(vec3<f32>(x_668.x, x_668.y, x_668.z)));
      let x_672 : vec3<f32> = u_xlat9;
      let x_673 : f32 = u_xlat46;
      let x_676 : vec3<f32> = u_xlat10;
      let x_677 : vec3<f32> = ((x_672 * vec3<f32>(x_673, x_673, x_673)) + x_676);
      let x_678 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_677.x, x_677.y, x_677.z, x_678.w);
    }
    let x_684 : vec4<f32> = u_xlat5;
    let x_686 : f32 = u_xlat42;
    let x_687 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_684.x, x_684.y, x_684.z), x_686);
    u_xlat5 = x_687;
    let x_689 : f32 = u_xlat5.w;
    u_xlat42 = (x_689 + -1.0f);
    let x_693 : f32 = x_45.unity_SpecCube1_HDR.w;
    let x_694 : f32 = u_xlat42;
    u_xlat42 = ((x_693 * x_694) + 1.0f);
    let x_697 : f32 = u_xlat42;
    u_xlat42 = log2(x_697);
    let x_699 : f32 = u_xlat42;
    let x_701 : f32 = x_45.unity_SpecCube1_HDR.y;
    u_xlat42 = (x_699 * x_701);
    let x_703 : f32 = u_xlat42;
    u_xlat42 = exp2(x_703);
    let x_705 : f32 = u_xlat42;
    let x_707 : f32 = x_45.unity_SpecCube1_HDR.x;
    u_xlat42 = (x_705 * x_707);
    let x_709 : vec4<f32> = u_xlat5;
    let x_711 : f32 = u_xlat42;
    let x_713 : vec3<f32> = (vec3<f32>(x_709.x, x_709.y, x_709.z) * vec3<f32>(x_711, x_711, x_711));
    let x_714 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_713.x, x_713.y, x_713.z, x_714.w);
    let x_716 : f32 = u_xlat45;
    let x_718 : vec4<f32> = u_xlat7;
    let x_721 : vec4<f32> = u_xlat5;
    let x_724 : vec3<f32> = ((vec3<f32>(x_716, x_716, x_716) * vec3<f32>(x_718.x, x_718.y, x_718.z)) + -(vec3<f32>(x_721.x, x_721.y, x_721.z)));
    let x_725 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
    let x_728 : vec4<f32> = x_45.unity_SpecCube0_BoxMin;
    let x_730 : vec4<f32> = u_xlat7;
    let x_733 : vec4<f32> = u_xlat5;
    u_xlat8 = ((vec3<f32>(x_728.w, x_728.w, x_728.w) * vec3<f32>(x_730.x, x_730.y, x_730.z)) + vec3<f32>(x_733.x, x_733.y, x_733.z));
  }
  let x_736 : f32 = u_xlat43;
  let x_738 : vec3<f32> = u_xlat8;
  let x_739 : vec3<f32> = (vec3<f32>(x_736, x_736, x_736) * x_738);
  let x_740 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_739.x, x_739.y, x_739.z, x_740.w);
  let x_742 : vec4<f32> = vs_TEXCOORD1;
  let x_745 : vec2<f32> = u_xlat28;
  let x_749 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_751 : vec3<f32> = ((-(vec3<f32>(x_742.x, x_742.y, x_742.z)) * vec3<f32>(x_745.x, x_745.x, x_745.x)) + vec3<f32>(x_749.x, x_749.y, x_749.z));
  let x_752 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_751.x, x_751.y, x_751.z, x_752.w);
  let x_754 : vec4<f32> = u_xlat7;
  let x_756 : vec4<f32> = u_xlat7;
  u_xlat28.x = dot(vec3<f32>(x_754.x, x_754.y, x_754.z), vec3<f32>(x_756.x, x_756.y, x_756.z));
  let x_761 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_761, 0.001f);
  let x_766 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_766);
  let x_769 : vec2<f32> = u_xlat28;
  let x_771 : vec4<f32> = u_xlat7;
  let x_773 : vec3<f32> = (vec3<f32>(x_769.x, x_769.x, x_769.x) * vec3<f32>(x_771.x, x_771.y, x_771.z));
  let x_774 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_773.x, x_773.y, x_773.z, x_774.w);
  let x_776 : vec3<f32> = u_xlat3;
  let x_777 : vec3<f32> = u_xlat4;
  u_xlat28.x = dot(x_776, -(x_777));
  let x_781 : vec3<f32> = u_xlat3;
  let x_783 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  u_xlat42 = dot(x_781, vec3<f32>(x_783.x, x_783.y, x_783.z));
  let x_786 : f32 = u_xlat42;
  u_xlat42 = clamp(x_786, 0.0f, 1.0f);
  let x_788 : vec3<f32> = u_xlat3;
  let x_789 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(x_788, vec3<f32>(x_789.x, x_789.y, x_789.z));
  let x_792 : f32 = u_xlat43;
  u_xlat43 = clamp(x_792, 0.0f, 1.0f);
  let x_795 : vec4<f32> = x_45.x_WorldSpaceLightPos0;
  let x_797 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_795.x, x_795.y, x_795.z), vec3<f32>(x_797.x, x_797.y, x_797.z));
  let x_802 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_802, 0.0f, 1.0f);
  let x_807 : f32 = u_xlat3.x;
  let x_809 : f32 = u_xlat3.x;
  u_xlat17 = (x_807 * x_809);
  let x_811 : f32 = u_xlat17;
  let x_813 : f32 = u_xlat44;
  u_xlat17 = dot(vec2<f32>(x_811, x_811), vec2<f32>(x_813, x_813));
  let x_816 : f32 = u_xlat17;
  u_xlat17 = (x_816 + -0.5f);
  let x_820 : f32 = u_xlat42;
  u_xlat31 = (-(x_820) + 1.0f);
  let x_823 : f32 = u_xlat31;
  let x_824 : f32 = u_xlat31;
  u_xlat45 = (x_823 * x_824);
  let x_826 : f32 = u_xlat45;
  let x_827 : f32 = u_xlat45;
  u_xlat45 = (x_826 * x_827);
  let x_829 : f32 = u_xlat31;
  let x_830 : f32 = u_xlat45;
  u_xlat31 = (x_829 * x_830);
  let x_832 : f32 = u_xlat17;
  let x_833 : f32 = u_xlat31;
  u_xlat31 = ((x_832 * x_833) + 1.0f);
  let x_837 : f32 = u_xlat28.x;
  u_xlat45 = (-(abs(x_837)) + 1.0f);
  let x_841 : f32 = u_xlat45;
  let x_842 : f32 = u_xlat45;
  u_xlat4.x = (x_841 * x_842);
  let x_846 : f32 = u_xlat4.x;
  let x_848 : f32 = u_xlat4.x;
  u_xlat4.x = (x_846 * x_848);
  let x_851 : f32 = u_xlat45;
  let x_853 : f32 = u_xlat4.x;
  u_xlat45 = (x_851 * x_853);
  let x_855 : f32 = u_xlat17;
  let x_856 : f32 = u_xlat45;
  u_xlat17 = ((x_855 * x_856) + 1.0f);
  let x_859 : f32 = u_xlat17;
  let x_860 : f32 = u_xlat31;
  u_xlat17 = (x_859 * x_860);
  let x_862 : f32 = u_xlat42;
  let x_863 : f32 = u_xlat17;
  u_xlat17 = (x_862 * x_863);
  let x_865 : f32 = u_xlat44;
  let x_866 : f32 = u_xlat44;
  u_xlat44 = (x_865 * x_866);
  let x_868 : f32 = u_xlat44;
  u_xlat44 = max(x_868, 0.002f);
  let x_871 : f32 = u_xlat44;
  u_xlat31 = (-(x_871) + 1.0f);
  let x_875 : f32 = u_xlat28.x;
  let x_877 : f32 = u_xlat31;
  let x_879 : f32 = u_xlat44;
  u_xlat4.x = ((abs(x_875) * x_877) + x_879);
  let x_882 : f32 = u_xlat42;
  let x_883 : f32 = u_xlat31;
  let x_885 : f32 = u_xlat44;
  u_xlat31 = ((x_882 * x_883) + x_885);
  let x_888 : f32 = u_xlat28.x;
  let x_890 : f32 = u_xlat31;
  u_xlat28.x = (abs(x_888) * x_890);
  let x_893 : f32 = u_xlat42;
  let x_895 : f32 = u_xlat4.x;
  let x_898 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_893 * x_895) + x_898);
  let x_902 : f32 = u_xlat28.x;
  u_xlat28.x = (x_902 + 0.00001f);
  let x_907 : f32 = u_xlat28.x;
  u_xlat28.x = (0.5f / x_907);
  let x_910 : f32 = u_xlat44;
  let x_911 : f32 = u_xlat44;
  u_xlat31 = (x_910 * x_911);
  let x_913 : f32 = u_xlat43;
  let x_914 : f32 = u_xlat31;
  let x_916 : f32 = u_xlat43;
  u_xlat4.x = ((x_913 * x_914) + -(x_916));
  let x_921 : f32 = u_xlat4.x;
  let x_922 : f32 = u_xlat43;
  u_xlat43 = ((x_921 * x_922) + 1.0f);
  let x_925 : f32 = u_xlat31;
  u_xlat31 = (x_925 * 0.318309873f);
  let x_928 : f32 = u_xlat43;
  let x_929 : f32 = u_xlat43;
  u_xlat43 = ((x_928 * x_929) + 0.0000001f);
  let x_933 : f32 = u_xlat31;
  let x_934 : f32 = u_xlat43;
  u_xlat43 = (x_933 / x_934);
  let x_937 : f32 = u_xlat28.x;
  let x_938 : f32 = u_xlat43;
  u_xlat28.x = (x_937 * x_938);
  let x_941 : f32 = u_xlat42;
  let x_943 : f32 = u_xlat28.x;
  u_xlat28.x = (x_941 * x_943);
  let x_947 : f32 = u_xlat28.x;
  u_xlat28.x = (x_947 * 3.141592741f);
  let x_952 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_952, 0.0f);
  let x_955 : f32 = u_xlat44;
  let x_956 : f32 = u_xlat44;
  u_xlat42 = ((x_955 * x_956) + 1.0f);
  let x_959 : f32 = u_xlat42;
  u_xlat42 = (1.0f / x_959);
  let x_961 : vec3<f32> = u_xlat1;
  let x_962 : vec3<f32> = u_xlat1;
  u_xlat43 = dot(x_961, x_962);
  let x_965 : f32 = u_xlat43;
  u_xlatb43 = !((x_965 == 0.0f));
  let x_967 : bool = u_xlatb43;
  u_xlat43 = select(0.0f, 1.0f, x_967);
  let x_970 : f32 = u_xlat28.x;
  let x_971 : f32 = u_xlat43;
  u_xlat28.x = (x_970 * x_971);
  let x_975 : f32 = u_xlat0.y;
  let x_977 : f32 = x_45.x_GlossMapScale;
  let x_980 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_975 * x_977) + -(x_980));
  let x_985 : f32 = u_xlat0.x;
  u_xlat0.x = (x_985 + 1.0f);
  let x_989 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_989, 0.0f, 1.0f);
  let x_992 : f32 = u_xlat17;
  let x_994 : vec3<f32> = u_xlat6;
  u_xlat4 = (vec3<f32>(x_992, x_992, x_992) * x_994);
  let x_996 : vec3<f32> = u_xlat6;
  let x_997 : vec2<f32> = u_xlat28;
  u_xlat6 = (x_996 * vec3<f32>(x_997.x, x_997.x, x_997.x));
  let x_1002 : f32 = u_xlat3.x;
  u_xlat14.x = (-(x_1002) + 1.0f);
  let x_1007 : f32 = u_xlat14.x;
  let x_1009 : f32 = u_xlat14.x;
  u_xlat28.x = (x_1007 * x_1009);
  let x_1013 : f32 = u_xlat28.x;
  let x_1015 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1013 * x_1015);
  let x_1019 : f32 = u_xlat14.x;
  let x_1021 : f32 = u_xlat28.x;
  u_xlat14.x = (x_1019 * x_1021);
  let x_1024 : vec3<f32> = u_xlat1;
  u_xlat3 = (-(x_1024) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1028 : vec3<f32> = u_xlat3;
  let x_1029 : vec3<f32> = u_xlat14;
  let x_1032 : vec3<f32> = u_xlat1;
  u_xlat3 = ((x_1028 * vec3<f32>(x_1029.x, x_1029.x, x_1029.x)) + x_1032);
  let x_1034 : vec3<f32> = u_xlat3;
  let x_1035 : vec3<f32> = u_xlat6;
  u_xlat3 = (x_1034 * x_1035);
  let x_1037 : vec3<f32> = u_xlat2;
  let x_1038 : vec3<f32> = u_xlat4;
  let x_1040 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_1037 * x_1038) + x_1040);
  let x_1042 : vec4<f32> = u_xlat5;
  let x_1044 : f32 = u_xlat42;
  u_xlat14 = (vec3<f32>(x_1042.x, x_1042.y, x_1042.z) * vec3<f32>(x_1044, x_1044, x_1044));
  let x_1047 : vec3<f32> = u_xlat1;
  let x_1049 : vec3<f32> = u_xlat0;
  u_xlat3 = (-(x_1047) + vec3<f32>(x_1049.x, x_1049.x, x_1049.x));
  let x_1052 : f32 = u_xlat45;
  let x_1054 : vec3<f32> = u_xlat3;
  let x_1056 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1052, x_1052, x_1052) * x_1054) + x_1056);
  let x_1058 : vec3<f32> = u_xlat14;
  let x_1059 : vec3<f32> = u_xlat1;
  let x_1061 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_1058 * x_1059) + x_1061);
  let x_1068 : vec4<f32> = vs_TEXCOORD0;
  let x_1070 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_1068.x, x_1068.y));
  u_xlat1 = vec3<f32>(x_1070.x, x_1070.y, x_1070.z);
  let x_1072 : vec3<f32> = u_xlat1;
  let x_1075 : vec4<f32> = x_45.x_EmissionColor;
  let x_1078 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_1072 * vec3<f32>(x_1075.x, x_1075.y, x_1075.z)) + x_1078);
  let x_1081 : f32 = vs_TEXCOORD1.w;
  let x_1083 : f32 = x_45.x_ProjectionParams.y;
  u_xlat42 = (x_1081 / x_1083);
  let x_1085 : f32 = u_xlat42;
  u_xlat42 = (-(x_1085) + 1.0f);
  let x_1088 : f32 = u_xlat42;
  let x_1090 : f32 = x_45.x_ProjectionParams.z;
  u_xlat42 = (x_1088 * x_1090);
  let x_1092 : f32 = u_xlat42;
  u_xlat42 = max(x_1092, 0.0f);
  let x_1094 : f32 = u_xlat42;
  let x_1097 : f32 = x_45.unity_FogParams.x;
  u_xlat42 = (x_1094 * x_1097);
  let x_1099 : f32 = u_xlat42;
  let x_1100 : f32 = u_xlat42;
  u_xlat42 = (x_1099 * -(x_1100));
  let x_1103 : f32 = u_xlat42;
  u_xlat42 = exp2(x_1103);
  let x_1105 : vec3<f32> = u_xlat0;
  let x_1107 : vec4<f32> = x_45.unity_FogColor;
  u_xlat0 = (x_1105 + -(vec3<f32>(x_1107.x, x_1107.y, x_1107.z)));
  let x_1113 : f32 = u_xlat42;
  let x_1115 : vec3<f32> = u_xlat0;
  let x_1118 : vec4<f32> = x_45.unity_FogColor;
  let x_1120 : vec3<f32> = ((vec3<f32>(x_1113, x_1113, x_1113) * x_1115) + vec3<f32>(x_1118.x, x_1118.y, x_1118.z));
  let x_1121 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1120.x, x_1120.y, x_1120.z, x_1121.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

