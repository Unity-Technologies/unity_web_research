let      UNITY_RUNTIME_INSTANCING_ARRAY_SIZE: u32 = 2u        ;
struct UnityDrawCallInfo {
  unity_BaseInstanceID : i32,
  unity_InstanceCount : i32,
}

struct PGlobals {
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
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
}

struct unity_Builtins2Array_Type {
  unity_SHArArray : vec4<f32>,
  unity_SHAgArray : vec4<f32>,
  unity_SHAbArray : vec4<f32>,
  unity_SHBrArray : vec4<f32>,
  unity_SHBgArray : vec4<f32>,
  unity_SHBbArray : vec4<f32>,
  unity_SHCArray : vec4<f32>,
}

type Arr = array<unity_Builtins2Array_Type, UNITY_RUNTIME_INSTANCING_ARRAY_SIZE>;

struct UnityInstancing_PerDraw2 {
  unity_Builtins2Array : Arr,
}

var<private> u_xlati0 : i32;

var<private> vs_SV_InstanceID0 : u32;

@group(0) @binding(1) var<uniform> x_16 : UnityDrawCallInfo;

var<private> u_xlat13 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_34 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD2 : vec2<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> vs_COLOR0 : vec4<f32>;

var<private> u_xlatb41 : bool;

var<private> u_xlatb42 : bool;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat42 : f32;

var<private> u_xlat17 : vec3<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var<uniform> x_216 : UnityInstancing_PerDraw2;

var<private> vs_TEXCOORD0 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat41 : f32;

var<private> u_xlat44 : f32;

var<private> u_xlat7 : vec4<f32>;

var<private> u_xlat8 : vec4<f32>;

var<private> u_xlat9 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlatb0 : bool;

var<private> u_xlat0 : f32;

var<private> u_xlatb10 : vec3<bool>;

@group(0) @binding(4) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat10 : vec3<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlatb12 : vec3<bool>;

@group(0) @binding(5) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat27 : f32;

var<private> u_xlat26 : f32;

var<private> u_xlat39 : f32;

var<private> u_xlat40 : f32;

