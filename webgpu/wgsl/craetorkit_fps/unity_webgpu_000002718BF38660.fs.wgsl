struct PGlobals {
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
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_BumpScale : f32,
  x_GlossMapScale : f32,
  x_OcclusionStrength : f32,
}

@group(0) @binding(1) var x_MetallicGlossMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_MetallicGlossMap : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

@group(1) @binding(0) var<uniform> x_44 : PGlobals;

@group(0) @binding(2) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_OcclusionMap : sampler;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec2<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat28 : vec2<f32>;
  var u_xlat43 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlatb42 : bool;
  var u_xlat5 : vec4<f32>;
  var u_xlat20 : vec3<f32>;
  var x_249 : vec3<f32>;
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
  var x_436 : f32;
  var x_448 : f32;
  var x_460 : f32;
  var u_xlatb46 : bool;
  var u_xlat46 : f32;
  var u_xlat11 : vec3<f32>;
  var u_xlat12 : vec3<f32>;
  var u_xlatb13 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_618 : f32;
  var x_630 : f32;
  var x_642 : f32;
  var u_xlat17 : f32;
  var u_xlat31 : f32;
  var u_xlatb43 : bool;
  var u_xlat14 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MetallicGlossMap, sampler_MetallicGlossMap, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = vec2<f32>(x_25.x, x_25.w);
  let x_35 : vec4<f32> = vs_TEXCOORD0;
  let x_37 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_35.x, x_35.y));
  u_xlat1 = vec3<f32>(x_37.x, x_37.y, x_37.z);
  let x_40 : vec3<f32> = u_xlat1;
  let x_49 : vec4<f32> = x_44.x_Color;
  u_xlat2 = (x_40 * vec3<f32>(x_49.x, x_49.y, x_49.z));
  let x_53 : vec4<f32> = x_44.x_Color;
  let x_55 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_53.x, x_53.y, x_53.z) * x_55) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_60 : vec2<f32> = u_xlat0;
  let x_62 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_60.x, x_60.x, x_60.x) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_71 : f32 = u_xlat0.x;
  u_xlat0.x = ((-(x_71) * 0.959999979f) + 0.959999979f);
  let x_77 : vec2<f32> = u_xlat0;
  let x_79 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_77.x, x_77.x, x_77.x) * x_79);
  let x_87 : vec4<f32> = vs_TEXCOORD0;
  let x_89 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_87.x, x_87.y));
  u_xlat3 = vec3<f32>(x_89.x, x_89.y, x_89.w);
  let x_93 : f32 = u_xlat3.z;
  let x_95 : f32 = u_xlat3.x;
  u_xlat3.x = (x_93 * x_95);
  let x_99 : vec3<f32> = u_xlat3;
  u_xlat28 = ((vec2<f32>(x_99.x, x_99.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_107 : vec2<f32> = u_xlat28;
  let x_111 : f32 = x_44.x_BumpScale;
  u_xlat28 = (x_107 * vec2<f32>(x_111, x_111));
  let x_115 : vec2<f32> = u_xlat28;
  let x_116 : vec2<f32> = u_xlat28;
  u_xlat43 = dot(x_115, x_116);
  let x_118 : f32 = u_xlat43;
  u_xlat43 = min(x_118, 1.0f);
  let x_121 : f32 = u_xlat43;
  u_xlat43 = (-(x_121) + 1.0f);
  let x_124 : f32 = u_xlat43;
  u_xlat43 = sqrt(x_124);
  let x_126 : vec2<f32> = u_xlat28;
  let x_129 : vec4<f32> = vs_TEXCOORD3;
  u_xlat3 = (vec3<f32>(x_126.y, x_126.y, x_126.y) * vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_133 : vec4<f32> = vs_TEXCOORD2;
  let x_135 : vec2<f32> = u_xlat28;
  let x_138 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135.x, x_135.x, x_135.x)) + x_138);
  let x_141 : vec4<f32> = vs_TEXCOORD4;
  let x_143 : f32 = u_xlat43;
  let x_146 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143, x_143, x_143)) + x_146);
  let x_148 : vec3<f32> = u_xlat3;
  let x_149 : vec3<f32> = u_xlat3;
  u_xlat28.x = dot(x_148, x_149);
  let x_153 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_153);
  let x_156 : vec2<f32> = u_xlat28;
  let x_158 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_156.x, x_156.x, x_156.x) * x_158);
  let x_161 : vec4<f32> = vs_TEXCOORD1;
  let x_163 : vec4<f32> = vs_TEXCOORD1;
  u_xlat28.x = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_168 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_168);
  let x_172 : vec2<f32> = u_xlat28;
  let x_174 : vec4<f32> = vs_TEXCOORD1;
  u_xlat4 = (vec3<f32>(x_172.x, x_172.x, x_172.x) * vec3<f32>(x_174.x, x_174.y, x_174.z));
  let x_182 : f32 = x_44.unity_ProbeVolumeParams.x;
  u_xlatb42 = (x_182 == 1.0f);
  let x_184 : bool = u_xlatb42;
  if (x_184) {
    let x_189 : f32 = x_44.unity_ProbeVolumeParams.y;
    u_xlatb42 = (x_189 == 1.0f);
    let x_193 : vec4<f32> = vs_TEXCOORD3;
    let x_198 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[1i];
    let x_200 : vec3<f32> = (vec3<f32>(x_193.w, x_193.w, x_193.w) * vec3<f32>(x_198.x, x_198.y, x_198.z));
    let x_201 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
    let x_205 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[0i];
    let x_207 : vec4<f32> = vs_TEXCOORD2;
    let x_210 : vec4<f32> = u_xlat5;
    let x_212 : vec3<f32> = ((vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(x_207.w, x_207.w, x_207.w)) + vec3<f32>(x_210.x, x_210.y, x_210.z));
    let x_213 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_212.x, x_212.y, x_212.z, x_213.w);
    let x_217 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[2i];
    let x_219 : vec4<f32> = vs_TEXCOORD4;
    let x_222 : vec4<f32> = u_xlat5;
    let x_224 : vec3<f32> = ((vec3<f32>(x_217.x, x_217.y, x_217.z) * vec3<f32>(x_219.w, x_219.w, x_219.w)) + vec3<f32>(x_222.x, x_222.y, x_222.z));
    let x_225 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
    let x_227 : vec4<f32> = u_xlat5;
    let x_231 : vec4<f32> = x_44.unity_ProbeVolumeWorldToObject[3i];
    let x_233 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.z) + vec3<f32>(x_231.x, x_231.y, x_231.z));
    let x_234 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_233.x, x_233.y, x_233.z, x_234.w);
    let x_240 : f32 = vs_TEXCOORD2.w;
    u_xlat20.x = x_240;
    let x_243 : f32 = vs_TEXCOORD3.w;
    u_xlat20.y = x_243;
    let x_246 : f32 = vs_TEXCOORD4.w;
    u_xlat20.z = x_246;
    let x_248 : bool = u_xlatb42;
    if (x_248) {
      let x_252 : vec4<f32> = u_xlat5;
      x_249 = vec3<f32>(x_252.x, x_252.y, x_252.z);
    } else {
      let x_255 : vec3<f32> = u_xlat20;
      x_249 = x_255;
    }
    let x_256 : vec3<f32> = x_249;
    let x_257 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    let x_259 : vec4<f32> = u_xlat5;
    let x_264 : vec3<f32> = x_44.unity_ProbeVolumeMin;
    let x_266 : vec3<f32> = (vec3<f32>(x_259.x, x_259.y, x_259.z) + -(x_264));
    let x_267 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_269 : vec4<f32> = u_xlat5;
    let x_273 : vec3<f32> = x_44.unity_ProbeVolumeSizeInv;
    let x_274 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) * x_273);
    let x_275 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_275.x, x_274.x, x_274.y, x_274.z);
    let x_279 : f32 = u_xlat5.y;
    u_xlat42 = ((x_279 * 0.25f) + 0.75f);
    let x_285 : f32 = x_44.unity_ProbeVolumeParams.z;
    u_xlat43 = ((x_285 * 0.5f) + 0.75f);
    let x_289 : f32 = u_xlat42;
    let x_290 : f32 = u_xlat43;
    u_xlat5.x = max(x_289, x_290);
    let x_301 : vec4<f32> = u_xlat5;
    let x_303 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_301.x, x_301.z, x_301.w));
    u_xlat5 = x_303;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_309 : vec4<f32> = u_xlat5;
  let x_311 : vec4<f32> = x_44.unity_OcclusionMaskSelector;
  u_xlat42 = dot(x_309, x_311);
  let x_313 : f32 = u_xlat42;
  u_xlat42 = clamp(x_313, 0.0f, 1.0f);
  let x_321 : vec4<f32> = vs_TEXCOORD0;
  let x_323 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_321.x, x_321.y));
  u_xlat43 = x_323.y;
  let x_328 : f32 = x_44.x_OcclusionStrength;
  u_xlat44 = (-(x_328) + 1.0f);
  let x_331 : f32 = u_xlat43;
  let x_333 : f32 = x_44.x_OcclusionStrength;
  let x_335 : f32 = u_xlat44;
  u_xlat43 = ((x_331 * x_333) + x_335);
  let x_338 : f32 = u_xlat0.y;
  let x_342 : f32 = x_44.x_GlossMapScale;
  u_xlat44 = ((-(x_338) * x_342) + 1.0f);
  let x_346 : vec3<f32> = u_xlat4;
  let x_347 : vec3<f32> = u_xlat3;
  u_xlat45 = dot(x_346, x_347);
  let x_349 : f32 = u_xlat45;
  let x_350 : f32 = u_xlat45;
  u_xlat45 = (x_349 + x_350);
  let x_352 : vec3<f32> = u_xlat3;
  let x_353 : f32 = u_xlat45;
  let x_357 : vec3<f32> = u_xlat4;
  let x_358 : vec3<f32> = ((x_352 * -(vec3<f32>(x_353, x_353, x_353))) + x_357);
  let x_359 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_358.x, x_358.y, x_358.z, x_359.w);
  let x_362 : f32 = u_xlat42;
  let x_366 : vec4<f32> = x_44.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_362, x_362, x_362) * vec3<f32>(x_366.x, x_366.y, x_366.z));
  let x_371 : f32 = x_44.unity_SpecCube0_ProbePosition.w;
  u_xlatb42 = (0.0f < x_371);
  let x_373 : bool = u_xlatb42;
  if (x_373) {
    let x_376 : vec4<f32> = u_xlat5;
    let x_378 : vec4<f32> = u_xlat5;
    u_xlat42 = dot(vec3<f32>(x_376.x, x_376.y, x_376.z), vec3<f32>(x_378.x, x_378.y, x_378.z));
    let x_381 : f32 = u_xlat42;
    u_xlat42 = inverseSqrt(x_381);
    let x_384 : f32 = u_xlat42;
    let x_386 : vec4<f32> = u_xlat5;
    let x_388 : vec3<f32> = (vec3<f32>(x_384, x_384, x_384) * vec3<f32>(x_386.x, x_386.y, x_386.z));
    let x_389 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
    let x_393 : f32 = vs_TEXCOORD2.w;
    u_xlat8.x = x_393;
    let x_396 : f32 = vs_TEXCOORD3.w;
    u_xlat8.y = x_396;
    let x_399 : f32 = vs_TEXCOORD4.w;
    u_xlat8.z = x_399;
    let x_402 : vec3<f32> = u_xlat8;
    let x_405 : vec4<f32> = x_44.unity_SpecCube0_BoxMax;
    u_xlat9 = (-(x_402) + vec3<f32>(x_405.x, x_405.y, x_405.z));
    let x_408 : vec3<f32> = u_xlat9;
    let x_409 : vec4<f32> = u_xlat7;
    u_xlat9 = (x_408 / vec3<f32>(x_409.x, x_409.y, x_409.z));
    let x_413 : vec3<f32> = u_xlat8;
    let x_416 : vec4<f32> = x_44.unity_SpecCube0_BoxMin;
    u_xlat10 = (-(x_413) + vec3<f32>(x_416.x, x_416.y, x_416.z));
    let x_419 : vec3<f32> = u_xlat10;
    let x_420 : vec4<f32> = u_xlat7;
    u_xlat10 = (x_419 / vec3<f32>(x_420.x, x_420.y, x_420.z));
    let x_427 : vec4<f32> = u_xlat7;
    let x_430 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_427.x, x_427.y, x_427.z, x_427.x));
    u_xlatb11 = vec3<bool>(x_430.x, x_430.y, x_430.z);
    let x_433 : vec3<f32> = u_xlat9;
    hlslcc_movcTemp = x_433;
    let x_435 : bool = u_xlatb11.x;
    if (x_435) {
      let x_440 : f32 = u_xlat9.x;
      x_436 = x_440;
    } else {
      let x_443 : f32 = u_xlat10.x;
      x_436 = x_443;
    }
    let x_444 : f32 = x_436;
    hlslcc_movcTemp.x = x_444;
    let x_447 : bool = u_xlatb11.y;
    if (x_447) {
      let x_452 : f32 = u_xlat9.y;
      x_448 = x_452;
    } else {
      let x_455 : f32 = u_xlat10.y;
      x_448 = x_455;
    }
    let x_456 : f32 = x_448;
    hlslcc_movcTemp.y = x_456;
    let x_459 : bool = u_xlatb11.z;
    if (x_459) {
      let x_464 : f32 = u_xlat9.z;
      x_460 = x_464;
    } else {
      let x_467 : f32 = u_xlat10.z;
      x_460 = x_467;
    }
    let x_468 : f32 = x_460;
    hlslcc_movcTemp.z = x_468;
    let x_470 : vec3<f32> = hlslcc_movcTemp;
    u_xlat9 = x_470;
    let x_472 : f32 = u_xlat9.y;
    let x_474 : f32 = u_xlat9.x;
    u_xlat42 = min(x_472, x_474);
    let x_477 : f32 = u_xlat9.z;
    let x_478 : f32 = u_xlat42;
    u_xlat42 = min(x_477, x_478);
    let x_480 : vec3<f32> = u_xlat8;
    let x_482 : vec4<f32> = x_44.unity_SpecCube0_ProbePosition;
    u_xlat8 = (x_480 + -(vec3<f32>(x_482.x, x_482.y, x_482.z)));
    let x_486 : vec4<f32> = u_xlat7;
    let x_488 : f32 = u_xlat42;
    let x_491 : vec3<f32> = u_xlat8;
    let x_492 : vec3<f32> = ((vec3<f32>(x_486.x, x_486.y, x_486.z) * vec3<f32>(x_488, x_488, x_488)) + x_491);
    let x_493 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
  } else {
    let x_496 : vec4<f32> = u_xlat5;
    let x_497 : vec3<f32> = vec3<f32>(x_496.x, x_496.y, x_496.z);
    let x_498 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
  }
  let x_500 : f32 = u_xlat44;
  u_xlat42 = ((-(x_500) * 0.699999988f) + 1.700000048f);
  let x_506 : f32 = u_xlat42;
  let x_507 : f32 = u_xlat44;
  u_xlat42 = (x_506 * x_507);
  let x_509 : f32 = u_xlat42;
  u_xlat42 = (x_509 * 6.0f);
  let x_520 : vec4<f32> = u_xlat7;
  let x_522 : f32 = u_xlat42;
  let x_523 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_520.x, x_520.y, x_520.z), x_522);
  u_xlat7 = x_523;
  let x_525 : f32 = u_xlat7.w;
  u_xlat45 = (x_525 + -1.0f);
  let x_529 : f32 = x_44.unity_SpecCube0_HDR.w;
  let x_530 : f32 = u_xlat45;
  u_xlat45 = ((x_529 * x_530) + 1.0f);
  let x_533 : f32 = u_xlat45;
  u_xlat45 = log2(x_533);
  let x_535 : f32 = u_xlat45;
  let x_537 : f32 = x_44.unity_SpecCube0_HDR.y;
  u_xlat45 = (x_535 * x_537);
  let x_539 : f32 = u_xlat45;
  u_xlat45 = exp2(x_539);
  let x_541 : f32 = u_xlat45;
  let x_543 : f32 = x_44.unity_SpecCube0_HDR.x;
  u_xlat45 = (x_541 * x_543);
  let x_545 : vec4<f32> = u_xlat7;
  let x_547 : f32 = u_xlat45;
  u_xlat8 = (vec3<f32>(x_545.x, x_545.y, x_545.z) * vec3<f32>(x_547, x_547, x_547));
  let x_552 : f32 = x_44.unity_SpecCube0_BoxMin.w;
  u_xlatb46 = (x_552 < 0.999989986f);
  let x_555 : bool = u_xlatb46;
  if (x_555) {
    let x_560 : f32 = x_44.unity_SpecCube1_ProbePosition.w;
    u_xlatb46 = (0.0f < x_560);
    let x_562 : bool = u_xlatb46;
    if (x_562) {
      let x_566 : vec4<f32> = u_xlat5;
      let x_568 : vec4<f32> = u_xlat5;
      u_xlat46 = dot(vec3<f32>(x_566.x, x_566.y, x_566.z), vec3<f32>(x_568.x, x_568.y, x_568.z));
      let x_571 : f32 = u_xlat46;
      u_xlat46 = inverseSqrt(x_571);
      let x_573 : f32 = u_xlat46;
      let x_575 : vec4<f32> = u_xlat5;
      u_xlat9 = (vec3<f32>(x_573, x_573, x_573) * vec3<f32>(x_575.x, x_575.y, x_575.z));
      let x_579 : f32 = vs_TEXCOORD2.w;
      u_xlat10.x = x_579;
      let x_582 : f32 = vs_TEXCOORD3.w;
      u_xlat10.y = x_582;
      let x_585 : f32 = vs_TEXCOORD4.w;
      u_xlat10.z = x_585;
      let x_588 : vec3<f32> = u_xlat10;
      let x_592 : vec4<f32> = x_44.unity_SpecCube1_BoxMax;
      u_xlat11 = (-(x_588) + vec3<f32>(x_592.x, x_592.y, x_592.z));
      let x_595 : vec3<f32> = u_xlat11;
      let x_596 : vec3<f32> = u_xlat9;
      u_xlat11 = (x_595 / x_596);
      let x_599 : vec3<f32> = u_xlat10;
      let x_603 : vec4<f32> = x_44.unity_SpecCube1_BoxMin;
      u_xlat12 = (-(x_599) + vec3<f32>(x_603.x, x_603.y, x_603.z));
      let x_606 : vec3<f32> = u_xlat12;
      let x_607 : vec3<f32> = u_xlat9;
      u_xlat12 = (x_606 / x_607);
      let x_610 : vec3<f32> = u_xlat9;
      let x_612 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_610.x, x_610.y, x_610.z, x_610.x));
      u_xlatb13 = vec3<bool>(x_612.x, x_612.y, x_612.z);
      let x_615 : vec3<f32> = u_xlat11;
      hlslcc_movcTemp_1 = x_615;
      let x_617 : bool = u_xlatb13.x;
      if (x_617) {
        let x_622 : f32 = u_xlat11.x;
        x_618 = x_622;
      } else {
        let x_625 : f32 = u_xlat12.x;
        x_618 = x_625;
      }
      let x_626 : f32 = x_618;
      hlslcc_movcTemp_1.x = x_626;
      let x_629 : bool = u_xlatb13.y;
      if (x_629) {
        let x_634 : f32 = u_xlat11.y;
        x_630 = x_634;
      } else {
        let x_637 : f32 = u_xlat12.y;
        x_630 = x_637;
      }
      let x_638 : f32 = x_630;
      hlslcc_movcTemp_1.y = x_638;
      let x_641 : bool = u_xlatb13.z;
      if (x_641) {
        let x_646 : f32 = u_xlat11.z;
        x_642 = x_646;
      } else {
        let x_649 : f32 = u_xlat12.z;
        x_642 = x_649;
      }
      let x_650 : f32 = x_642;
      hlslcc_movcTemp_1.z = x_650;
      let x_652 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat11 = x_652;
      let x_654 : f32 = u_xlat11.y;
      let x_656 : f32 = u_xlat11.x;
      u_xlat46 = min(x_654, x_656);
      let x_659 : f32 = u_xlat11.z;
      let x_660 : f32 = u_xlat46;
      u_xlat46 = min(x_659, x_660);
      let x_662 : vec3<f32> = u_xlat10;
      let x_664 : vec4<f32> = x_44.unity_SpecCube1_ProbePosition;
      u_xlat10 = (x_662 + -(vec3<f32>(x_664.x, x_664.y, x_664.z)));
      let x_668 : vec3<f32> = u_xlat9;
      let x_669 : f32 = u_xlat46;
      let x_672 : vec3<f32> = u_xlat10;
      let x_673 : vec3<f32> = ((x_668 * vec3<f32>(x_669, x_669, x_669)) + x_672);
      let x_674 : vec4<f32> = u_xlat5;
      u_xlat5 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
    }
    let x_680 : vec4<f32> = u_xlat5;
    let x_682 : f32 = u_xlat42;
    let x_683 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_680.x, x_680.y, x_680.z), x_682);
    u_xlat5 = x_683;
    let x_685 : f32 = u_xlat5.w;
    u_xlat42 = (x_685 + -1.0f);
    let x_689 : f32 = x_44.unity_SpecCube1_HDR.w;
    let x_690 : f32 = u_xlat42;
    u_xlat42 = ((x_689 * x_690) + 1.0f);
    let x_693 : f32 = u_xlat42;
    u_xlat42 = log2(x_693);
    let x_695 : f32 = u_xlat42;
    let x_697 : f32 = x_44.unity_SpecCube1_HDR.y;
    u_xlat42 = (x_695 * x_697);
    let x_699 : f32 = u_xlat42;
    u_xlat42 = exp2(x_699);
    let x_701 : f32 = u_xlat42;
    let x_703 : f32 = x_44.unity_SpecCube1_HDR.x;
    u_xlat42 = (x_701 * x_703);
    let x_705 : vec4<f32> = u_xlat5;
    let x_707 : f32 = u_xlat42;
    let x_709 : vec3<f32> = (vec3<f32>(x_705.x, x_705.y, x_705.z) * vec3<f32>(x_707, x_707, x_707));
    let x_710 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_709.x, x_709.y, x_709.z, x_710.w);
    let x_712 : f32 = u_xlat45;
    let x_714 : vec4<f32> = u_xlat7;
    let x_717 : vec4<f32> = u_xlat5;
    let x_720 : vec3<f32> = ((vec3<f32>(x_712, x_712, x_712) * vec3<f32>(x_714.x, x_714.y, x_714.z)) + -(vec3<f32>(x_717.x, x_717.y, x_717.z)));
    let x_721 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
    let x_724 : vec4<f32> = x_44.unity_SpecCube0_BoxMin;
    let x_726 : vec4<f32> = u_xlat7;
    let x_729 : vec4<f32> = u_xlat5;
    u_xlat8 = ((vec3<f32>(x_724.w, x_724.w, x_724.w) * vec3<f32>(x_726.x, x_726.y, x_726.z)) + vec3<f32>(x_729.x, x_729.y, x_729.z));
  }
  let x_732 : f32 = u_xlat43;
  let x_734 : vec3<f32> = u_xlat8;
  let x_735 : vec3<f32> = (vec3<f32>(x_732, x_732, x_732) * x_734);
  let x_736 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
  let x_738 : vec4<f32> = vs_TEXCOORD1;
  let x_741 : vec2<f32> = u_xlat28;
  let x_745 : vec4<f32> = x_44.x_WorldSpaceLightPos0;
  let x_747 : vec3<f32> = ((-(vec3<f32>(x_738.x, x_738.y, x_738.z)) * vec3<f32>(x_741.x, x_741.x, x_741.x)) + vec3<f32>(x_745.x, x_745.y, x_745.z));
  let x_748 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_747.x, x_747.y, x_747.z, x_748.w);
  let x_750 : vec4<f32> = u_xlat7;
  let x_752 : vec4<f32> = u_xlat7;
  u_xlat28.x = dot(vec3<f32>(x_750.x, x_750.y, x_750.z), vec3<f32>(x_752.x, x_752.y, x_752.z));
  let x_757 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_757, 0.001f);
  let x_762 : f32 = u_xlat28.x;
  u_xlat28.x = inverseSqrt(x_762);
  let x_765 : vec2<f32> = u_xlat28;
  let x_767 : vec4<f32> = u_xlat7;
  let x_769 : vec3<f32> = (vec3<f32>(x_765.x, x_765.x, x_765.x) * vec3<f32>(x_767.x, x_767.y, x_767.z));
  let x_770 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_769.x, x_769.y, x_769.z, x_770.w);
  let x_772 : vec3<f32> = u_xlat3;
  let x_773 : vec3<f32> = u_xlat4;
  u_xlat28.x = dot(x_772, -(x_773));
  let x_777 : vec3<f32> = u_xlat3;
  let x_779 : vec4<f32> = x_44.x_WorldSpaceLightPos0;
  u_xlat42 = dot(x_777, vec3<f32>(x_779.x, x_779.y, x_779.z));
  let x_782 : f32 = u_xlat42;
  u_xlat42 = clamp(x_782, 0.0f, 1.0f);
  let x_784 : vec3<f32> = u_xlat3;
  let x_785 : vec4<f32> = u_xlat7;
  u_xlat43 = dot(x_784, vec3<f32>(x_785.x, x_785.y, x_785.z));
  let x_788 : f32 = u_xlat43;
  u_xlat43 = clamp(x_788, 0.0f, 1.0f);
  let x_791 : vec4<f32> = x_44.x_WorldSpaceLightPos0;
  let x_793 : vec4<f32> = u_xlat7;
  u_xlat3.x = dot(vec3<f32>(x_791.x, x_791.y, x_791.z), vec3<f32>(x_793.x, x_793.y, x_793.z));
  let x_798 : f32 = u_xlat3.x;
  u_xlat3.x = clamp(x_798, 0.0f, 1.0f);
  let x_803 : f32 = u_xlat3.x;
  let x_805 : f32 = u_xlat3.x;
  u_xlat17 = (x_803 * x_805);
  let x_807 : f32 = u_xlat17;
  let x_809 : f32 = u_xlat44;
  u_xlat17 = dot(vec2<f32>(x_807, x_807), vec2<f32>(x_809, x_809));
  let x_812 : f32 = u_xlat17;
  u_xlat17 = (x_812 + -0.5f);
  let x_816 : f32 = u_xlat42;
  u_xlat31 = (-(x_816) + 1.0f);
  let x_819 : f32 = u_xlat31;
  let x_820 : f32 = u_xlat31;
  u_xlat45 = (x_819 * x_820);
  let x_822 : f32 = u_xlat45;
  let x_823 : f32 = u_xlat45;
  u_xlat45 = (x_822 * x_823);
  let x_825 : f32 = u_xlat31;
  let x_826 : f32 = u_xlat45;
  u_xlat31 = (x_825 * x_826);
  let x_828 : f32 = u_xlat17;
  let x_829 : f32 = u_xlat31;
  u_xlat31 = ((x_828 * x_829) + 1.0f);
  let x_833 : f32 = u_xlat28.x;
  u_xlat45 = (-(abs(x_833)) + 1.0f);
  let x_837 : f32 = u_xlat45;
  let x_838 : f32 = u_xlat45;
  u_xlat4.x = (x_837 * x_838);
  let x_842 : f32 = u_xlat4.x;
  let x_844 : f32 = u_xlat4.x;
  u_xlat4.x = (x_842 * x_844);
  let x_847 : f32 = u_xlat45;
  let x_849 : f32 = u_xlat4.x;
  u_xlat45 = (x_847 * x_849);
  let x_851 : f32 = u_xlat17;
  let x_852 : f32 = u_xlat45;
  u_xlat17 = ((x_851 * x_852) + 1.0f);
  let x_855 : f32 = u_xlat17;
  let x_856 : f32 = u_xlat31;
  u_xlat17 = (x_855 * x_856);
  let x_858 : f32 = u_xlat42;
  let x_859 : f32 = u_xlat17;
  u_xlat17 = (x_858 * x_859);
  let x_861 : f32 = u_xlat44;
  let x_862 : f32 = u_xlat44;
  u_xlat44 = (x_861 * x_862);
  let x_864 : f32 = u_xlat44;
  u_xlat44 = max(x_864, 0.002f);
  let x_867 : f32 = u_xlat44;
  u_xlat31 = (-(x_867) + 1.0f);
  let x_871 : f32 = u_xlat28.x;
  let x_873 : f32 = u_xlat31;
  let x_875 : f32 = u_xlat44;
  u_xlat4.x = ((abs(x_871) * x_873) + x_875);
  let x_878 : f32 = u_xlat42;
  let x_879 : f32 = u_xlat31;
  let x_881 : f32 = u_xlat44;
  u_xlat31 = ((x_878 * x_879) + x_881);
  let x_884 : f32 = u_xlat28.x;
  let x_886 : f32 = u_xlat31;
  u_xlat28.x = (abs(x_884) * x_886);
  let x_889 : f32 = u_xlat42;
  let x_891 : f32 = u_xlat4.x;
  let x_894 : f32 = u_xlat28.x;
  u_xlat28.x = ((x_889 * x_891) + x_894);
  let x_898 : f32 = u_xlat28.x;
  u_xlat28.x = (x_898 + 0.00001f);
  let x_903 : f32 = u_xlat28.x;
  u_xlat28.x = (0.5f / x_903);
  let x_906 : f32 = u_xlat44;
  let x_907 : f32 = u_xlat44;
  u_xlat31 = (x_906 * x_907);
  let x_909 : f32 = u_xlat43;
  let x_910 : f32 = u_xlat31;
  let x_912 : f32 = u_xlat43;
  u_xlat4.x = ((x_909 * x_910) + -(x_912));
  let x_917 : f32 = u_xlat4.x;
  let x_918 : f32 = u_xlat43;
  u_xlat43 = ((x_917 * x_918) + 1.0f);
  let x_921 : f32 = u_xlat31;
  u_xlat31 = (x_921 * 0.318309873f);
  let x_924 : f32 = u_xlat43;
  let x_925 : f32 = u_xlat43;
  u_xlat43 = ((x_924 * x_925) + 0.0000001f);
  let x_929 : f32 = u_xlat31;
  let x_930 : f32 = u_xlat43;
  u_xlat43 = (x_929 / x_930);
  let x_933 : f32 = u_xlat28.x;
  let x_934 : f32 = u_xlat43;
  u_xlat28.x = (x_933 * x_934);
  let x_937 : f32 = u_xlat42;
  let x_939 : f32 = u_xlat28.x;
  u_xlat28.x = (x_937 * x_939);
  let x_943 : f32 = u_xlat28.x;
  u_xlat28.x = (x_943 * 3.141592741f);
  let x_948 : f32 = u_xlat28.x;
  u_xlat28.x = max(x_948, 0.0f);
  let x_951 : f32 = u_xlat44;
  let x_952 : f32 = u_xlat44;
  u_xlat42 = ((x_951 * x_952) + 1.0f);
  let x_955 : f32 = u_xlat42;
  u_xlat42 = (1.0f / x_955);
  let x_957 : vec3<f32> = u_xlat1;
  let x_958 : vec3<f32> = u_xlat1;
  u_xlat43 = dot(x_957, x_958);
  let x_961 : f32 = u_xlat43;
  u_xlatb43 = !((x_961 == 0.0f));
  let x_963 : bool = u_xlatb43;
  u_xlat43 = select(0.0f, 1.0f, x_963);
  let x_966 : f32 = u_xlat28.x;
  let x_967 : f32 = u_xlat43;
  u_xlat28.x = (x_966 * x_967);
  let x_971 : f32 = u_xlat0.y;
  let x_973 : f32 = x_44.x_GlossMapScale;
  let x_976 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_971 * x_973) + -(x_976));
  let x_981 : f32 = u_xlat0.x;
  u_xlat0.x = (x_981 + 1.0f);
  let x_985 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_985, 0.0f, 1.0f);
  let x_988 : f32 = u_xlat17;
  let x_990 : vec3<f32> = u_xlat6;
  u_xlat4 = (vec3<f32>(x_988, x_988, x_988) * x_990);
  let x_992 : vec3<f32> = u_xlat6;
  let x_993 : vec2<f32> = u_xlat28;
  u_xlat6 = (x_992 * vec3<f32>(x_993.x, x_993.x, x_993.x));
  let x_998 : f32 = u_xlat3.x;
  u_xlat14.x = (-(x_998) + 1.0f);
  let x_1003 : f32 = u_xlat14.x;
  let x_1005 : f32 = u_xlat14.x;
  u_xlat28.x = (x_1003 * x_1005);
  let x_1009 : f32 = u_xlat28.x;
  let x_1011 : f32 = u_xlat28.x;
  u_xlat28.x = (x_1009 * x_1011);
  let x_1015 : f32 = u_xlat14.x;
  let x_1017 : f32 = u_xlat28.x;
  u_xlat14.x = (x_1015 * x_1017);
  let x_1020 : vec3<f32> = u_xlat1;
  u_xlat3 = (-(x_1020) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1024 : vec3<f32> = u_xlat3;
  let x_1025 : vec3<f32> = u_xlat14;
  let x_1028 : vec3<f32> = u_xlat1;
  u_xlat3 = ((x_1024 * vec3<f32>(x_1025.x, x_1025.x, x_1025.x)) + x_1028);
  let x_1030 : vec3<f32> = u_xlat3;
  let x_1031 : vec3<f32> = u_xlat6;
  u_xlat3 = (x_1030 * x_1031);
  let x_1033 : vec3<f32> = u_xlat2;
  let x_1034 : vec3<f32> = u_xlat4;
  let x_1036 : vec3<f32> = u_xlat3;
  u_xlat2 = ((x_1033 * x_1034) + x_1036);
  let x_1038 : vec4<f32> = u_xlat5;
  let x_1040 : f32 = u_xlat42;
  u_xlat14 = (vec3<f32>(x_1038.x, x_1038.y, x_1038.z) * vec3<f32>(x_1040, x_1040, x_1040));
  let x_1043 : vec3<f32> = u_xlat1;
  let x_1045 : vec2<f32> = u_xlat0;
  u_xlat3 = (-(x_1043) + vec3<f32>(x_1045.x, x_1045.x, x_1045.x));
  let x_1048 : f32 = u_xlat45;
  let x_1050 : vec3<f32> = u_xlat3;
  let x_1052 : vec3<f32> = u_xlat1;
  u_xlat1 = ((vec3<f32>(x_1048, x_1048, x_1048) * x_1050) + x_1052);
  let x_1056 : vec3<f32> = u_xlat14;
  let x_1057 : vec3<f32> = u_xlat1;
  let x_1059 : vec3<f32> = u_xlat2;
  let x_1060 : vec3<f32> = ((x_1056 * x_1057) + x_1059);
  let x_1061 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1060.x, x_1060.y, x_1060.z, x_1061.w);
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

