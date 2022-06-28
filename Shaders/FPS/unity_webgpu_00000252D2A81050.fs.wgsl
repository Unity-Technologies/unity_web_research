struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
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
  x_Cutoff2 : f32,
  x_EdgeSizeBot : f32,
  x_EdgeSizeTop : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_EdgeColor2 : vec4<f32>,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat48 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(13) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat50 : f32;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(11) var sampler_Noise : sampler;

var<private> u_xlat35 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlatb51 : bool;

var<private> u_xlat20 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(12) var sampler_Normal : sampler;

var<private> u_xlatb49 : bool;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb13 : vec3<bool>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb15 : vec3<bool>;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_470 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_659 : f32;
  var x_671 : f32;
  var x_683 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_830 : f32;
  var x_842 : f32;
  var x_854 : f32;
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
  u_xlat48 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat48;
  let x_54 : vec3<f32> = u_xlat1;
  let x_55 : vec3<f32> = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_72 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, x_72);
  let x_74 : vec2<f32> = vec2<f32>(x_73.x, x_73.w);
  let x_75 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_74.x, x_74.y, x_75.z);
  let x_78 : vec3<f32> = u_xlat0;
  let x_83 : vec4<f32> = x_37.unity_ObjectToWorld[3i];
  u_xlat4 = (vec4<f32>(x_78.z, x_78.y, x_78.x, x_78.y) + -(vec4<f32>(x_83.z, x_83.y, x_83.x, x_83.y)));
  let x_88 : vec4<f32> = u_xlat4;
  let x_93 : vec3<f32> = (vec3<f32>(x_88.w, x_88.x, x_88.z) * vec3<f32>(6.0f, 0.200000003f, 0.200000003f));
  let x_94 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_93.x, x_93.y, x_94.z, x_93.z);
  let x_100 : f32 = x_37.x_Cutoff;
  let x_102 : f32 = x_37.x_Cutoff;
  u_xlat49 = (x_100 + x_102);
  let x_106 : f32 = u_xlat4.w;
  let x_109 : f32 = u_xlat49;
  u_xlat6.x = ((x_106 * 2.0f) + x_109);
  let x_113 : f32 = u_xlat4.y;
  let x_117 : f32 = x_37.x_Cutoff;
  u_xlat6.z = ((x_113 * 4.0f) + x_117);
  let x_122 : f32 = x_37.x_bounds.y;
  u_xlat49 = (x_122 + 0.200000003f);
  let x_124 : vec4<f32> = u_xlat5;
  let x_125 : vec2<f32> = vec2<f32>(x_124.y, x_124.w);
  let x_126 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_126.x, x_125.x, x_126.z, x_125.y);
  let x_134 : vec4<f32> = u_xlat6;
  let x_136 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_134.x, x_134.y));
  u_xlat50 = x_136.x;
  let x_142 : vec4<f32> = u_xlat6;
  let x_144 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_142.z, x_142.w));
  u_xlat35 = x_144.x;
  let x_146 : f32 = u_xlat50;
  let x_148 : f32 = u_xlat35;
  u_xlat50 = dot(vec2<f32>(x_146, x_146), vec2<f32>(x_148, x_148));
  u_xlat5.y = 0.0f;
  let x_156 : vec4<f32> = u_xlat5;
  let x_158 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_156.x, x_156.y));
  u_xlat35 = x_158.x;
  let x_161 : f32 = u_xlat49;
  u_xlat51 = (x_161 * 0.5f);
  let x_165 : f32 = x_37.x_Cutoff;
  let x_166 : f32 = u_xlat49;
  let x_168 : f32 = u_xlat51;
  u_xlat49 = ((x_165 * x_166) + -(x_168));
  let x_175 : f32 = u_xlat4.w;
  let x_176 : f32 = u_xlat49;
  u_xlatb51 = (x_175 >= x_176);
  let x_178 : bool = u_xlatb51;
  u_xlat4.x = select(0.0f, 1.0f, x_178);
  let x_183 : f32 = u_xlat49;
  let x_186 : f32 = x_37.x_EdgeSizeBot;
  u_xlat20 = (x_183 + -(x_186));
  let x_190 : f32 = u_xlat49;
  let x_191 : f32 = u_xlat20;
  u_xlat36 = (x_190 + -(x_191));
  let x_194 : f32 = u_xlat20;
  let x_197 : f32 = u_xlat4.w;
  u_xlat20 = (-(x_194) + x_197);
  let x_199 : f32 = u_xlat36;
  u_xlat36 = (1.0f / x_199);
  let x_201 : f32 = u_xlat36;
  let x_202 : f32 = u_xlat20;
  u_xlat20 = (x_201 * x_202);
  let x_204 : f32 = u_xlat20;
  u_xlat20 = clamp(x_204, 0.0f, 1.0f);
  let x_206 : f32 = u_xlat20;
  u_xlat36 = ((x_206 * -2.0f) + 3.0f);
  let x_211 : f32 = u_xlat20;
  let x_212 : f32 = u_xlat20;
  u_xlat20 = (x_211 * x_212);
  let x_214 : f32 = u_xlat20;
  let x_215 : f32 = u_xlat36;
  u_xlat5.x = (x_214 * x_215);
  let x_219 : f32 = u_xlat49;
  let x_222 : f32 = x_37.x_EdgeSizeTop;
  u_xlat21 = (x_219 + x_222);
  let x_224 : f32 = u_xlat49;
  let x_225 : f32 = u_xlat21;
  u_xlat49 = (x_224 + -(x_225));
  let x_230 : f32 = u_xlat4.w;
  let x_231 : f32 = u_xlat21;
  u_xlat52 = (x_230 + -(x_231));
  let x_234 : f32 = u_xlat49;
  u_xlat49 = (1.0f / x_234);
  let x_236 : f32 = u_xlat49;
  let x_237 : f32 = u_xlat52;
  u_xlat49 = (x_236 * x_237);
  let x_239 : f32 = u_xlat49;
  u_xlat49 = clamp(x_239, 0.0f, 1.0f);
  let x_241 : f32 = u_xlat49;
  u_xlat52 = ((x_241 * -2.0f) + 3.0f);
  let x_244 : f32 = u_xlat49;
  let x_245 : f32 = u_xlat49;
  u_xlat49 = (x_244 * x_245);
  let x_247 : f32 = u_xlat49;
  let x_248 : f32 = u_xlat52;
  u_xlat49 = (x_247 * x_248);
  let x_250 : vec4<f32> = u_xlat5;
  let x_254 : vec4<f32> = x_37.x_EdgeColor1;
  let x_256 : vec3<f32> = (vec3<f32>(x_250.x, x_250.x, x_250.x) * vec3<f32>(x_254.x, x_254.y, x_254.z));
  let x_257 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
  let x_259 : bool = u_xlatb51;
  u_xlat51 = select(1.0f, 0.0f, x_259);
  let x_261 : f32 = u_xlat51;
  let x_263 : vec4<f32> = u_xlat5;
  let x_265 : vec3<f32> = (vec3<f32>(x_261, x_261, x_261) * vec3<f32>(x_263.x, x_263.y, x_263.z));
  let x_266 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
  let x_269 : vec4<f32> = x_37.x_EdgeColor1;
  let x_273 : vec4<f32> = x_37.x_EdgeColor2;
  let x_276 : vec3<f32> = (vec3<f32>(x_269.x, x_269.y, x_269.z) + -(vec3<f32>(x_273.x, x_273.y, x_273.z)));
  let x_277 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
  let x_279 : f32 = u_xlat49;
  let x_281 : vec4<f32> = u_xlat6;
  let x_285 : vec4<f32> = x_37.x_EdgeColor2;
  let x_287 : vec3<f32> = ((vec3<f32>(x_279, x_279, x_279) * vec3<f32>(x_281.x, x_281.y, x_281.z)) + vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_288 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_287.x, x_287.y, x_287.z, x_288.w);
  let x_296 : vec2<f32> = vs_TEXCOORD0;
  let x_297 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_296);
  u_xlat7 = vec3<f32>(x_297.x, x_297.y, x_297.z);
  let x_300 : vec3<f32> = u_xlat7;
  let x_303 : vec4<f32> = x_37.x_Color;
  u_xlat8 = (x_300 * vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat9 = (vec3<f32>(x_307.x, x_307.y, x_307.z) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_311 : vec4<f32> = u_xlat5;
  let x_313 : f32 = u_xlat35;
  let x_316 : vec3<f32> = u_xlat9;
  let x_317 : vec3<f32> = ((vec3<f32>(x_311.x, x_311.y, x_311.z) * vec3<f32>(x_313, x_313, x_313)) + x_316);
  let x_318 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_317.x, x_317.y, x_317.z, x_318.w);
  let x_320 : vec4<f32> = u_xlat6;
  let x_322 : vec4<f32> = u_xlat4;
  let x_325 : vec4<f32> = u_xlat5;
  let x_327 : vec3<f32> = ((vec3<f32>(x_320.x, x_320.y, x_320.z) * vec3<f32>(x_322.x, x_322.x, x_322.x)) + vec3<f32>(x_325.x, x_325.y, x_325.z));
  let x_328 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_327.x, x_327.y, x_327.z, x_328.w);
  let x_335 : vec2<f32> = vs_TEXCOORD0;
  let x_336 : vec4<f32> = textureSample(x_Normal, sampler_Normal, x_335);
  let x_337 : vec3<f32> = vec3<f32>(x_336.x, x_336.y, x_336.w);
  let x_338 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_337.x, x_337.y, x_337.z, x_338.w);
  let x_341 : f32 = u_xlat6.z;
  let x_343 : f32 = u_xlat6.x;
  u_xlat6.x = (x_341 * x_343);
  let x_346 : vec4<f32> = u_xlat6;
  let x_352 : vec2<f32> = ((vec2<f32>(x_346.x, x_346.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_353 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_352.x, x_352.y, x_353.z, x_353.w);
  let x_355 : vec4<f32> = u_xlat6;
  let x_357 : vec4<f32> = u_xlat6;
  u_xlat35 = dot(vec2<f32>(x_355.x, x_355.y), vec2<f32>(x_357.x, x_357.y));
  let x_360 : f32 = u_xlat35;
  u_xlat35 = min(x_360, 1.0f);
  let x_362 : f32 = u_xlat35;
  u_xlat35 = (-(x_362) + 1.0f);
  let x_365 : f32 = u_xlat35;
  u_xlat6.z = sqrt(x_365);
  let x_368 : vec3<f32> = u_xlat3;
  let x_372 : f32 = x_37.x_Metallic;
  let x_375 : f32 = x_37.x_Glossiness;
  let x_377 : vec2<f32> = (vec2<f32>(x_368.x, x_368.y) * vec2<f32>(x_372, x_375));
  let x_378 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_377.x, x_377.y, x_378.z);
  let x_380 : f32 = u_xlat36;
  let x_382 : f32 = u_xlat20;
  u_xlat35 = ((-(x_380) * x_382) + 1.0f);
  let x_385 : f32 = u_xlat35;
  let x_387 : f32 = u_xlat3.x;
  u_xlat3.x = (x_385 * x_387);
  let x_390 : f32 = u_xlat50;
  let x_391 : f32 = u_xlat49;
  let x_393 : f32 = u_xlat51;
  u_xlat49 = ((x_390 * x_391) + x_393);
  let x_395 : f32 = u_xlat49;
  let x_397 : f32 = x_37.x_Cutoff;
  u_xlat49 = (x_395 + -(x_397));
  let x_400 : f32 = u_xlat49;
  let x_403 : f32 = x_37.x_Cutoff2;
  u_xlat49 = (x_400 + -(x_403));
  let x_407 : f32 = u_xlat49;
  u_xlatb49 = (x_407 < 0.0f);
  let x_409 : bool = u_xlatb49;
  if (((select(0i, 1i, x_409) * -1i) != 0i)) {
    discard;
  }
  let x_420 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb49 = (x_420 == 1.0f);
  let x_422 : bool = u_xlatb49;
  if (x_422) {
    let x_426 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb49 = (x_426 == 1.0f);
    let x_428 : vec4<f32> = vs_TEXCOORD2;
    let x_432 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_434 : vec3<f32> = (vec3<f32>(x_428.w, x_428.w, x_428.w) * vec3<f32>(x_432.x, x_432.y, x_432.z));
    let x_435 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_434.x, x_434.y, x_434.z, x_435.w);
    let x_438 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_440 : vec4<f32> = vs_TEXCOORD1;
    let x_443 : vec4<f32> = u_xlat4;
    let x_445 : vec3<f32> = ((vec3<f32>(x_438.x, x_438.y, x_438.z) * vec3<f32>(x_440.w, x_440.w, x_440.w)) + vec3<f32>(x_443.x, x_443.y, x_443.z));
    let x_446 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_445.x, x_445.y, x_445.z, x_446.w);
    let x_450 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_452 : vec4<f32> = vs_TEXCOORD3;
    let x_455 : vec4<f32> = u_xlat4;
    let x_457 : vec3<f32> = ((vec3<f32>(x_450.x, x_450.y, x_450.z) * vec3<f32>(x_452.w, x_452.w, x_452.w)) + vec3<f32>(x_455.x, x_455.y, x_455.z));
    let x_458 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_457.x, x_457.y, x_457.z, x_458.w);
    let x_460 : vec4<f32> = u_xlat4;
    let x_463 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_465 : vec3<f32> = (vec3<f32>(x_460.x, x_460.y, x_460.z) + vec3<f32>(x_463.x, x_463.y, x_463.z));
    let x_466 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
    let x_468 : bool = u_xlatb49;
    if (x_468) {
      let x_473 : vec4<f32> = u_xlat4;
      x_470 = vec3<f32>(x_473.x, x_473.y, x_473.z);
    } else {
      let x_476 : vec3<f32> = u_xlat0;
      x_470 = x_476;
    }
    let x_477 : vec3<f32> = x_470;
    let x_478 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_477.x, x_477.y, x_477.z, x_478.w);
    let x_480 : vec4<f32> = u_xlat4;
    let x_484 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_486 : vec3<f32> = (vec3<f32>(x_480.x, x_480.y, x_480.z) + -(x_484));
    let x_487 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
    let x_489 : vec4<f32> = u_xlat4;
    let x_493 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_494 : vec3<f32> = (vec3<f32>(x_489.x, x_489.y, x_489.z) * x_493);
    let x_495 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_495.x, x_494.x, x_494.y, x_494.z);
    let x_498 : f32 = u_xlat4.y;
    u_xlat49 = ((x_498 * 0.25f) + 0.75f);
    let x_504 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat50 = ((x_504 * 0.5f) + 0.75f);
    let x_507 : f32 = u_xlat49;
    let x_508 : f32 = u_xlat50;
    u_xlat4.x = max(x_507, x_508);
    let x_519 : vec4<f32> = u_xlat4;
    let x_521 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_519.x, x_519.z, x_519.w));
    u_xlat4 = x_521;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_527 : vec4<f32> = u_xlat4;
  let x_529 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat49 = dot(x_527, x_529);
  let x_531 : f32 = u_xlat49;
  u_xlat49 = clamp(x_531, 0.0f, 1.0f);
  let x_533 : vec4<f32> = vs_TEXCOORD1;
  let x_535 : vec4<f32> = u_xlat6;
  u_xlat4.x = dot(vec3<f32>(x_533.x, x_533.y, x_533.z), vec3<f32>(x_535.x, x_535.y, x_535.z));
  let x_539 : vec4<f32> = vs_TEXCOORD2;
  let x_541 : vec4<f32> = u_xlat6;
  u_xlat4.y = dot(vec3<f32>(x_539.x, x_539.y, x_539.z), vec3<f32>(x_541.x, x_541.y, x_541.z));
  let x_545 : vec4<f32> = vs_TEXCOORD3;
  let x_547 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_545.x, x_545.y, x_545.z), vec3<f32>(x_547.x, x_547.y, x_547.z));
  let x_551 : vec4<f32> = u_xlat4;
  let x_553 : vec4<f32> = u_xlat4;
  u_xlat50 = dot(vec3<f32>(x_551.x, x_551.y, x_551.z), vec3<f32>(x_553.x, x_553.y, x_553.z));
  let x_556 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_556);
  let x_558 : f32 = u_xlat50;
  let x_560 : vec4<f32> = u_xlat4;
  let x_562 : vec3<f32> = (vec3<f32>(x_558, x_558, x_558) * vec3<f32>(x_560.x, x_560.y, x_560.z));
  let x_563 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_562.x, x_562.y, x_562.z, x_563.w);
  let x_566 : f32 = u_xlat3.y;
  let x_568 : f32 = u_xlat35;
  u_xlat50 = ((-(x_566) * x_568) + 1.0f);
  let x_571 : vec4<f32> = u_xlat2;
  let x_574 : vec4<f32> = u_xlat4;
  u_xlat51 = dot(-(vec3<f32>(x_571.x, x_571.y, x_571.z)), vec3<f32>(x_574.x, x_574.y, x_574.z));
  let x_577 : f32 = u_xlat51;
  let x_578 : f32 = u_xlat51;
  u_xlat51 = (x_577 + x_578);
  let x_580 : vec4<f32> = u_xlat4;
  let x_582 : f32 = u_xlat51;
  let x_586 : vec4<f32> = u_xlat2;
  let x_589 : vec3<f32> = ((vec3<f32>(x_580.x, x_580.y, x_580.z) * -(vec3<f32>(x_582, x_582, x_582))) + -(vec3<f32>(x_586.x, x_586.y, x_586.z)));
  let x_590 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : f32 = u_xlat49;
  let x_596 : vec4<f32> = x_37.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_592, x_592, x_592) * vec3<f32>(x_596.x, x_596.y, x_596.z));
  let x_601 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb49 = (0.0f < x_601);
  let x_603 : bool = u_xlatb49;
  if (x_603) {
    let x_606 : vec4<f32> = u_xlat6;
    let x_608 : vec4<f32> = u_xlat6;
    u_xlat49 = dot(vec3<f32>(x_606.x, x_606.y, x_606.z), vec3<f32>(x_608.x, x_608.y, x_608.z));
    let x_611 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_611);
    let x_614 : f32 = u_xlat49;
    let x_616 : vec4<f32> = u_xlat6;
    let x_618 : vec3<f32> = (vec3<f32>(x_614, x_614, x_614) * vec3<f32>(x_616.x, x_616.y, x_616.z));
    let x_619 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_618.x, x_618.y, x_618.z, x_619.w);
    let x_622 : vec3<f32> = u_xlat0;
    let x_626 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    u_xlat11 = (-(x_622) + vec3<f32>(x_626.x, x_626.y, x_626.z));
    let x_629 : vec3<f32> = u_xlat11;
    let x_630 : vec4<f32> = u_xlat10;
    u_xlat11 = (x_629 / vec3<f32>(x_630.x, x_630.y, x_630.z));
    let x_634 : vec3<f32> = u_xlat0;
    let x_638 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(x_634) + vec3<f32>(x_638.x, x_638.y, x_638.z));
    let x_641 : vec3<f32> = u_xlat12;
    let x_642 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_641 / vec3<f32>(x_642.x, x_642.y, x_642.z));
    let x_649 : vec4<f32> = u_xlat10;
    let x_652 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_649.x, x_649.y, x_649.z, x_649.x));
    u_xlatb13 = vec3<bool>(x_652.x, x_652.y, x_652.z);
    let x_655 : vec3<f32> = u_xlat11;
    hlslcc_movcTemp = x_655;
    let x_657 : bool = u_xlatb13.x;
    if (x_657) {
      let x_663 : f32 = u_xlat11.x;
      x_659 = x_663;
    } else {
      let x_666 : f32 = u_xlat12.x;
      x_659 = x_666;
    }
    let x_667 : f32 = x_659;
    hlslcc_movcTemp.x = x_667;
    let x_670 : bool = u_xlatb13.y;
    if (x_670) {
      let x_675 : f32 = u_xlat11.y;
      x_671 = x_675;
    } else {
      let x_678 : f32 = u_xlat12.y;
      x_671 = x_678;
    }
    let x_679 : f32 = x_671;
    hlslcc_movcTemp.y = x_679;
    let x_682 : bool = u_xlatb13.z;
    if (x_682) {
      let x_687 : f32 = u_xlat11.z;
      x_683 = x_687;
    } else {
      let x_690 : f32 = u_xlat12.z;
      x_683 = x_690;
    }
    let x_691 : f32 = x_683;
    hlslcc_movcTemp.z = x_691;
    let x_693 : vec3<f32> = hlslcc_movcTemp;
    u_xlat11 = x_693;
    let x_695 : f32 = u_xlat11.y;
    let x_697 : f32 = u_xlat11.x;
    u_xlat49 = min(x_695, x_697);
    let x_700 : f32 = u_xlat11.z;
    let x_701 : f32 = u_xlat49;
    u_xlat49 = min(x_700, x_701);
    let x_703 : vec3<f32> = u_xlat0;
    let x_705 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    u_xlat11 = (x_703 + -(vec3<f32>(x_705.x, x_705.y, x_705.z)));
    let x_709 : vec4<f32> = u_xlat10;
    let x_711 : f32 = u_xlat49;
    let x_714 : vec3<f32> = u_xlat11;
    let x_715 : vec3<f32> = ((vec3<f32>(x_709.x, x_709.y, x_709.z) * vec3<f32>(x_711, x_711, x_711)) + x_714);
    let x_716 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  } else {
    let x_719 : vec4<f32> = u_xlat6;
    let x_720 : vec3<f32> = vec3<f32>(x_719.x, x_719.y, x_719.z);
    let x_721 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_720.x, x_720.y, x_720.z, x_721.w);
  }
  let x_723 : f32 = u_xlat50;
  u_xlat49 = ((-(x_723) * 0.699999988f) + 1.700000048f);
  let x_729 : f32 = u_xlat49;
  let x_730 : f32 = u_xlat50;
  u_xlat49 = (x_729 * x_730);
  let x_732 : f32 = u_xlat49;
  u_xlat49 = (x_732 * 6.0f);
  let x_742 : vec4<f32> = u_xlat10;
  let x_744 : f32 = u_xlat49;
  let x_745 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_742.x, x_742.y, x_742.z), x_744);
  u_xlat10 = x_745;
  let x_747 : f32 = u_xlat10.w;
  u_xlat51 = (x_747 + -1.0f);
  let x_751 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_752 : f32 = u_xlat51;
  u_xlat51 = ((x_751 * x_752) + 1.0f);
  let x_755 : f32 = u_xlat51;
  u_xlat51 = log2(x_755);
  let x_757 : f32 = u_xlat51;
  let x_759 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat51 = (x_757 * x_759);
  let x_761 : f32 = u_xlat51;
  u_xlat51 = exp2(x_761);
  let x_763 : f32 = u_xlat51;
  let x_765 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat51 = (x_763 * x_765);
  let x_767 : vec4<f32> = u_xlat10;
  let x_769 : f32 = u_xlat51;
  u_xlat11 = (vec3<f32>(x_767.x, x_767.y, x_767.z) * vec3<f32>(x_769, x_769, x_769));
  let x_774 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb52 = (x_774 < 0.999989986f);
  let x_777 : bool = u_xlatb52;
  if (x_777) {
    let x_782 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb52 = (0.0f < x_782);
    let x_784 : bool = u_xlatb52;
    if (x_784) {
      let x_787 : vec4<f32> = u_xlat6;
      let x_789 : vec4<f32> = u_xlat6;
      u_xlat52 = dot(vec3<f32>(x_787.x, x_787.y, x_787.z), vec3<f32>(x_789.x, x_789.y, x_789.z));
      let x_792 : f32 = u_xlat52;
      u_xlat52 = inverseSqrt(x_792);
      let x_794 : f32 = u_xlat52;
      let x_796 : vec4<f32> = u_xlat6;
      u_xlat12 = (vec3<f32>(x_794, x_794, x_794) * vec3<f32>(x_796.x, x_796.y, x_796.z));
      let x_800 : vec3<f32> = u_xlat0;
      let x_804 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(x_800) + vec3<f32>(x_804.x, x_804.y, x_804.z));
      let x_807 : vec3<f32> = u_xlat13;
      let x_808 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_807 / x_808);
      let x_811 : vec3<f32> = u_xlat0;
      let x_815 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(x_811) + vec3<f32>(x_815.x, x_815.y, x_815.z));
      let x_818 : vec3<f32> = u_xlat14;
      let x_819 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_818 / x_819);
      let x_822 : vec3<f32> = u_xlat12;
      let x_824 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_822.x, x_822.y, x_822.z, x_822.x));
      u_xlatb15 = vec3<bool>(x_824.x, x_824.y, x_824.z);
      let x_827 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_827;
      let x_829 : bool = u_xlatb15.x;
      if (x_829) {
        let x_834 : f32 = u_xlat13.x;
        x_830 = x_834;
      } else {
        let x_837 : f32 = u_xlat14.x;
        x_830 = x_837;
      }
      let x_838 : f32 = x_830;
      hlslcc_movcTemp_1.x = x_838;
      let x_841 : bool = u_xlatb15.y;
      if (x_841) {
        let x_846 : f32 = u_xlat13.y;
        x_842 = x_846;
      } else {
        let x_849 : f32 = u_xlat14.y;
        x_842 = x_849;
      }
      let x_850 : f32 = x_842;
      hlslcc_movcTemp_1.y = x_850;
      let x_853 : bool = u_xlatb15.z;
      if (x_853) {
        let x_858 : f32 = u_xlat13.z;
        x_854 = x_858;
      } else {
        let x_861 : f32 = u_xlat14.z;
        x_854 = x_861;
      }
      let x_862 : f32 = x_854;
      hlslcc_movcTemp_1.z = x_862;
      let x_864 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_864;
      let x_866 : f32 = u_xlat13.y;
      let x_868 : f32 = u_xlat13.x;
      u_xlat52 = min(x_866, x_868);
      let x_871 : f32 = u_xlat13.z;
      let x_872 : f32 = u_xlat52;
      u_xlat52 = min(x_871, x_872);
      let x_874 : vec3<f32> = u_xlat0;
      let x_876 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_874 + -(vec3<f32>(x_876.x, x_876.y, x_876.z)));
      let x_880 : vec3<f32> = u_xlat12;
      let x_881 : f32 = u_xlat52;
      let x_884 : vec3<f32> = u_xlat0;
      let x_885 : vec3<f32> = ((x_880 * vec3<f32>(x_881, x_881, x_881)) + x_884);
      let x_886 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_885.x, x_885.y, x_885.z, x_886.w);
    }
    let x_892 : vec4<f32> = u_xlat6;
    let x_894 : f32 = u_xlat49;
    let x_895 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_892.x, x_892.y, x_892.z), x_894);
    u_xlat6 = x_895;
    let x_897 : f32 = u_xlat6.w;
    u_xlat0.x = (x_897 + -1.0f);
    let x_902 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_904 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_902 * x_904) + 1.0f);
    let x_909 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_909);
    let x_913 : f32 = u_xlat0.x;
    let x_915 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_913 * x_915);
    let x_919 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_919);
    let x_923 : f32 = u_xlat0.x;
    let x_925 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_923 * x_925);
    let x_928 : vec4<f32> = u_xlat6;
    let x_930 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_928.x, x_928.y, x_928.z) * vec3<f32>(x_930.x, x_930.x, x_930.x));
    let x_933 : f32 = u_xlat51;
    let x_935 : vec4<f32> = u_xlat10;
    let x_938 : vec3<f32> = u_xlat0;
    let x_940 : vec3<f32> = ((vec3<f32>(x_933, x_933, x_933) * vec3<f32>(x_935.x, x_935.y, x_935.z)) + -(x_938));
    let x_941 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_940.x, x_940.y, x_940.z, x_941.w);
    let x_944 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_946 : vec4<f32> = u_xlat6;
    let x_949 : vec3<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_944.w, x_944.w, x_944.w) * vec3<f32>(x_946.x, x_946.y, x_946.z)) + x_949);
  }
  let x_951 : vec3<f32> = u_xlat7;
  let x_953 : vec4<f32> = x_37.x_Color;
  u_xlat0 = ((x_951 * vec3<f32>(x_953.x, x_953.y, x_953.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_959 : vec3<f32> = u_xlat3;
  let x_961 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_959.x, x_959.x, x_959.x) * x_961) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_967 : f32 = u_xlat3.x;
  u_xlat49 = ((-(x_967) * 0.959999979f) + 0.959999979f);
  let x_972 : f32 = u_xlat49;
  let x_974 : vec3<f32> = u_xlat8;
  let x_975 : vec3<f32> = (vec3<f32>(x_972, x_972, x_972) * x_974);
  let x_976 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_975.x, x_975.y, x_975.z, x_976.w);
  let x_978 : vec3<f32> = u_xlat1;
  let x_979 : f32 = u_xlat48;
  let x_983 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_978 * vec3<f32>(x_979, x_979, x_979)) + vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec3<f32> = u_xlat1;
  let x_987 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_986, x_987);
  let x_989 : f32 = u_xlat48;
  u_xlat48 = max(x_989, 0.001f);
  let x_992 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_992);
  let x_994 : f32 = u_xlat48;
  let x_996 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_994, x_994, x_994) * x_996);
  let x_998 : vec4<f32> = u_xlat4;
  let x_1000 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_998.x, x_998.y, x_998.z), vec3<f32>(x_1000.x, x_1000.y, x_1000.z));
  let x_1003 : vec4<f32> = u_xlat4;
  let x_1006 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1003.x, x_1003.y, x_1003.z), vec3<f32>(x_1006.x, x_1006.y, x_1006.z));
  let x_1011 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1011, 0.0f, 1.0f);
  let x_1015 : vec4<f32> = u_xlat4;
  let x_1017 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_1015.x, x_1015.y, x_1015.z), x_1017);
  let x_1019 : f32 = u_xlat18;
  u_xlat18 = clamp(x_1019, 0.0f, 1.0f);
  let x_1022 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_1024 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1022.x, x_1022.y, x_1022.z), x_1024);
  let x_1028 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1028, 0.0f, 1.0f);
  let x_1033 : f32 = u_xlat1.x;
  let x_1035 : f32 = u_xlat1.x;
  u_xlat17 = (x_1033 * x_1035);
  let x_1037 : f32 = u_xlat17;
  let x_1039 : f32 = u_xlat50;
  u_xlat17 = dot(vec2<f32>(x_1037, x_1037), vec2<f32>(x_1039, x_1039));
  let x_1042 : f32 = u_xlat17;
  u_xlat17 = (x_1042 + -0.5f);
  let x_1047 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_1047) + 1.0f);
  let x_1051 : f32 = u_xlat33;
  let x_1052 : f32 = u_xlat33;
  u_xlat34 = (x_1051 * x_1052);
  let x_1054 : f32 = u_xlat34;
  let x_1055 : f32 = u_xlat34;
  u_xlat34 = (x_1054 * x_1055);
  let x_1057 : f32 = u_xlat33;
  let x_1058 : f32 = u_xlat34;
  u_xlat33 = (x_1057 * x_1058);
  let x_1060 : f32 = u_xlat17;
  let x_1061 : f32 = u_xlat33;
  u_xlat33 = ((x_1060 * x_1061) + 1.0f);
  let x_1064 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_1064)) + 1.0f);
  let x_1068 : f32 = u_xlat34;
  let x_1069 : f32 = u_xlat34;
  u_xlat3.x = (x_1068 * x_1069);
  let x_1073 : f32 = u_xlat3.x;
  let x_1075 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1073 * x_1075);
  let x_1078 : f32 = u_xlat34;
  let x_1080 : f32 = u_xlat3.x;
  u_xlat34 = (x_1078 * x_1080);
  let x_1082 : f32 = u_xlat17;
  let x_1083 : f32 = u_xlat34;
  u_xlat17 = ((x_1082 * x_1083) + 1.0f);
  let x_1086 : f32 = u_xlat17;
  let x_1087 : f32 = u_xlat33;
  u_xlat17 = (x_1086 * x_1087);
  let x_1090 : f32 = u_xlat2.x;
  let x_1091 : f32 = u_xlat17;
  u_xlat17 = (x_1090 * x_1091);
  let x_1093 : f32 = u_xlat50;
  let x_1094 : f32 = u_xlat50;
  u_xlat33 = (x_1093 * x_1094);
  let x_1096 : f32 = u_xlat33;
  u_xlat33 = max(x_1096, 0.002f);
  let x_1099 : f32 = u_xlat33;
  u_xlat50 = (-(x_1099) + 1.0f);
  let x_1102 : f32 = u_xlat48;
  let x_1104 : f32 = u_xlat50;
  let x_1106 : f32 = u_xlat33;
  u_xlat3.x = ((abs(x_1102) * x_1104) + x_1106);
  let x_1110 : f32 = u_xlat2.x;
  let x_1111 : f32 = u_xlat50;
  let x_1113 : f32 = u_xlat33;
  u_xlat50 = ((x_1110 * x_1111) + x_1113);
  let x_1115 : f32 = u_xlat48;
  let x_1117 : f32 = u_xlat50;
  u_xlat48 = (abs(x_1115) * x_1117);
  let x_1120 : f32 = u_xlat2.x;
  let x_1122 : f32 = u_xlat3.x;
  let x_1124 : f32 = u_xlat48;
  u_xlat48 = ((x_1120 * x_1122) + x_1124);
  let x_1126 : f32 = u_xlat48;
  u_xlat48 = (x_1126 + 0.00001f);
  let x_1129 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_1129);
  let x_1131 : f32 = u_xlat33;
  let x_1132 : f32 = u_xlat33;
  u_xlat50 = (x_1131 * x_1132);
  let x_1134 : f32 = u_xlat18;
  let x_1135 : f32 = u_xlat50;
  let x_1137 : f32 = u_xlat18;
  u_xlat3.x = ((x_1134 * x_1135) + -(x_1137));
  let x_1142 : f32 = u_xlat3.x;
  let x_1143 : f32 = u_xlat18;
  u_xlat18 = ((x_1142 * x_1143) + 1.0f);
  let x_1146 : f32 = u_xlat50;
  u_xlat50 = (x_1146 * 0.318309873f);
  let x_1149 : f32 = u_xlat18;
  let x_1150 : f32 = u_xlat18;
  u_xlat18 = ((x_1149 * x_1150) + 0.0000001f);
  let x_1154 : f32 = u_xlat50;
  let x_1155 : f32 = u_xlat18;
  u_xlat18 = (x_1154 / x_1155);
  let x_1157 : f32 = u_xlat48;
  let x_1158 : f32 = u_xlat18;
  u_xlat48 = (x_1157 * x_1158);
  let x_1161 : f32 = u_xlat2.x;
  let x_1162 : f32 = u_xlat48;
  u_xlat48 = (x_1161 * x_1162);
  let x_1164 : f32 = u_xlat48;
  u_xlat48 = (x_1164 * 3.141592741f);
  let x_1167 : f32 = u_xlat48;
  u_xlat48 = max(x_1167, 0.0f);
  let x_1169 : f32 = u_xlat33;
  let x_1170 : f32 = u_xlat33;
  u_xlat33 = ((x_1169 * x_1170) + 1.0f);
  let x_1173 : f32 = u_xlat33;
  u_xlat33 = (1.0f / x_1173);
  let x_1175 : vec3<f32> = u_xlat0;
  let x_1176 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1175, x_1176);
  let x_1181 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1181 == 0.0f));
  let x_1183 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1183);
  let x_1186 : f32 = u_xlat48;
  let x_1188 : f32 = u_xlat2.x;
  u_xlat48 = (x_1186 * x_1188);
  let x_1191 : f32 = u_xlat3.y;
  let x_1192 : f32 = u_xlat35;
  let x_1194 : f32 = u_xlat49;
  u_xlat49 = ((x_1191 * x_1192) + -(x_1194));
  let x_1197 : f32 = u_xlat49;
  u_xlat49 = (x_1197 + 1.0f);
  let x_1199 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1199, 0.0f, 1.0f);
  let x_1201 : f32 = u_xlat17;
  let x_1203 : vec3<f32> = u_xlat9;
  let x_1204 : vec3<f32> = (vec3<f32>(x_1201, x_1201, x_1201) * x_1203);
  let x_1205 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1204.x, x_1204.y, x_1205.z, x_1204.z);
  let x_1207 : vec3<f32> = u_xlat9;
  let x_1208 : f32 = u_xlat48;
  u_xlat3 = (x_1207 * vec3<f32>(x_1208, x_1208, x_1208));
  let x_1212 : f32 = u_xlat1.x;
  u_xlat48 = (-(x_1212) + 1.0f);
  let x_1215 : f32 = u_xlat48;
  let x_1216 : f32 = u_xlat48;
  u_xlat1.x = (x_1215 * x_1216);
  let x_1220 : f32 = u_xlat1.x;
  let x_1222 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1220 * x_1222);
  let x_1225 : f32 = u_xlat48;
  let x_1227 : f32 = u_xlat1.x;
  u_xlat48 = (x_1225 * x_1227);
  let x_1229 : vec3<f32> = u_xlat0;
  let x_1232 : vec3<f32> = (-(x_1229) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1233 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1232.x, x_1232.y, x_1232.z, x_1233.w);
  let x_1235 : vec4<f32> = u_xlat4;
  let x_1237 : f32 = u_xlat48;
  let x_1240 : vec3<f32> = u_xlat0;
  let x_1241 : vec3<f32> = ((vec3<f32>(x_1235.x, x_1235.y, x_1235.z) * vec3<f32>(x_1237, x_1237, x_1237)) + x_1240);
  let x_1242 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1241.x, x_1241.y, x_1241.z, x_1242.w);
  let x_1244 : vec3<f32> = u_xlat3;
  let x_1245 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1244 * vec3<f32>(x_1245.x, x_1245.y, x_1245.z));
  let x_1248 : vec4<f32> = u_xlat6;
  let x_1250 : vec4<f32> = u_xlat2;
  let x_1253 : vec3<f32> = u_xlat3;
  let x_1254 : vec3<f32> = ((vec3<f32>(x_1248.x, x_1248.y, x_1248.z) * vec3<f32>(x_1250.x, x_1250.y, x_1250.w)) + x_1253);
  let x_1255 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1254.x, x_1254.y, x_1255.z, x_1254.z);
  let x_1257 : vec3<f32> = u_xlat11;
  let x_1258 : f32 = u_xlat33;
  u_xlat1 = (x_1257 * vec3<f32>(x_1258, x_1258, x_1258));
  let x_1261 : vec3<f32> = u_xlat0;
  let x_1263 : f32 = u_xlat49;
  u_xlat3 = (-(x_1261) + vec3<f32>(x_1263, x_1263, x_1263));
  let x_1266 : f32 = u_xlat34;
  let x_1268 : vec3<f32> = u_xlat3;
  let x_1270 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1266, x_1266, x_1266) * x_1268) + x_1270);
  let x_1272 : vec3<f32> = u_xlat1;
  let x_1273 : vec3<f32> = u_xlat0;
  let x_1275 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1272 * x_1273) + vec3<f32>(x_1275.x, x_1275.y, x_1275.w));
  let x_1280 : vec4<f32> = u_xlat5;
  let x_1282 : vec3<f32> = u_xlat0;
  let x_1283 : vec3<f32> = (vec3<f32>(x_1280.x, x_1280.y, x_1280.z) + x_1282);
  let x_1284 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1283.x, x_1283.y, x_1283.z, x_1284.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

