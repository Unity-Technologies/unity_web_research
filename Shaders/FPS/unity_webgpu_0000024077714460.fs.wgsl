struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
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

@group(0) @binding(12) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicSmooth : sampler;

var<private> u_xlat53 : f32;

var<private> u_xlat37 : f32;

var<private> u_xlat4 : vec4<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> u_xlat5 : vec3<f32>;

var<private> u_xlat54 : f32;

@group(0) @binding(4) var x_AO : texture_2d<f32>;

@group(0) @binding(15) var sampler_AO : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat7 : vec4<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(13) var sampler_Normal : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlatb53 : bool;

var<private> u_xlat8 : vec4<f32>;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(10) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat55 : f32;

var<private> u_xlat9 : vec3<f32>;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb14 : vec3<bool>;

@group(0) @binding(6) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb55 : bool;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb16 : vec3<bool>;

@group(0) @binding(7) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_295 : vec3<f32>;
  var x_477 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_664 : f32;
  var x_676 : f32;
  var x_688 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_844 : f32;
  var x_856 : f32;
  var x_868 : f32;
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
  let x_242 : f32 = x_39.unity_ProbeVolumeParams.x;
  u_xlatb52 = (x_242 == 1.0f);
  let x_244 : bool = u_xlatb52;
  if (x_244) {
    let x_249 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb53 = (x_249 == 1.0f);
    let x_252 : vec4<f32> = vs_TEXCOORD2;
    let x_256 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_258 : vec3<f32> = (vec3<f32>(x_252.w, x_252.w, x_252.w) * vec3<f32>(x_256.x, x_256.y, x_256.z));
    let x_259 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_258.x, x_258.y, x_258.z, x_259.w);
    let x_262 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_264 : vec4<f32> = vs_TEXCOORD1;
    let x_267 : vec4<f32> = u_xlat8;
    let x_269 : vec3<f32> = ((vec3<f32>(x_262.x, x_262.y, x_262.z) * vec3<f32>(x_264.w, x_264.w, x_264.w)) + vec3<f32>(x_267.x, x_267.y, x_267.z));
    let x_270 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_269.x, x_269.y, x_269.z, x_270.w);
    let x_274 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_276 : vec4<f32> = vs_TEXCOORD3;
    let x_279 : vec4<f32> = u_xlat8;
    let x_281 : vec3<f32> = ((vec3<f32>(x_274.x, x_274.y, x_274.z) * vec3<f32>(x_276.w, x_276.w, x_276.w)) + vec3<f32>(x_279.x, x_279.y, x_279.z));
    let x_282 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat8;
    let x_288 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_290 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) + vec3<f32>(x_288.x, x_288.y, x_288.z));
    let x_291 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_293 : bool = u_xlatb53;
    if (x_293) {
      let x_298 : vec4<f32> = u_xlat8;
      x_295 = vec3<f32>(x_298.x, x_298.y, x_298.z);
    } else {
      let x_301 : vec4<f32> = u_xlat0;
      x_295 = vec3<f32>(x_301.x, x_301.y, x_301.z);
    }
    let x_303 : vec3<f32> = x_295;
    let x_304 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_303.x, x_303.y, x_303.z, x_304.w);
    let x_306 : vec4<f32> = u_xlat8;
    let x_310 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_312 : vec3<f32> = (vec3<f32>(x_306.x, x_306.y, x_306.z) + -(x_310));
    let x_313 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_312.x, x_312.y, x_312.z, x_313.w);
    let x_315 : vec4<f32> = u_xlat8;
    let x_319 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_320 : vec3<f32> = (vec3<f32>(x_315.x, x_315.y, x_315.z) * x_319);
    let x_321 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_321.x, x_320.x, x_320.y, x_320.z);
    let x_324 : f32 = u_xlat8.y;
    u_xlat53 = ((x_324 * 0.25f) + 0.75f);
    let x_330 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat37 = ((x_330 * 0.5f) + 0.75f);
    let x_334 : f32 = u_xlat53;
    let x_335 : f32 = u_xlat37;
    u_xlat8.x = max(x_334, x_335);
    let x_346 : vec4<f32> = u_xlat8;
    let x_348 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_346.x, x_346.z, x_346.w));
    u_xlat8 = x_348;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_354 : vec4<f32> = u_xlat8;
  let x_357 : vec4<f32> = x_39.unity_OcclusionMaskSelector;
  u_xlat53 = dot(x_354, x_357);
  let x_359 : f32 = u_xlat53;
  u_xlat53 = clamp(x_359, 0.0f, 1.0f);
  let x_361 : vec4<f32> = vs_TEXCOORD1;
  let x_363 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(vec3<f32>(x_361.x, x_361.y, x_361.z), vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_367 : vec4<f32> = vs_TEXCOORD2;
  let x_369 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(vec3<f32>(x_367.x, x_367.y, x_367.z), vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_373 : vec4<f32> = vs_TEXCOORD3;
  let x_375 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(vec3<f32>(x_373.x, x_373.y, x_373.z), vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_379 : vec4<f32> = u_xlat8;
  let x_381 : vec4<f32> = u_xlat8;
  u_xlat37 = dot(vec3<f32>(x_379.x, x_379.y, x_379.z), vec3<f32>(x_381.x, x_381.y, x_381.z));
  let x_384 : f32 = u_xlat37;
  u_xlat37 = inverseSqrt(x_384);
  let x_386 : f32 = u_xlat37;
  let x_388 : vec4<f32> = u_xlat8;
  let x_390 : vec3<f32> = (vec3<f32>(x_386, x_386, x_386) * vec3<f32>(x_388.x, x_388.y, x_388.z));
  let x_391 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_390.x, x_390.y, x_390.z, x_391.w);
  let x_394 : f32 = u_xlat3.y;
  let x_398 : f32 = x_39.x_Glossiness;
  u_xlat37 = ((-(x_394) * x_398) + 1.0f);
  let x_402 : vec4<f32> = u_xlat2;
  let x_405 : vec4<f32> = u_xlat7;
  u_xlat55 = dot(-(vec3<f32>(x_402.x, x_402.y, x_402.z)), vec3<f32>(x_405.x, x_405.y, x_405.z));
  let x_408 : f32 = u_xlat55;
  let x_409 : f32 = u_xlat55;
  u_xlat55 = (x_408 + x_409);
  let x_411 : vec4<f32> = u_xlat7;
  let x_413 : f32 = u_xlat55;
  let x_417 : vec4<f32> = u_xlat2;
  let x_420 : vec3<f32> = ((vec3<f32>(x_411.x, x_411.y, x_411.z) * -(vec3<f32>(x_413, x_413, x_413))) + -(vec3<f32>(x_417.x, x_417.y, x_417.z)));
  let x_421 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_420.x, x_420.y, x_420.z, x_421.w);
  let x_424 : f32 = u_xlat53;
  let x_428 : vec4<f32> = x_39.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_424, x_424, x_424) * vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : bool = u_xlatb52;
  if (x_431) {
    let x_435 : f32 = x_39.unity_ProbeVolumeParams.y;
    u_xlatb52 = (x_435 == 1.0f);
    let x_438 : vec4<f32> = vs_TEXCOORD2;
    let x_441 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[1i];
    let x_443 : vec3<f32> = (vec3<f32>(x_438.w, x_438.w, x_438.w) * vec3<f32>(x_441.x, x_441.y, x_441.z));
    let x_444 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_443.x, x_443.y, x_443.z, x_444.w);
    let x_447 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[0i];
    let x_449 : vec4<f32> = vs_TEXCOORD1;
    let x_452 : vec4<f32> = u_xlat10;
    let x_454 : vec3<f32> = ((vec3<f32>(x_447.x, x_447.y, x_447.z) * vec3<f32>(x_449.w, x_449.w, x_449.w)) + vec3<f32>(x_452.x, x_452.y, x_452.z));
    let x_455 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_454.x, x_454.y, x_454.z, x_455.w);
    let x_458 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[2i];
    let x_460 : vec4<f32> = vs_TEXCOORD3;
    let x_463 : vec4<f32> = u_xlat10;
    let x_465 : vec3<f32> = ((vec3<f32>(x_458.x, x_458.y, x_458.z) * vec3<f32>(x_460.w, x_460.w, x_460.w)) + vec3<f32>(x_463.x, x_463.y, x_463.z));
    let x_466 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_465.x, x_465.y, x_465.z, x_466.w);
    let x_468 : vec4<f32> = u_xlat10;
    let x_471 : vec4<f32> = x_39.unity_ProbeVolumeWorldToObject[3i];
    let x_473 : vec3<f32> = (vec3<f32>(x_468.x, x_468.y, x_468.z) + vec3<f32>(x_471.x, x_471.y, x_471.z));
    let x_474 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_473.x, x_473.y, x_473.z, x_474.w);
    let x_476 : bool = u_xlatb52;
    if (x_476) {
      let x_480 : vec4<f32> = u_xlat10;
      x_477 = vec3<f32>(x_480.x, x_480.y, x_480.z);
    } else {
      let x_483 : vec4<f32> = u_xlat0;
      x_477 = vec3<f32>(x_483.x, x_483.y, x_483.z);
    }
    let x_485 : vec3<f32> = x_477;
    let x_486 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_485.x, x_485.y, x_485.z, x_486.w);
    let x_488 : vec4<f32> = u_xlat10;
    let x_491 : vec3<f32> = x_39.unity_ProbeVolumeMin;
    let x_493 : vec3<f32> = (vec3<f32>(x_488.x, x_488.y, x_488.z) + -(x_491));
    let x_494 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
    let x_496 : vec4<f32> = u_xlat10;
    let x_499 : vec3<f32> = x_39.unity_ProbeVolumeSizeInv;
    let x_500 : vec3<f32> = (vec3<f32>(x_496.x, x_496.y, x_496.z) * x_499);
    let x_501 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_501.x, x_500.x, x_500.y, x_500.z);
    let x_504 : f32 = u_xlat10.y;
    u_xlat52 = (x_504 * 0.25f);
    let x_507 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat53 = (x_507 * 0.5f);
    let x_510 : f32 = x_39.unity_ProbeVolumeParams.z;
    u_xlat55 = ((-(x_510) * 0.5f) + 0.25f);
    let x_514 : f32 = u_xlat52;
    let x_515 : f32 = u_xlat53;
    u_xlat52 = max(x_514, x_515);
    let x_517 : f32 = u_xlat55;
    let x_518 : f32 = u_xlat52;
    u_xlat10.x = min(x_517, x_518);
    let x_525 : vec4<f32> = u_xlat10;
    let x_527 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_525.x, x_525.z, x_525.w));
    u_xlat11 = x_527;
    let x_529 : vec4<f32> = u_xlat10;
    let x_532 : vec3<f32> = (vec3<f32>(x_529.x, x_529.z, x_529.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_533 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_532.x, x_532.y, x_532.z, x_533.w);
    let x_538 : vec4<f32> = u_xlat12;
    let x_540 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_538.x, x_538.y, x_538.z));
    u_xlat12 = x_540;
    let x_541 : vec4<f32> = u_xlat10;
    let x_544 : vec3<f32> = (vec3<f32>(x_541.x, x_541.z, x_541.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_545 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_544.x, x_544.y, x_544.z, x_545.w);
    let x_550 : vec4<f32> = u_xlat10;
    let x_552 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_550.x, x_550.y, x_550.z));
    u_xlat10 = x_552;
    u_xlat7.w = 1.0f;
    let x_554 : vec4<f32> = u_xlat11;
    let x_555 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_554, x_555);
    let x_558 : vec4<f32> = u_xlat12;
    let x_559 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_558, x_559);
    let x_562 : vec4<f32> = u_xlat10;
    let x_563 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_562, x_563);
  } else {
    u_xlat7.w = 1.0f;
    let x_569 : vec4<f32> = x_39.unity_SHAr;
    let x_570 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_569, x_570);
    let x_574 : vec4<f32> = x_39.unity_SHAg;
    let x_575 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_574, x_575);
    let x_580 : vec4<f32> = x_39.unity_SHAb;
    let x_581 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_580, x_581);
  }
  let x_584 : vec4<f32> = u_xlat11;
  let x_588 : vec3<f32> = vs_TEXCOORD4;
  let x_589 : vec3<f32> = (vec3<f32>(x_584.x, x_584.y, x_584.z) + x_588);
  let x_590 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_589.x, x_589.y, x_589.z, x_590.w);
  let x_592 : vec4<f32> = u_xlat10;
  let x_595 : vec3<f32> = max(vec3<f32>(x_592.x, x_592.y, x_592.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_596 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_595.x, x_595.y, x_595.z, x_596.w);
  let x_600 : f32 = x_39.unity_SpecCube0_ProbePosition.w;
  u_xlatb52 = (0.0f < x_600);
  let x_602 : bool = u_xlatb52;
  if (x_602) {
    let x_605 : vec4<f32> = u_xlat8;
    let x_607 : vec4<f32> = u_xlat8;
    u_xlat52 = dot(vec3<f32>(x_605.x, x_605.y, x_605.z), vec3<f32>(x_607.x, x_607.y, x_607.z));
    let x_610 : f32 = u_xlat52;
    u_xlat52 = inverseSqrt(x_610);
    let x_612 : f32 = u_xlat52;
    let x_614 : vec4<f32> = u_xlat8;
    let x_616 : vec3<f32> = (vec3<f32>(x_612, x_612, x_612) * vec3<f32>(x_614.x, x_614.y, x_614.z));
    let x_617 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_616.x, x_616.y, x_616.z, x_617.w);
    let x_619 : vec4<f32> = u_xlat0;
    let x_624 : vec4<f32> = x_39.unity_SpecCube0_BoxMax;
    let x_626 : vec3<f32> = (-(vec3<f32>(x_619.x, x_619.y, x_619.z)) + vec3<f32>(x_624.x, x_624.y, x_624.z));
    let x_627 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
    let x_629 : vec4<f32> = u_xlat12;
    let x_631 : vec4<f32> = u_xlat11;
    let x_633 : vec3<f32> = (vec3<f32>(x_629.x, x_629.y, x_629.z) / vec3<f32>(x_631.x, x_631.y, x_631.z));
    let x_634 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_633.x, x_633.y, x_633.z, x_634.w);
    let x_637 : vec4<f32> = u_xlat0;
    let x_642 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    u_xlat13 = (-(vec3<f32>(x_637.x, x_637.y, x_637.z)) + vec3<f32>(x_642.x, x_642.y, x_642.z));
    let x_645 : vec3<f32> = u_xlat13;
    let x_646 : vec4<f32> = u_xlat11;
    u_xlat13 = (x_645 / vec3<f32>(x_646.x, x_646.y, x_646.z));
    let x_653 : vec4<f32> = u_xlat11;
    let x_656 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_653.x, x_653.y, x_653.z, x_653.x));
    u_xlatb14 = vec3<bool>(x_656.x, x_656.y, x_656.z);
    let x_660 : vec4<f32> = u_xlat12;
    hlslcc_movcTemp = x_660;
    let x_662 : bool = u_xlatb14.x;
    if (x_662) {
      let x_668 : f32 = u_xlat12.x;
      x_664 = x_668;
    } else {
      let x_671 : f32 = u_xlat13.x;
      x_664 = x_671;
    }
    let x_672 : f32 = x_664;
    hlslcc_movcTemp.x = x_672;
    let x_675 : bool = u_xlatb14.y;
    if (x_675) {
      let x_680 : f32 = u_xlat12.y;
      x_676 = x_680;
    } else {
      let x_683 : f32 = u_xlat13.y;
      x_676 = x_683;
    }
    let x_684 : f32 = x_676;
    hlslcc_movcTemp.y = x_684;
    let x_687 : bool = u_xlatb14.z;
    if (x_687) {
      let x_692 : f32 = u_xlat12.z;
      x_688 = x_692;
    } else {
      let x_695 : f32 = u_xlat13.z;
      x_688 = x_695;
    }
    let x_696 : f32 = x_688;
    hlslcc_movcTemp.z = x_696;
    let x_698 : vec4<f32> = hlslcc_movcTemp;
    u_xlat12 = x_698;
    let x_700 : f32 = u_xlat12.y;
    let x_702 : f32 = u_xlat12.x;
    u_xlat52 = min(x_700, x_702);
    let x_705 : f32 = u_xlat12.z;
    let x_706 : f32 = u_xlat52;
    u_xlat52 = min(x_705, x_706);
    let x_708 : vec4<f32> = u_xlat0;
    let x_711 : vec4<f32> = x_39.unity_SpecCube0_ProbePosition;
    let x_714 : vec3<f32> = (vec3<f32>(x_708.x, x_708.y, x_708.z) + -(vec3<f32>(x_711.x, x_711.y, x_711.z)));
    let x_715 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_714.x, x_714.y, x_714.z, x_715.w);
    let x_717 : vec4<f32> = u_xlat11;
    let x_719 : f32 = u_xlat52;
    let x_722 : vec4<f32> = u_xlat12;
    let x_724 : vec3<f32> = ((vec3<f32>(x_717.x, x_717.y, x_717.z) * vec3<f32>(x_719, x_719, x_719)) + vec3<f32>(x_722.x, x_722.y, x_722.z));
    let x_725 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
  } else {
    let x_728 : vec4<f32> = u_xlat8;
    let x_729 : vec3<f32> = vec3<f32>(x_728.x, x_728.y, x_728.z);
    let x_730 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_729.x, x_729.y, x_729.z, x_730.w);
  }
  let x_732 : f32 = u_xlat37;
  u_xlat52 = ((-(x_732) * 0.699999988f) + 1.700000048f);
  let x_738 : f32 = u_xlat52;
  let x_739 : f32 = u_xlat37;
  u_xlat52 = (x_738 * x_739);
  let x_741 : f32 = u_xlat52;
  u_xlat52 = (x_741 * 6.0f);
  let x_752 : vec4<f32> = u_xlat11;
  let x_754 : f32 = u_xlat52;
  let x_755 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_752.x, x_752.y, x_752.z), x_754);
  u_xlat11 = x_755;
  let x_757 : f32 = u_xlat11.w;
  u_xlat53 = (x_757 + -1.0f);
  let x_761 : f32 = x_39.unity_SpecCube0_HDR.w;
  let x_762 : f32 = u_xlat53;
  u_xlat53 = ((x_761 * x_762) + 1.0f);
  let x_765 : f32 = u_xlat53;
  u_xlat53 = log2(x_765);
  let x_767 : f32 = u_xlat53;
  let x_769 : f32 = x_39.unity_SpecCube0_HDR.y;
  u_xlat53 = (x_767 * x_769);
  let x_771 : f32 = u_xlat53;
  u_xlat53 = exp2(x_771);
  let x_773 : f32 = u_xlat53;
  let x_775 : f32 = x_39.unity_SpecCube0_HDR.x;
  u_xlat53 = (x_773 * x_775);
  let x_777 : vec4<f32> = u_xlat11;
  let x_779 : f32 = u_xlat53;
  let x_781 : vec3<f32> = (vec3<f32>(x_777.x, x_777.y, x_777.z) * vec3<f32>(x_779, x_779, x_779));
  let x_782 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_781.x, x_781.y, x_781.z, x_782.w);
  let x_786 : f32 = x_39.unity_SpecCube0_BoxMin.w;
  u_xlatb55 = (x_786 < 0.999989986f);
  let x_789 : bool = u_xlatb55;
  if (x_789) {
    let x_794 : f32 = x_39.unity_SpecCube1_ProbePosition.w;
    u_xlatb55 = (0.0f < x_794);
    let x_796 : bool = u_xlatb55;
    if (x_796) {
      let x_799 : vec4<f32> = u_xlat8;
      let x_801 : vec4<f32> = u_xlat8;
      u_xlat55 = dot(vec3<f32>(x_799.x, x_799.y, x_799.z), vec3<f32>(x_801.x, x_801.y, x_801.z));
      let x_804 : f32 = u_xlat55;
      u_xlat55 = inverseSqrt(x_804);
      let x_806 : f32 = u_xlat55;
      let x_808 : vec4<f32> = u_xlat8;
      u_xlat13 = (vec3<f32>(x_806, x_806, x_806) * vec3<f32>(x_808.x, x_808.y, x_808.z));
      let x_812 : vec4<f32> = u_xlat0;
      let x_817 : vec4<f32> = x_39.unity_SpecCube1_BoxMax;
      u_xlat14 = (-(vec3<f32>(x_812.x, x_812.y, x_812.z)) + vec3<f32>(x_817.x, x_817.y, x_817.z));
      let x_820 : vec3<f32> = u_xlat14;
      let x_821 : vec3<f32> = u_xlat13;
      u_xlat14 = (x_820 / x_821);
      let x_824 : vec4<f32> = u_xlat0;
      let x_829 : vec4<f32> = x_39.unity_SpecCube1_BoxMin;
      u_xlat15 = (-(vec3<f32>(x_824.x, x_824.y, x_824.z)) + vec3<f32>(x_829.x, x_829.y, x_829.z));
      let x_832 : vec3<f32> = u_xlat15;
      let x_833 : vec3<f32> = u_xlat13;
      u_xlat15 = (x_832 / x_833);
      let x_836 : vec3<f32> = u_xlat13;
      let x_838 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_836.x, x_836.y, x_836.z, x_836.x));
      u_xlatb16 = vec3<bool>(x_838.x, x_838.y, x_838.z);
      let x_841 : vec3<f32> = u_xlat14;
      hlslcc_movcTemp_1 = x_841;
      let x_843 : bool = u_xlatb16.x;
      if (x_843) {
        let x_848 : f32 = u_xlat14.x;
        x_844 = x_848;
      } else {
        let x_851 : f32 = u_xlat15.x;
        x_844 = x_851;
      }
      let x_852 : f32 = x_844;
      hlslcc_movcTemp_1.x = x_852;
      let x_855 : bool = u_xlatb16.y;
      if (x_855) {
        let x_860 : f32 = u_xlat14.y;
        x_856 = x_860;
      } else {
        let x_863 : f32 = u_xlat15.y;
        x_856 = x_863;
      }
      let x_864 : f32 = x_856;
      hlslcc_movcTemp_1.y = x_864;
      let x_867 : bool = u_xlatb16.z;
      if (x_867) {
        let x_872 : f32 = u_xlat14.z;
        x_868 = x_872;
      } else {
        let x_875 : f32 = u_xlat15.z;
        x_868 = x_875;
      }
      let x_876 : f32 = x_868;
      hlslcc_movcTemp_1.z = x_876;
      let x_878 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat14 = x_878;
      let x_880 : f32 = u_xlat14.y;
      let x_882 : f32 = u_xlat14.x;
      u_xlat55 = min(x_880, x_882);
      let x_885 : f32 = u_xlat14.z;
      let x_886 : f32 = u_xlat55;
      u_xlat55 = min(x_885, x_886);
      let x_888 : vec4<f32> = u_xlat0;
      let x_891 : vec4<f32> = x_39.unity_SpecCube1_ProbePosition;
      let x_894 : vec3<f32> = (vec3<f32>(x_888.x, x_888.y, x_888.z) + -(vec3<f32>(x_891.x, x_891.y, x_891.z)));
      let x_895 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_894.x, x_894.y, x_894.z, x_895.w);
      let x_897 : vec3<f32> = u_xlat13;
      let x_898 : f32 = u_xlat55;
      let x_901 : vec4<f32> = u_xlat0;
      let x_903 : vec3<f32> = ((x_897 * vec3<f32>(x_898, x_898, x_898)) + vec3<f32>(x_901.x, x_901.y, x_901.z));
      let x_904 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_903.x, x_903.y, x_903.z, x_904.w);
    }
    let x_910 : vec4<f32> = u_xlat8;
    let x_912 : f32 = u_xlat52;
    let x_913 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_910.x, x_910.y, x_910.z), x_912);
    u_xlat8 = x_913;
    let x_915 : f32 = u_xlat8.w;
    u_xlat0.x = (x_915 + -1.0f);
    let x_920 : f32 = x_39.unity_SpecCube1_HDR.w;
    let x_922 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_920 * x_922) + 1.0f);
    let x_927 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_927);
    let x_931 : f32 = u_xlat0.x;
    let x_933 : f32 = x_39.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_931 * x_933);
    let x_937 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_937);
    let x_941 : f32 = u_xlat0.x;
    let x_943 : f32 = x_39.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_941 * x_943);
    let x_946 : vec4<f32> = u_xlat8;
    let x_948 : vec4<f32> = u_xlat0;
    let x_950 : vec3<f32> = (vec3<f32>(x_946.x, x_946.y, x_946.z) * vec3<f32>(x_948.x, x_948.x, x_948.x));
    let x_951 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_950.x, x_950.y, x_950.z, x_951.w);
    let x_953 : f32 = u_xlat53;
    let x_955 : vec4<f32> = u_xlat11;
    let x_958 : vec4<f32> = u_xlat0;
    let x_961 : vec3<f32> = ((vec3<f32>(x_953, x_953, x_953) * vec3<f32>(x_955.x, x_955.y, x_955.z)) + -(vec3<f32>(x_958.x, x_958.y, x_958.z)));
    let x_962 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
    let x_965 : vec4<f32> = x_39.unity_SpecCube0_BoxMin;
    let x_967 : vec4<f32> = u_xlat8;
    let x_970 : vec4<f32> = u_xlat0;
    let x_972 : vec3<f32> = ((vec3<f32>(x_965.w, x_965.w, x_965.w) * vec3<f32>(x_967.x, x_967.y, x_967.z)) + vec3<f32>(x_970.x, x_970.y, x_970.z));
    let x_973 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_972.x, x_972.y, x_972.z, x_973.w);
  }
  let x_975 : f32 = u_xlat54;
  let x_977 : vec4<f32> = u_xlat12;
  let x_979 : vec3<f32> = (vec3<f32>(x_975, x_975, x_975) * vec3<f32>(x_977.x, x_977.y, x_977.z));
  let x_980 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_979.x, x_979.y, x_979.z, x_980.w);
  let x_982 : vec4<f32> = u_xlat4;
  let x_985 : vec4<f32> = x_39.x_Color;
  let x_990 : vec3<f32> = ((vec3<f32>(x_982.x, x_982.y, x_982.z) * vec3<f32>(x_985.x, x_985.y, x_985.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_991 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_990.x, x_990.y, x_990.z, x_991.w);
  let x_993 : vec3<f32> = u_xlat3;
  let x_995 : vec4<f32> = u_xlat4;
  let x_1000 : vec3<f32> = ((vec3<f32>(x_993.x, x_993.x, x_993.x) * vec3<f32>(x_995.x, x_995.y, x_995.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1001 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1000.x, x_1000.y, x_1000.z, x_1001.w);
  let x_1004 : f32 = u_xlat3.x;
  u_xlat52 = ((-(x_1004) * 0.959999979f) + 0.959999979f);
  let x_1009 : f32 = u_xlat52;
  let x_1011 : vec3<f32> = u_xlat5;
  u_xlat5 = (vec3<f32>(x_1009, x_1009, x_1009) * x_1011);
  let x_1013 : vec3<f32> = u_xlat1;
  let x_1014 : f32 = u_xlat51;
  let x_1018 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1013 * vec3<f32>(x_1014, x_1014, x_1014)) + vec3<f32>(x_1018.x, x_1018.y, x_1018.z));
  let x_1021 : vec3<f32> = u_xlat1;
  let x_1022 : vec3<f32> = u_xlat1;
  u_xlat51 = dot(x_1021, x_1022);
  let x_1024 : f32 = u_xlat51;
  u_xlat51 = max(x_1024, 0.001f);
  let x_1027 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_1027);
  let x_1029 : f32 = u_xlat51;
  let x_1031 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1029, x_1029, x_1029) * x_1031);
  let x_1033 : vec4<f32> = u_xlat7;
  let x_1035 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_1033.x, x_1033.y, x_1033.z), vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
  let x_1038 : vec4<f32> = u_xlat7;
  let x_1041 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1038.x, x_1038.y, x_1038.z), vec3<f32>(x_1041.x, x_1041.y, x_1041.z));
  let x_1046 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1046, 0.0f, 1.0f);
  let x_1050 : vec4<f32> = u_xlat7;
  let x_1052 : vec3<f32> = u_xlat1;
  u_xlat19 = dot(vec3<f32>(x_1050.x, x_1050.y, x_1050.z), x_1052);
  let x_1054 : f32 = u_xlat19;
  u_xlat19 = clamp(x_1054, 0.0f, 1.0f);
  let x_1057 : vec4<f32> = x_39.x_WorldSpaceLightPos0;
  let x_1059 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1057.x, x_1057.y, x_1057.z), x_1059);
  let x_1063 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1063, 0.0f, 1.0f);
  let x_1068 : f32 = u_xlat1.x;
  let x_1070 : f32 = u_xlat1.x;
  u_xlat18 = (x_1068 * x_1070);
  let x_1072 : f32 = u_xlat18;
  let x_1074 : f32 = u_xlat37;
  u_xlat18 = dot(vec2<f32>(x_1072, x_1072), vec2<f32>(x_1074, x_1074));
  let x_1077 : f32 = u_xlat18;
  u_xlat18 = (x_1077 + -0.5f);
  let x_1082 : f32 = u_xlat2.x;
  u_xlat35 = (-(x_1082) + 1.0f);
  let x_1086 : f32 = u_xlat35;
  let x_1087 : f32 = u_xlat35;
  u_xlat36 = (x_1086 * x_1087);
  let x_1089 : f32 = u_xlat36;
  let x_1090 : f32 = u_xlat36;
  u_xlat36 = (x_1089 * x_1090);
  let x_1092 : f32 = u_xlat35;
  let x_1093 : f32 = u_xlat36;
  u_xlat35 = (x_1092 * x_1093);
  let x_1095 : f32 = u_xlat18;
  let x_1096 : f32 = u_xlat35;
  u_xlat35 = ((x_1095 * x_1096) + 1.0f);
  let x_1099 : f32 = u_xlat51;
  u_xlat36 = (-(abs(x_1099)) + 1.0f);
  let x_1103 : f32 = u_xlat36;
  let x_1104 : f32 = u_xlat36;
  u_xlat53 = (x_1103 * x_1104);
  let x_1106 : f32 = u_xlat53;
  let x_1107 : f32 = u_xlat53;
  u_xlat53 = (x_1106 * x_1107);
  let x_1109 : f32 = u_xlat36;
  let x_1110 : f32 = u_xlat53;
  u_xlat36 = (x_1109 * x_1110);
  let x_1112 : f32 = u_xlat18;
  let x_1113 : f32 = u_xlat36;
  u_xlat18 = ((x_1112 * x_1113) + 1.0f);
  let x_1116 : f32 = u_xlat18;
  let x_1117 : f32 = u_xlat35;
  u_xlat18 = (x_1116 * x_1117);
  let x_1120 : f32 = u_xlat2.x;
  let x_1121 : f32 = u_xlat18;
  u_xlat18 = (x_1120 * x_1121);
  let x_1123 : f32 = u_xlat37;
  let x_1124 : f32 = u_xlat37;
  u_xlat35 = (x_1123 * x_1124);
  let x_1126 : f32 = u_xlat35;
  u_xlat35 = max(x_1126, 0.002f);
  let x_1129 : f32 = u_xlat35;
  u_xlat53 = (-(x_1129) + 1.0f);
  let x_1132 : f32 = u_xlat51;
  let x_1134 : f32 = u_xlat53;
  let x_1136 : f32 = u_xlat35;
  u_xlat3.x = ((abs(x_1132) * x_1134) + x_1136);
  let x_1140 : f32 = u_xlat2.x;
  let x_1141 : f32 = u_xlat53;
  let x_1143 : f32 = u_xlat35;
  u_xlat53 = ((x_1140 * x_1141) + x_1143);
  let x_1145 : f32 = u_xlat51;
  let x_1147 : f32 = u_xlat53;
  u_xlat51 = (abs(x_1145) * x_1147);
  let x_1150 : f32 = u_xlat2.x;
  let x_1152 : f32 = u_xlat3.x;
  let x_1154 : f32 = u_xlat51;
  u_xlat51 = ((x_1150 * x_1152) + x_1154);
  let x_1156 : f32 = u_xlat51;
  u_xlat51 = (x_1156 + 0.00001f);
  let x_1159 : f32 = u_xlat51;
  u_xlat51 = (0.5f / x_1159);
  let x_1161 : f32 = u_xlat35;
  let x_1162 : f32 = u_xlat35;
  u_xlat53 = (x_1161 * x_1162);
  let x_1164 : f32 = u_xlat19;
  let x_1165 : f32 = u_xlat53;
  let x_1167 : f32 = u_xlat19;
  u_xlat3.x = ((x_1164 * x_1165) + -(x_1167));
  let x_1172 : f32 = u_xlat3.x;
  let x_1173 : f32 = u_xlat19;
  u_xlat19 = ((x_1172 * x_1173) + 1.0f);
  let x_1176 : f32 = u_xlat53;
  u_xlat53 = (x_1176 * 0.318309873f);
  let x_1179 : f32 = u_xlat19;
  let x_1180 : f32 = u_xlat19;
  u_xlat19 = ((x_1179 * x_1180) + 0.0000001f);
  let x_1184 : f32 = u_xlat53;
  let x_1185 : f32 = u_xlat19;
  u_xlat19 = (x_1184 / x_1185);
  let x_1187 : f32 = u_xlat51;
  let x_1188 : f32 = u_xlat19;
  u_xlat51 = (x_1187 * x_1188);
  let x_1191 : f32 = u_xlat2.x;
  let x_1192 : f32 = u_xlat51;
  u_xlat51 = (x_1191 * x_1192);
  let x_1194 : f32 = u_xlat51;
  u_xlat51 = (x_1194 * 3.141592741f);
  let x_1197 : f32 = u_xlat51;
  u_xlat51 = max(x_1197, 0.0f);
  let x_1199 : f32 = u_xlat35;
  let x_1200 : f32 = u_xlat35;
  u_xlat35 = ((x_1199 * x_1200) + 1.0f);
  let x_1203 : f32 = u_xlat35;
  u_xlat1.z = (1.0f / x_1203);
  let x_1206 : vec4<f32> = u_xlat4;
  let x_1208 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_1206.x, x_1206.y, x_1206.z), vec3<f32>(x_1208.x, x_1208.y, x_1208.z));
  let x_1214 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1214 == 0.0f));
  let x_1216 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1216);
  let x_1219 : f32 = u_xlat51;
  let x_1221 : f32 = u_xlat2.x;
  u_xlat51 = (x_1219 * x_1221);
  let x_1224 : f32 = u_xlat3.y;
  let x_1226 : f32 = x_39.x_Glossiness;
  let x_1228 : f32 = u_xlat52;
  u_xlat52 = ((x_1224 * x_1226) + -(x_1228));
  let x_1231 : f32 = u_xlat52;
  u_xlat52 = (x_1231 + 1.0f);
  let x_1233 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1233, 0.0f, 1.0f);
  let x_1235 : f32 = u_xlat18;
  let x_1237 : vec3<f32> = u_xlat9;
  let x_1238 : vec3<f32> = (vec3<f32>(x_1235, x_1235, x_1235) * x_1237);
  let x_1239 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1238.x, x_1238.y, x_1239.z, x_1238.z);
  let x_1241 : vec4<f32> = u_xlat10;
  let x_1243 : f32 = u_xlat54;
  let x_1246 : vec4<f32> = u_xlat2;
  let x_1248 : vec3<f32> = ((vec3<f32>(x_1241.x, x_1241.y, x_1241.z) * vec3<f32>(x_1243, x_1243, x_1243)) + vec3<f32>(x_1246.x, x_1246.y, x_1246.w));
  let x_1249 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1248.x, x_1248.y, x_1249.z, x_1248.z);
  let x_1251 : vec3<f32> = u_xlat9;
  let x_1252 : f32 = u_xlat51;
  u_xlat3 = (x_1251 * vec3<f32>(x_1252, x_1252, x_1252));
  let x_1256 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1256) + 1.0f);
  let x_1261 : f32 = u_xlat0.w;
  let x_1263 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1261 * x_1263);
  let x_1267 : f32 = u_xlat1.x;
  let x_1269 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1267 * x_1269);
  let x_1272 : vec4<f32> = u_xlat0;
  let x_1273 : vec3<f32> = u_xlat1;
  u_xlat0 = (x_1272 * vec4<f32>(x_1273.z, x_1273.z, x_1273.z, x_1273.x));
  let x_1276 : vec4<f32> = u_xlat4;
  let x_1280 : vec3<f32> = (-(vec3<f32>(x_1276.x, x_1276.y, x_1276.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1281 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1280.x, x_1280.y, x_1280.z, x_1281.w);
  let x_1283 : vec4<f32> = u_xlat7;
  let x_1285 : vec4<f32> = u_xlat0;
  let x_1288 : vec4<f32> = u_xlat4;
  let x_1290 : vec3<f32> = ((vec3<f32>(x_1283.x, x_1283.y, x_1283.z) * vec3<f32>(x_1285.w, x_1285.w, x_1285.w)) + vec3<f32>(x_1288.x, x_1288.y, x_1288.z));
  let x_1291 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1290.x, x_1290.y, x_1290.z, x_1291.w);
  let x_1293 : vec3<f32> = u_xlat3;
  let x_1294 : vec4<f32> = u_xlat7;
  u_xlat3 = (x_1293 * vec3<f32>(x_1294.x, x_1294.y, x_1294.z));
  let x_1297 : vec3<f32> = u_xlat5;
  let x_1298 : vec4<f32> = u_xlat2;
  let x_1301 : vec3<f32> = u_xlat3;
  let x_1302 : vec3<f32> = ((x_1297 * vec3<f32>(x_1298.x, x_1298.y, x_1298.w)) + x_1301);
  let x_1303 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1302.x, x_1302.y, x_1303.z, x_1302.z);
  let x_1305 : vec4<f32> = u_xlat4;
  let x_1308 : f32 = u_xlat52;
  u_xlat1 = (-(vec3<f32>(x_1305.x, x_1305.y, x_1305.z)) + vec3<f32>(x_1308, x_1308, x_1308));
  let x_1311 : f32 = u_xlat36;
  let x_1313 : vec3<f32> = u_xlat1;
  let x_1315 : vec4<f32> = u_xlat4;
  u_xlat1 = ((vec3<f32>(x_1311, x_1311, x_1311) * x_1313) + vec3<f32>(x_1315.x, x_1315.y, x_1315.z));
  let x_1318 : vec4<f32> = u_xlat0;
  let x_1320 : vec3<f32> = u_xlat1;
  let x_1322 : vec4<f32> = u_xlat2;
  let x_1324 : vec3<f32> = ((vec3<f32>(x_1318.x, x_1318.y, x_1318.z) * x_1320) + vec3<f32>(x_1322.x, x_1322.y, x_1322.w));
  let x_1325 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1324.x, x_1324.y, x_1324.z, x_1325.w);
  let x_1329 : vec3<f32> = u_xlat6;
  let x_1330 : vec4<f32> = u_xlat0;
  let x_1332 : vec3<f32> = (x_1329 + vec3<f32>(x_1330.x, x_1330.y, x_1330.z));
  let x_1333 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1332.x, x_1332.y, x_1332.z, x_1333.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