var<private> u_xlatb14 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_152 : vec3<f32>;
  var x_310 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_510 : f32;
  var x_522 : f32;
  var x_534 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_687 : f32;
  var x_699 : f32;
  var x_711 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : u32 = vs_SV_InstanceID0;
  let x_20 : i32 = x_16.unity_BaseInstanceID;
  u_xlati0 = (bitcast<i32>(x_12) + x_20);
  let x_28 : vec3<f32> = vs_TEXCOORD1;
  let x_37 : vec3<f32> = x_34.x_WorldSpaceCameraPos;
  u_xlat13 = (-(x_28) + x_37);
  let x_40 : vec3<f32> = u_xlat13;
  let x_41 : vec3<f32> = u_xlat13;
  u_xlat1.x = dot(x_40, x_41);
  let x_47 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_47);
  let x_51 : vec3<f32> = u_xlat13;
  let x_52 : vec3<f32> = u_xlat1;
  u_xlat14 = (x_51 * vec3<f32>(x_52.x, x_52.x, x_52.x));
  let x_69 : vec2<f32> = vs_TEXCOORD2;
  let x_70 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_69);
  u_xlat2 = vec3<f32>(x_70.x, x_70.y, x_70.z);
  let x_72 : vec3<f32> = u_xlat2;
  let x_76 : vec4<f32> = x_34.x_Color;
  u_xlat2 = (x_72 * vec3<f32>(x_76.x, x_76.y, x_76.z));
  let x_80 : vec3<f32> = u_xlat2;
  let x_83 : vec4<f32> = vs_COLOR0;
  u_xlat3 = (x_80 * vec3<f32>(x_83.x, x_83.y, x_83.z));
  let x_86 : i32 = u_xlati0;
  u_xlati0 = (x_86 * 7i);
  let x_95 : f32 = x_34.unity_ProbeVolumeParams.x;
  u_xlatb41 = (x_95 == 1.0f);
  let x_98 : bool = u_xlatb41;
  if (x_98) {
    let x_104 : f32 = x_34.unity_ProbeVolumeParams.y;
    u_xlatb42 = (x_104 == 1.0f);
    let x_108 : vec3<f32> = vs_TEXCOORD1;
    let x_113 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[1i];
    let x_115 : vec3<f32> = (vec3<f32>(x_108.y, x_108.y, x_108.y) * vec3<f32>(x_113.x, x_113.y, x_113.z));
    let x_116 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_115.x, x_115.y, x_115.z, x_116.w);
    let x_119 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[0i];
    let x_121 : vec3<f32> = vs_TEXCOORD1;
    let x_124 : vec4<f32> = u_xlat4;
    let x_126 : vec3<f32> = ((vec3<f32>(x_119.x, x_119.y, x_119.z) * vec3<f32>(x_121.x, x_121.x, x_121.x)) + vec3<f32>(x_124.x, x_124.y, x_124.z));
    let x_127 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_126.x, x_126.y, x_126.z, x_127.w);
    let x_131 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[2i];
    let x_133 : vec3<f32> = vs_TEXCOORD1;
    let x_136 : vec4<f32> = u_xlat4;
    let x_138 : vec3<f32> = ((vec3<f32>(x_131.x, x_131.y, x_131.z) * vec3<f32>(x_133.z, x_133.z, x_133.z)) + vec3<f32>(x_136.x, x_136.y, x_136.z));
    let x_139 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_138.x, x_138.y, x_138.z, x_139.w);
    let x_141 : vec4<f32> = u_xlat4;
    let x_145 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[3i];
    let x_147 : vec3<f32> = (vec3<f32>(x_141.x, x_141.y, x_141.z) + vec3<f32>(x_145.x, x_145.y, x_145.z));
    let x_148 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
    let x_150 : bool = u_xlatb42;
    if (x_150) {
      let x_155 : vec4<f32> = u_xlat4;
      x_152 = vec3<f32>(x_155.x, x_155.y, x_155.z);
    } else {
      let x_158 : vec3<f32> = vs_TEXCOORD1;
      x_152 = x_158;
    }
    let x_159 : vec3<f32> = x_152;
    let x_160 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_159.x, x_159.y, x_159.z, x_160.w);
    let x_162 : vec4<f32> = u_xlat4;
    let x_166 : vec3<f32> = x_34.unity_ProbeVolumeMin;
    let x_168 : vec3<f32> = (vec3<f32>(x_162.x, x_162.y, x_162.z) + -(x_166));
    let x_169 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
    let x_171 : vec4<f32> = u_xlat4;
    let x_175 : vec3<f32> = x_34.unity_ProbeVolumeSizeInv;
    let x_176 : vec3<f32> = (vec3<f32>(x_171.x, x_171.y, x_171.z) * x_175);
    let x_177 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_177.x, x_176.x, x_176.y, x_176.z);
    let x_181 : f32 = u_xlat4.y;
    u_xlat42 = ((x_181 * 0.25f) + 0.75f);
    let x_189 : f32 = x_34.unity_ProbeVolumeParams.z;
    u_xlat17.x = ((x_189 * 0.5f) + 0.75f);
    let x_194 : f32 = u_xlat42;
    let x_196 : f32 = u_xlat17.x;
    u_xlat4.x = max(x_194, x_196);
    let x_207 : vec4<f32> = u_xlat4;
    let x_209 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_207.x, x_207.z, x_207.w));
    u_xlat4 = x_209;
  } else {
    let x_217 : i32 = u_xlati0;
    let x_221 : vec4<f32> = x_216.unity_Builtins2Array[(x_217 / 7i)].unity_SHCArray;
    u_xlat4 = vec4<f32>(x_221.w, x_221.w, x_221.w, x_221.w);
  }
  let x_223 : vec4<f32> = u_xlat4;
  let x_225 : vec4<f32> = x_34.unity_OcclusionMaskSelector;
  u_xlat42 = dot(x_223, x_225);
  let x_227 : f32 = u_xlat42;
  u_xlat42 = clamp(x_227, 0.0f, 1.0f);
  let x_232 : f32 = x_34.x_Glossiness;
  u_xlat4.x = (-(x_232) + 1.0f);
  let x_236 : vec3<f32> = u_xlat14;
  let x_239 : vec3<f32> = vs_TEXCOORD0;
  u_xlat17.x = dot(-(x_236), x_239);
  let x_243 : f32 = u_xlat17.x;
  let x_245 : f32 = u_xlat17.x;
  u_xlat17.x = (x_243 + x_245);
  let x_248 : vec3<f32> = vs_TEXCOORD0;
  let x_249 : vec3<f32> = u_xlat17;
  let x_253 : vec3<f32> = u_xlat14;
  u_xlat17 = ((x_248 * -(vec3<f32>(x_249.x, x_249.x, x_249.x))) + -(x_253));
  let x_257 : f32 = u_xlat42;
  let x_261 : vec4<f32> = x_34.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_257, x_257, x_257) * vec3<f32>(x_261.x, x_261.y, x_261.z));
  let x_264 : bool = u_xlatb41;
  if (x_264) {
    let x_268 : f32 = x_34.unity_ProbeVolumeParams.y;
    u_xlatb41 = (x_268 == 1.0f);
    let x_271 : vec3<f32> = vs_TEXCOORD1;
    let x_274 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[1i];
    let x_276 : vec3<f32> = (vec3<f32>(x_271.y, x_271.y, x_271.y) * vec3<f32>(x_274.x, x_274.y, x_274.z));
    let x_277 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
    let x_280 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[0i];
    let x_282 : vec3<f32> = vs_TEXCOORD1;
    let x_285 : vec4<f32> = u_xlat6;
    let x_287 : vec3<f32> = ((vec3<f32>(x_280.x, x_280.y, x_280.z) * vec3<f32>(x_282.x, x_282.x, x_282.x)) + vec3<f32>(x_285.x, x_285.y, x_285.z));
    let x_288 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
    let x_291 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[2i];
    let x_293 : vec3<f32> = vs_TEXCOORD1;
    let x_296 : vec4<f32> = u_xlat6;
    let x_298 : vec3<f32> = ((vec3<f32>(x_291.x, x_291.y, x_291.z) * vec3<f32>(x_293.z, x_293.z, x_293.z)) + vec3<f32>(x_296.x, x_296.y, x_296.z));
    let x_299 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
    let x_301 : vec4<f32> = u_xlat6;
    let x_304 : vec4<f32> = x_34.unity_ProbeVolumeWorldToObject[3i];
    let x_306 : vec3<f32> = (vec3<f32>(x_301.x, x_301.y, x_301.z) + vec3<f32>(x_304.x, x_304.y, x_304.z));
    let x_307 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
    let x_309 : bool = u_xlatb41;
    if (x_309) {
      let x_313 : vec4<f32> = u_xlat6;
      x_310 = vec3<f32>(x_313.x, x_313.y, x_313.z);
    } else {
      let x_316 : vec3<f32> = vs_TEXCOORD1;
      x_310 = x_316;
    }
    let x_317 : vec3<f32> = x_310;
    let x_318 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
    let x_320 : vec4<f32> = u_xlat6;
    let x_323 : vec3<f32> = x_34.unity_ProbeVolumeMin;
    let x_325 : vec3<f32> = (vec3<f32>(x_320.x, x_320.y, x_320.z) + -(x_323));
    let x_326 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_325.x, x_325.y, x_325.z, x_326.w);
    let x_328 : vec4<f32> = u_xlat6;
    let x_331 : vec3<f32> = x_34.unity_ProbeVolumeSizeInv;
    let x_332 : vec3<f32> = (vec3<f32>(x_328.x, x_328.y, x_328.z) * x_331);
    let x_333 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_333.x, x_332.x, x_332.y, x_332.z);
    let x_337 : f32 = u_xlat6.y;
    u_xlat41 = (x_337 * 0.25f);
    let x_340 : f32 = x_34.unity_ProbeVolumeParams.z;
    u_xlat42 = (x_340 * 0.5f);
    let x_344 : f32 = x_34.unity_ProbeVolumeParams.z;
    u_xlat44 = ((-(x_344) * 0.5f) + 0.25f);
    let x_348 : f32 = u_xlat41;
    let x_349 : f32 = u_xlat42;
    u_xlat41 = max(x_348, x_349);
    let x_351 : f32 = u_xlat44;
    let x_352 : f32 = u_xlat41;
    u_xlat6.x = min(x_351, x_352);
    let x_359 : vec4<f32> = u_xlat6;
    let x_361 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_359.x, x_359.z, x_359.w));
    u_xlat7 = x_361;
    let x_363 : vec4<f32> = u_xlat6;
    let x_366 : vec3<f32> = (vec3<f32>(x_363.x, x_363.z, x_363.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_367 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_366.x, x_366.y, x_366.z, x_367.w);
    let x_372 : vec4<f32> = u_xlat8;
    let x_374 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_372.x, x_372.y, x_372.z));
    u_xlat8 = x_374;
    let x_375 : vec4<f32> = u_xlat6;
    let x_378 : vec3<f32> = (vec3<f32>(x_375.x, x_375.z, x_375.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_379 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_378.x, x_378.y, x_378.z, x_379.w);
    let x_384 : vec4<f32> = u_xlat6;
    let x_386 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_384.x, x_384.y, x_384.z));
    u_xlat6 = x_386;
    let x_388 : vec3<f32> = vs_TEXCOORD0;
    let x_389 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_388.x, x_388.y, x_388.z, x_389.w);
    u_xlat9.w = 1.0f;
    let x_393 : vec4<f32> = u_xlat7;
    let x_394 : vec4<f32> = u_xlat9;
    u_xlat7.x = dot(x_393, x_394);
    let x_397 : vec4<f32> = u_xlat8;
    let x_398 : vec4<f32> = u_xlat9;
    u_xlat7.y = dot(x_397, x_398);
    let x_401 : vec4<f32> = u_xlat6;
    let x_402 : vec4<f32> = u_xlat9;
    u_xlat7.z = dot(x_401, x_402);
  } else {
    let x_406 : vec3<f32> = vs_TEXCOORD0;
    let x_407 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
    u_xlat6.w = 1.0f;
    let x_410 : i32 = u_xlati0;
    let x_413 : vec4<f32> = x_216.unity_Builtins2Array[(x_410 / 7i)].unity_SHArArray;
    let x_414 : vec4<f32> = u_xlat6;
    u_xlat7.x = dot(x_413, x_414);
    let x_417 : i32 = u_xlati0;
    let x_420 : vec4<f32> = x_216.unity_Builtins2Array[(x_417 / 7i)].unity_SHAgArray;
    let x_421 : vec4<f32> = u_xlat6;
    u_xlat7.y = dot(x_420, x_421);
    let x_424 : i32 = u_xlati0;
    let x_427 : vec4<f32> = x_216.unity_Builtins2Array[(x_424 / 7i)].unity_SHAbArray;
    let x_428 : vec4<f32> = u_xlat6;
    u_xlat7.z = dot(x_427, x_428);
  }
  let x_431 : vec4<f32> = u_xlat7;
  let x_434 : vec3<f32> = vs_TEXCOORD3;
  let x_435 : vec3<f32> = (vec3<f32>(x_431.x, x_431.y, x_431.z) + x_434);
  let x_436 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_435.x, x_435.y, x_435.z, x_436.w);
  let x_438 : vec4<f32> = u_xlat6;
  let x_441 : vec3<f32> = max(vec3<f32>(x_438.x, x_438.y, x_438.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_442 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_441.x, x_441.y, x_441.z, x_442.w);
  let x_447 : f32 = x_34.unity_SpecCube0_ProbePosition.w;
  u_xlatb0 = (0.0f < x_447);
  let x_449 : bool = u_xlatb0;
  if (x_449) {
    let x_453 : vec3<f32> = u_xlat17;
    let x_454 : vec3<f32> = u_xlat17;
    u_xlat0 = dot(x_453, x_454);
    let x_456 : f32 = u_xlat0;
    u_xlat0 = inverseSqrt(x_456);
    let x_458 : f32 = u_xlat0;
    let x_460 : vec3<f32> = u_xlat17;
    let x_461 : vec3<f32> = (vec3<f32>(x_458, x_458, x_458) * x_460);
    let x_462 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_461.x, x_461.y, x_461.z, x_462.w);
    let x_464 : vec3<f32> = vs_TEXCOORD1;
    let x_467 : vec4<f32> = x_34.unity_SpecCube0_BoxMax;
    let x_469 : vec3<f32> = (-(x_464) + vec3<f32>(x_467.x, x_467.y, x_467.z));
    let x_470 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_469.x, x_469.y, x_469.z, x_470.w);
    let x_472 : vec4<f32> = u_xlat8;
    let x_474 : vec4<f32> = u_xlat7;
    let x_476 : vec3<f32> = (vec3<f32>(x_472.x, x_472.y, x_472.z) / vec3<f32>(x_474.x, x_474.y, x_474.z));
    let x_477 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_476.x, x_476.y, x_476.z, x_477.w);
    let x_479 : vec3<f32> = vs_TEXCOORD1;
    let x_483 : vec4<f32> = x_34.unity_SpecCube0_BoxMin;
    let x_485 : vec3<f32> = (-(x_479) + vec3<f32>(x_483.x, x_483.y, x_483.z));
    let x_486 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
    let x_488 : vec4<f32> = u_xlat9;
    let x_490 : vec4<f32> = u_xlat7;
    let x_492 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) / vec3<f32>(x_490.x, x_490.y, x_490.z));
    let x_493 : vec4<f32> = u_xlat9;
    u_xlat9 = vec4<f32>(x_492.x, x_492.y, x_492.z, x_493.w);
    let x_499 : vec4<f32> = u_xlat7;
    let x_502 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_499.x, x_499.y, x_499.z, x_499.x));
    u_xlatb10 = vec3<bool>(x_502.x, x_502.y, x_502.z);
    let x_506 : vec4<f32> = u_xlat8;
    hlslcc_movcTemp = x_506;
    let x_508 : bool = u_xlatb10.x;
    if (x_508) {
      let x_514 : f32 = u_xlat8.x;
      x_510 = x_514;
    } else {
      let x_517 : f32 = u_xlat9.x;
      x_510 = x_517;
    }
    let x_518 : f32 = x_510;
    hlslcc_movcTemp.x = x_518;
    let x_521 : bool = u_xlatb10.y;
    if (x_521) {
      let x_526 : f32 = u_xlat8.y;
      x_522 = x_526;
    } else {
      let x_529 : f32 = u_xlat9.y;
      x_522 = x_529;
    }
    let x_530 : f32 = x_522;
    hlslcc_movcTemp.y = x_530;
    let x_533 : bool = u_xlatb10.z;
    if (x_533) {
      let x_538 : f32 = u_xlat8.z;
      x_534 = x_538;
    } else {
      let x_541 : f32 = u_xlat9.z;
      x_534 = x_541;
    }
    let x_542 : f32 = x_534;
    hlslcc_movcTemp.z = x_542;
    let x_544 : vec4<f32> = hlslcc_movcTemp;
    u_xlat8 = x_544;
    let x_546 : f32 = u_xlat8.y;
    let x_548 : f32 = u_xlat8.x;
    u_xlat0 = min(x_546, x_548);
    let x_551 : f32 = u_xlat8.z;
    let x_552 : f32 = u_xlat0;
    u_xlat0 = min(x_551, x_552);
    let x_554 : vec3<f32> = vs_TEXCOORD1;
    let x_556 : vec4<f32> = x_34.unity_SpecCube0_ProbePosition;
    let x_559 : vec3<f32> = (x_554 + -(vec3<f32>(x_556.x, x_556.y, x_556.z)));
    let x_560 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_559.x, x_559.y, x_559.z, x_560.w);
    let x_562 : vec4<f32> = u_xlat7;
    let x_564 : f32 = u_xlat0;
    let x_567 : vec4<f32> = u_xlat8;
    let x_569 : vec3<f32> = ((vec3<f32>(x_562.x, x_562.y, x_562.z) * vec3<f32>(x_564, x_564, x_564)) + vec3<f32>(x_567.x, x_567.y, x_567.z));
    let x_570 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_569.x, x_569.y, x_569.z, x_570.w);
  } else {
    let x_573 : vec3<f32> = u_xlat17;
    let x_574 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_573.x, x_573.y, x_573.z, x_574.w);
  }
  let x_577 : f32 = u_xlat4.x;
  u_xlat0 = ((-(x_577) * 0.699999988f) + 1.700000048f);
  let x_583 : f32 = u_xlat0;
  let x_585 : f32 = u_xlat4.x;
  u_xlat0 = (x_583 * x_585);
  let x_587 : f32 = u_xlat0;
  u_xlat0 = (x_587 * 6.0f);
  let x_598 : vec4<f32> = u_xlat7;
  let x_600 : f32 = u_xlat0;
  let x_601 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_598.x, x_598.y, x_598.z), x_600);
  u_xlat7 = x_601;
  let x_603 : f32 = u_xlat7.w;
  u_xlat41 = (x_603 + -1.0f);
  let x_607 : f32 = x_34.unity_SpecCube0_HDR.w;
  let x_608 : f32 = u_xlat41;
  u_xlat41 = ((x_607 * x_608) + 1.0f);
  let x_611 : f32 = u_xlat41;
  u_xlat41 = log2(x_611);
  let x_613 : f32 = u_xlat41;
  let x_615 : f32 = x_34.unity_SpecCube0_HDR.y;
  u_xlat41 = (x_613 * x_615);
  let x_617 : f32 = u_xlat41;
  u_xlat41 = exp2(x_617);
  let x_619 : f32 = u_xlat41;
  let x_621 : f32 = x_34.unity_SpecCube0_HDR.x;
  u_xlat41 = (x_619 * x_621);
  let x_623 : vec4<f32> = u_xlat7;
  let x_625 : f32 = u_xlat41;
  let x_627 : vec3<f32> = (vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(x_625, x_625, x_625));
  let x_628 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_627.x, x_627.y, x_627.z, x_628.w);
  let x_631 : f32 = x_34.unity_SpecCube0_BoxMin.w;
  u_xlatb42 = (x_631 < 0.999989986f);
  let x_634 : bool = u_xlatb42;
  if (x_634) {
    let x_639 : f32 = x_34.unity_SpecCube1_ProbePosition.w;
    u_xlatb42 = (0.0f < x_639);
    let x_641 : bool = u_xlatb42;
    if (x_641) {
      let x_644 : vec3<f32> = u_xlat17;
      let x_645 : vec3<f32> = u_xlat17;
      u_xlat42 = dot(x_644, x_645);
      let x_647 : f32 = u_xlat42;
      u_xlat42 = inverseSqrt(x_647);
      let x_649 : f32 = u_xlat42;
      let x_651 : vec3<f32> = u_xlat17;
      let x_652 : vec3<f32> = (vec3<f32>(x_649, x_649, x_649) * x_651);
      let x_653 : vec4<f32> = u_xlat9;
      u_xlat9 = vec4<f32>(x_652.x, x_652.y, x_652.z, x_653.w);
      let x_656 : vec3<f32> = vs_TEXCOORD1;
      let x_659 : vec4<f32> = x_34.unity_SpecCube1_BoxMax;
      u_xlat10 = (-(x_656) + vec3<f32>(x_659.x, x_659.y, x_659.z));
      let x_662 : vec3<f32> = u_xlat10;
      let x_663 : vec4<f32> = u_xlat9;
      u_xlat10 = (x_662 / vec3<f32>(x_663.x, x_663.y, x_663.z));
      let x_667 : vec3<f32> = vs_TEXCOORD1;
      let x_671 : vec4<f32> = x_34.unity_SpecCube1_BoxMin;
      u_xlat11 = (-(x_667) + vec3<f32>(x_671.x, x_671.y, x_671.z));
      let x_674 : vec3<f32> = u_xlat11;
      let x_675 : vec4<f32> = u_xlat9;
      u_xlat11 = (x_674 / vec3<f32>(x_675.x, x_675.y, x_675.z));
      let x_679 : vec4<f32> = u_xlat9;
      let x_681 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_679.x, x_679.y, x_679.z, x_679.x));
      u_xlatb12 = vec3<bool>(x_681.x, x_681.y, x_681.z);
      let x_684 : vec3<f32> = u_xlat10;
      hlslcc_movcTemp_1 = x_684;
      let x_686 : bool = u_xlatb12.x;
      if (x_686) {
        let x_691 : f32 = u_xlat10.x;
        x_687 = x_691;
      } else {
        let x_694 : f32 = u_xlat11.x;
        x_687 = x_694;
      }
      let x_695 : f32 = x_687;
      hlslcc_movcTemp_1.x = x_695;
      let x_698 : bool = u_xlatb12.y;
      if (x_698) {
        let x_703 : f32 = u_xlat10.y;
        x_699 = x_703;
      } else {
        let x_706 : f32 = u_xlat11.y;
        x_699 = x_706;
      }
      let x_707 : f32 = x_699;
      hlslcc_movcTemp_1.y = x_707;
      let x_710 : bool = u_xlatb12.z;
      if (x_710) {
        let x_715 : f32 = u_xlat10.z;
        x_711 = x_715;
      } else {
        let x_718 : f32 = u_xlat11.z;
        x_711 = x_718;
      }
      let x_719 : f32 = x_711;
      hlslcc_movcTemp_1.z = x_719;
      let x_721 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat10 = x_721;
      let x_723 : f32 = u_xlat10.y;
      let x_725 : f32 = u_xlat10.x;
      u_xlat42 = min(x_723, x_725);
      let x_728 : f32 = u_xlat10.z;
      let x_729 : f32 = u_xlat42;
      u_xlat42 = min(x_728, x_729);
      let x_731 : vec3<f32> = vs_TEXCOORD1;
      let x_733 : vec4<f32> = x_34.unity_SpecCube1_ProbePosition;
      u_xlat10 = (x_731 + -(vec3<f32>(x_733.x, x_733.y, x_733.z)));
      let x_737 : vec4<f32> = u_xlat9;
      let x_739 : f32 = u_xlat42;
      let x_742 : vec3<f32> = u_xlat10;
      u_xlat17 = ((vec3<f32>(x_737.x, x_737.y, x_737.z) * vec3<f32>(x_739, x_739, x_739)) + x_742);
    }
    let x_748 : vec3<f32> = u_xlat17;
    let x_749 : f32 = u_xlat0;
    let x_750 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, x_748, x_749);
    u_xlat9 = x_750;
    let x_752 : f32 = u_xlat9.w;
    u_xlat0 = (x_752 + -1.0f);
    let x_756 : f32 = x_34.unity_SpecCube1_HDR.w;
    let x_757 : f32 = u_xlat0;
    u_xlat0 = ((x_756 * x_757) + 1.0f);
    let x_760 : f32 = u_xlat0;
    u_xlat0 = log2(x_760);
    let x_762 : f32 = u_xlat0;
    let x_764 : f32 = x_34.unity_SpecCube1_HDR.y;
    u_xlat0 = (x_762 * x_764);
    let x_766 : f32 = u_xlat0;
    u_xlat0 = exp2(x_766);
    let x_768 : f32 = u_xlat0;
    let x_770 : f32 = x_34.unity_SpecCube1_HDR.x;
    u_xlat0 = (x_768 * x_770);
    let x_772 : vec4<f32> = u_xlat9;
    let x_774 : f32 = u_xlat0;
    u_xlat17 = (vec3<f32>(x_772.x, x_772.y, x_772.z) * vec3<f32>(x_774, x_774, x_774));
    let x_777 : f32 = u_xlat41;
    let x_779 : vec4<f32> = u_xlat7;
    let x_782 : vec3<f32> = u_xlat17;
    let x_784 : vec3<f32> = ((vec3<f32>(x_777, x_777, x_777) * vec3<f32>(x_779.x, x_779.y, x_779.z)) + -(x_782));
    let x_785 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_784.x, x_784.y, x_784.z, x_785.w);
    let x_788 : vec4<f32> = x_34.unity_SpecCube0_BoxMin;
    let x_790 : vec4<f32> = u_xlat7;
    let x_793 : vec3<f32> = u_xlat17;
    let x_794 : vec3<f32> = ((vec3<f32>(x_788.w, x_788.w, x_788.w) * vec3<f32>(x_790.x, x_790.y, x_790.z)) + x_793);
    let x_795 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
  }
  let x_797 : vec3<f32> = vs_TEXCOORD0;
  let x_798 : vec3<f32> = vs_TEXCOORD0;
  u_xlat0 = dot(x_797, x_798);
  let x_800 : f32 = u_xlat0;
  u_xlat0 = inverseSqrt(x_800);
  let x_802 : f32 = u_xlat0;
  let x_804 : vec3<f32> = vs_TEXCOORD0;
  u_xlat17 = (vec3<f32>(x_802, x_802, x_802) * x_804);
  let x_806 : vec3<f32> = u_xlat2;
  let x_807 : vec4<f32> = vs_COLOR0;
  u_xlat2 = ((x_806 * vec3<f32>(x_807.x, x_807.y, x_807.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_815 : f32 = x_34.x_Metallic;
  let x_817 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_815, x_815, x_815) * x_817) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_823 : f32 = x_34.x_Metallic;
  u_xlat0 = ((-(x_823) * 0.959999979f) + 0.959999979f);
  let x_828 : f32 = u_xlat0;
  let x_830 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_828, x_828, x_828) * x_830);
  let x_832 : vec3<f32> = u_xlat13;
  let x_833 : vec3<f32> = u_xlat1;
  let x_837 : vec4<f32> = x_34.x_WorldSpaceLightPos0;
  u_xlat13 = ((x_832 * vec3<f32>(x_833.x, x_833.x, x_833.x)) + vec3<f32>(x_837.x, x_837.y, x_837.z));
  let x_840 : vec3<f32> = u_xlat13;
  let x_841 : vec3<f32> = u_xlat13;
  u_xlat1.x = dot(x_840, x_841);
  let x_845 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_845, 0.001f);
  let x_850 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_850);
  let x_853 : vec3<f32> = u_xlat13;
  let x_854 : vec3<f32> = u_xlat1;
  u_xlat13 = (x_853 * vec3<f32>(x_854.x, x_854.x, x_854.x));
  let x_857 : vec3<f32> = u_xlat17;
  let x_858 : vec3<f32> = u_xlat14;
  u_xlat1.x = dot(x_857, x_858);
  let x_861 : vec3<f32> = u_xlat17;
  let x_863 : vec4<f32> = x_34.x_WorldSpaceLightPos0;
  u_xlat14.x = dot(x_861, vec3<f32>(x_863.x, x_863.y, x_863.z));
  let x_868 : f32 = u_xlat14.x;
  u_xlat14.x = clamp(x_868, 0.0f, 1.0f);
  let x_872 : vec3<f32> = u_xlat17;
  let x_873 : vec3<f32> = u_xlat13;
  u_xlat27 = dot(x_872, x_873);
  let x_875 : f32 = u_xlat27;
  u_xlat27 = clamp(x_875, 0.0f, 1.0f);
  let x_878 : vec4<f32> = x_34.x_WorldSpaceLightPos0;
  let x_880 : vec3<f32> = u_xlat13;
  u_xlat13.x = dot(vec3<f32>(x_878.x, x_878.y, x_878.z), x_880);
  let x_884 : f32 = u_xlat13.x;
  u_xlat13.x = clamp(x_884, 0.0f, 1.0f);
  let x_889 : f32 = u_xlat13.x;
  let x_891 : f32 = u_xlat13.x;
  u_xlat26 = (x_889 * x_891);
  let x_893 : f32 = u_xlat26;
  let x_895 : vec4<f32> = u_xlat4;
  u_xlat26 = dot(vec2<f32>(x_893, x_893), vec2<f32>(x_895.x, x_895.x));
  let x_898 : f32 = u_xlat26;
  u_xlat26 = (x_898 + -0.5f);
  let x_903 : f32 = u_xlat14.x;
  u_xlat39 = (-(x_903) + 1.0f);
  let x_907 : f32 = u_xlat39;
  let x_908 : f32 = u_xlat39;
  u_xlat40 = (x_907 * x_908);
  let x_910 : f32 = u_xlat40;
  let x_911 : f32 = u_xlat40;
  u_xlat40 = (x_910 * x_911);
  let x_913 : f32 = u_xlat39;
  let x_914 : f32 = u_xlat40;
  u_xlat39 = (x_913 * x_914);
  let x_916 : f32 = u_xlat26;
  let x_917 : f32 = u_xlat39;
  u_xlat39 = ((x_916 * x_917) + 1.0f);
  let x_921 : f32 = u_xlat1.x;
  u_xlat40 = (-(abs(x_921)) + 1.0f);
  let x_925 : f32 = u_xlat40;
  let x_926 : f32 = u_xlat40;
  u_xlat41 = (x_925 * x_926);
  let x_928 : f32 = u_xlat41;
  let x_929 : f32 = u_xlat41;
  u_xlat41 = (x_928 * x_929);
  let x_931 : f32 = u_xlat40;
  let x_932 : f32 = u_xlat41;
  u_xlat40 = (x_931 * x_932);
  let x_934 : f32 = u_xlat26;
  let x_935 : f32 = u_xlat40;
  u_xlat26 = ((x_934 * x_935) + 1.0f);
  let x_938 : f32 = u_xlat26;
  let x_939 : f32 = u_xlat39;
  u_xlat26 = (x_938 * x_939);
  let x_942 : f32 = u_xlat14.x;
  let x_943 : f32 = u_xlat26;
  u_xlat26 = (x_942 * x_943);
  let x_946 : f32 = u_xlat4.x;
  let x_948 : f32 = u_xlat4.x;
  u_xlat39 = (x_946 * x_948);
  let x_950 : f32 = u_xlat39;
  u_xlat39 = max(x_950, 0.002f);
  let x_953 : f32 = u_xlat39;
  u_xlat41 = (-(x_953) + 1.0f);
  let x_957 : f32 = u_xlat1.x;
  let x_959 : f32 = u_xlat41;
  let x_961 : f32 = u_xlat39;
  u_xlat42 = ((abs(x_957) * x_959) + x_961);
  let x_964 : f32 = u_xlat14.x;
  let x_965 : f32 = u_xlat41;
  let x_967 : f32 = u_xlat39;
  u_xlat41 = ((x_964 * x_965) + x_967);
  let x_970 : f32 = u_xlat1.x;
  let x_972 : f32 = u_xlat41;
  u_xlat1.x = (abs(x_970) * x_972);
  let x_976 : f32 = u_xlat14.x;
  let x_977 : f32 = u_xlat42;
  let x_980 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_976 * x_977) + x_980);
  let x_984 : f32 = u_xlat1.x;
  u_xlat1.x = (x_984 + 0.00001f);
  let x_989 : f32 = u_xlat1.x;
  u_xlat1.x = (0.5f / x_989);
  let x_992 : f32 = u_xlat39;
  let x_993 : f32 = u_xlat39;
  u_xlat41 = (x_992 * x_993);
  let x_995 : f32 = u_xlat27;
  let x_996 : f32 = u_xlat41;
  let x_998 : f32 = u_xlat27;
  u_xlat42 = ((x_995 * x_996) + -(x_998));
  let x_1001 : f32 = u_xlat42;
  let x_1002 : f32 = u_xlat27;
  u_xlat27 = ((x_1001 * x_1002) + 1.0f);
  let x_1005 : f32 = u_xlat41;
  u_xlat41 = (x_1005 * 0.318309873f);
  let x_1008 : f32 = u_xlat27;
  let x_1009 : f32 = u_xlat27;
  u_xlat27 = ((x_1008 * x_1009) + 0.0000001f);
  let x_1013 : f32 = u_xlat41;
  let x_1014 : f32 = u_xlat27;
  u_xlat27 = (x_1013 / x_1014);
  let x_1016 : f32 = u_xlat27;
  let x_1018 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1016 * x_1018);
  let x_1022 : f32 = u_xlat14.x;
  let x_1024 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1022 * x_1024);
  let x_1028 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1028 * 3.141592741f);
  let x_1033 : f32 = u_xlat1.x;
  u_xlat1.x = max(x_1033, 0.0f);
  let x_1036 : f32 = u_xlat39;
  let x_1037 : f32 = u_xlat39;
  u_xlat39 = ((x_1036 * x_1037) + 1.0f);
  let x_1040 : f32 = u_xlat39;
  u_xlat39 = (1.0f / x_1040);
  let x_1042 : vec3<f32> = u_xlat2;
  let x_1043 : vec3<f32> = u_xlat2;
  u_xlat14.x = dot(x_1042, x_1043);
  let x_1048 : f32 = u_xlat14.x;
  u_xlatb14 = !((x_1048 == 0.0f));
  let x_1050 : bool = u_xlatb14;
  u_xlat14.x = select(0.0f, 1.0f, x_1050);
  let x_1054 : f32 = u_xlat14.x;
  let x_1056 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1054 * x_1056);
  let x_1059 : f32 = u_xlat0;
  let x_1062 : f32 = x_34.x_Glossiness;
  u_xlat0 = (-(x_1059) + x_1062);
  let x_1064 : f32 = u_xlat0;
  u_xlat0 = (x_1064 + 1.0f);
  let x_1066 : f32 = u_xlat0;
  u_xlat0 = clamp(x_1066, 0.0f, 1.0f);
  let x_1068 : vec3<f32> = u_xlat5;
  let x_1069 : f32 = u_xlat26;
  let x_1072 : vec4<f32> = u_xlat6;
  let x_1074 : vec3<f32> = ((x_1068 * vec3<f32>(x_1069, x_1069, x_1069)) + vec3<f32>(x_1072.x, x_1072.y, x_1072.z));
  let x_1075 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1074.x, x_1074.y, x_1074.z, x_1075.w);
  let x_1077 : vec3<f32> = u_xlat5;
  let x_1078 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_1077 * vec3<f32>(x_1078.x, x_1078.x, x_1078.x));
  let x_1082 : f32 = u_xlat13.x;
  u_xlat13.x = (-(x_1082) + 1.0f);
  let x_1087 : f32 = u_xlat13.x;
  let x_1089 : f32 = u_xlat13.x;
  u_xlat26 = (x_1087 * x_1089);
  let x_1091 : f32 = u_xlat26;
  let x_1092 : f32 = u_xlat26;
  u_xlat26 = (x_1091 * x_1092);
  let x_1095 : f32 = u_xlat13.x;
  let x_1096 : f32 = u_xlat26;
  u_xlat13.x = (x_1095 * x_1096);
  let x_1099 : vec3<f32> = u_xlat2;
  u_xlat5 = (-(x_1099) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1103 : vec3<f32> = u_xlat5;
  let x_1104 : vec3<f32> = u_xlat13;
  let x_1107 : vec3<f32> = u_xlat2;
  u_xlat5 = ((x_1103 * vec3<f32>(x_1104.x, x_1104.x, x_1104.x)) + x_1107);
  let x_1109 : vec3<f32> = u_xlat1;
  let x_1110 : vec3<f32> = u_xlat5;
  u_xlat1 = (x_1109 * x_1110);
  let x_1112 : vec3<f32> = u_xlat3;
  let x_1113 : vec4<f32> = u_xlat4;
  let x_1116 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_1112 * vec3<f32>(x_1113.x, x_1113.y, x_1113.z)) + x_1116);
  let x_1118 : vec4<f32> = u_xlat8;
  let x_1120 : f32 = u_xlat39;
  u_xlat13 = (vec3<f32>(x_1118.x, x_1118.y, x_1118.z) * vec3<f32>(x_1120, x_1120, x_1120));
  let x_1123 : vec3<f32> = u_xlat2;
  let x_1125 : f32 = u_xlat0;
  u_xlat3 = (-(x_1123) + vec3<f32>(x_1125, x_1125, x_1125));
  let x_1128 : f32 = u_xlat40;
  let x_1130 : vec3<f32> = u_xlat3;
  let x_1132 : vec3<f32> = u_xlat2;
  u_xlat2 = ((vec3<f32>(x_1128, x_1128, x_1128) * x_1130) + x_1132);
  let x_1136 : vec3<f32> = u_xlat13;
  let x_1137 : vec3<f32> = u_xlat2;
  let x_1139 : vec3<f32> = u_xlat1;
  let x_1140 : vec3<f32> = ((x_1136 * x_1137) + x_1139);
  let x_1141 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1140.x, x_1140.y, x_1140.z, x_1141.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) @interpolate(flat) vs_SV_InstanceID0_param : u32, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec2<f32>, @location(2) vs_COLOR0_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_SV_InstanceID0 = vs_SV_InstanceID0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

