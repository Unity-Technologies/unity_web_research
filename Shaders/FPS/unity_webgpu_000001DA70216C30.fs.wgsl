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
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_EdgeSize : f32,
  x_NoiseStrength : f32,
  @size(12)
  padding_3 : u32,
  x_Color : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_18 : PGlobals;

var<private> u_xlat21 : f32;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(1) var x_Noise : texture_2d<f32>;

@group(0) @binding(9) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(12) var sampler_MetallicSmooth : sampler;

var<private> u_xlat16 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(10) var sampler_Gradient : sampler;

var<private> u_xlat23 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(11) var sampler_Normal : sampler;

var<private> u_xlatb22 : bool;

var<private> u_xlat6 : vec4<f32>;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> u_xlat8 : f32;

var<private> u_xlat7 : vec3<f32>;

var<private> u_xlat14 : f32;

var<private> u_xlat15 : f32;

var<private> u_xlat9 : f32;

var<private> u_xlatb21 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_267 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat0 = (-(x_12) + x_23);
  let x_27 : vec3<f32> = u_xlat0;
  let x_28 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_27, x_28);
  let x_30 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_30);
  let x_33 : f32 = u_xlat21;
  let x_35 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_33, x_33, x_33) * x_35);
  let x_51 : vec4<f32> = vs_TEXCOORD0;
  let x_53 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_51.x, x_51.y));
  u_xlat22 = x_53.x;
  let x_64 : vec4<f32> = vs_TEXCOORD0;
  let x_66 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, vec2<f32>(x_64.z, x_64.w));
  let x_67 : vec2<f32> = vec2<f32>(x_66.x, x_66.w);
  let x_68 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_67.x, x_67.y, x_68.z, x_68.w);
  let x_76 : vec4<f32> = vs_TEXCOORD0;
  let x_78 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_76.z, x_76.w));
  u_xlat16 = x_78.x;
  let x_81 : f32 = u_xlat16;
  u_xlat23 = (-(x_81) + 1.0f);
  let x_85 : f32 = u_xlat22;
  let x_86 : f32 = u_xlat23;
  u_xlat22 = (x_85 * x_86);
  let x_88 : f32 = u_xlat22;
  let x_92 : f32 = x_18.x_NoiseStrength;
  let x_94 : f32 = u_xlat16;
  u_xlat22 = ((x_88 * x_92) + x_94);
  let x_96 : f32 = u_xlat22;
  u_xlat22 = (-(x_96) + 1.0f);
  let x_99 : f32 = u_xlat22;
  let x_102 : f32 = x_18.x_Cutoff;
  u_xlat22 = (x_99 + -(x_102));
  let x_107 : f32 = x_18.x_EdgeSize;
  u_xlat16 = (1.0f / -(x_107));
  let x_110 : f32 = u_xlat22;
  let x_111 : f32 = u_xlat16;
  u_xlat22 = (x_110 * x_111);
  let x_113 : f32 = u_xlat22;
  u_xlat22 = clamp(x_113, 0.0f, 1.0f);
  let x_116 : f32 = u_xlat22;
  u_xlat16 = ((x_116 * -2.0f) + 3.0f);
  let x_121 : f32 = u_xlat22;
  let x_122 : f32 = u_xlat22;
  u_xlat22 = (x_121 * x_122);
  let x_130 : vec4<f32> = vs_TEXCOORD0;
  let x_132 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_130.z, x_130.w));
  u_xlat3 = vec3<f32>(x_132.x, x_132.y, x_132.z);
  let x_135 : vec3<f32> = u_xlat3;
  let x_139 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_135 * vec3<f32>(x_139.x, x_139.y, x_139.z));
  let x_148 : vec4<f32> = vs_TEXCOORD0;
  let x_150 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_148.z, x_148.w));
  u_xlat5 = vec3<f32>(x_150.x, x_150.y, x_150.w);
  let x_154 : f32 = u_xlat5.z;
  let x_156 : f32 = u_xlat5.x;
  u_xlat5.x = (x_154 * x_156);
  let x_159 : vec3<f32> = u_xlat5;
  let x_166 : vec2<f32> = ((vec2<f32>(x_159.x, x_159.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_167 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_166.x, x_166.y, x_167.z);
  let x_169 : vec3<f32> = u_xlat5;
  let x_171 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_169.x, x_169.y), vec2<f32>(x_171.x, x_171.y));
  let x_174 : f32 = u_xlat23;
  u_xlat23 = min(x_174, 1.0f);
  let x_176 : f32 = u_xlat23;
  u_xlat23 = (-(x_176) + 1.0f);
  let x_179 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_179);
  let x_183 : f32 = u_xlat2.x;
  let x_186 : f32 = x_18.x_Metallic;
  u_xlat2.x = (x_183 * x_186);
  let x_189 : f32 = u_xlat16;
  let x_191 : f32 = u_xlat22;
  let x_194 : f32 = x_18.x_Cutoff;
  u_xlat22 = ((-(x_189) * x_191) + -(x_194));
  let x_197 : f32 = u_xlat22;
  u_xlat22 = (x_197 + 1.0f);
  let x_202 : f32 = u_xlat22;
  u_xlatb22 = (x_202 < 0.0f);
  let x_204 : bool = u_xlatb22;
  if (((select(0i, 1i, x_204) * -1i) != 0i)) {
    discard;
  }
  let x_215 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_215 == 1.0f);
  let x_217 : bool = u_xlatb22;
  if (x_217) {
    let x_222 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_222 == 1.0f);
    let x_225 : vec3<f32> = vs_TEXCOORD4;
    let x_229 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_231 : vec3<f32> = (vec3<f32>(x_225.y, x_225.y, x_225.y) * vec3<f32>(x_229.x, x_229.y, x_229.z));
    let x_232 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
    let x_235 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_237 : vec3<f32> = vs_TEXCOORD4;
    let x_240 : vec4<f32> = u_xlat6;
    let x_242 : vec3<f32> = ((vec3<f32>(x_235.x, x_235.y, x_235.z) * vec3<f32>(x_237.x, x_237.x, x_237.x)) + vec3<f32>(x_240.x, x_240.y, x_240.z));
    let x_243 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
    let x_247 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_249 : vec3<f32> = vs_TEXCOORD4;
    let x_252 : vec4<f32> = u_xlat6;
    let x_254 : vec3<f32> = ((vec3<f32>(x_247.x, x_247.y, x_247.z) * vec3<f32>(x_249.z, x_249.z, x_249.z)) + vec3<f32>(x_252.x, x_252.y, x_252.z));
    let x_255 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_257 : vec4<f32> = u_xlat6;
    let x_260 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_262 : vec3<f32> = (vec3<f32>(x_257.x, x_257.y, x_257.z) + vec3<f32>(x_260.x, x_260.y, x_260.z));
    let x_263 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : bool = u_xlatb22;
    if (x_265) {
      let x_270 : vec4<f32> = u_xlat6;
      x_267 = vec3<f32>(x_270.x, x_270.y, x_270.z);
    } else {
      let x_273 : vec3<f32> = vs_TEXCOORD4;
      x_267 = x_273;
    }
    let x_274 : vec3<f32> = x_267;
    let x_275 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : vec4<f32> = u_xlat6;
    let x_281 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_283 : vec3<f32> = (vec3<f32>(x_277.x, x_277.y, x_277.z) + -(x_281));
    let x_284 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_283.x, x_283.y, x_283.z, x_284.w);
    let x_286 : vec4<f32> = u_xlat6;
    let x_290 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_291 : vec3<f32> = (vec3<f32>(x_286.x, x_286.y, x_286.z) * x_290);
    let x_292 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_292.x, x_291.x, x_291.y, x_291.z);
    let x_295 : f32 = u_xlat6.y;
    u_xlat22 = ((x_295 * 0.25f) + 0.75f);
    let x_301 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat16 = ((x_301 * 0.5f) + 0.75f);
    let x_305 : f32 = u_xlat22;
    let x_306 : f32 = u_xlat16;
    u_xlat6.x = max(x_305, x_306);
    let x_317 : vec4<f32> = u_xlat6;
    let x_319 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_317.x, x_317.z, x_317.w));
    u_xlat6 = x_319;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_326 : vec4<f32> = u_xlat6;
  let x_328 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_326, x_328);
  let x_330 : f32 = u_xlat22;
  u_xlat22 = clamp(x_330, 0.0f, 1.0f);
  let x_333 : vec3<f32> = vs_TEXCOORD1;
  let x_334 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_333, x_334);
  let x_338 : vec3<f32> = vs_TEXCOORD2;
  let x_339 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_338, x_339);
  let x_343 : vec3<f32> = vs_TEXCOORD3;
  let x_344 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_343, x_344);
  let x_347 : vec4<f32> = u_xlat6;
  let x_349 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_347.x, x_347.y, x_347.z), vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_352 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_352);
  let x_354 : f32 = u_xlat16;
  let x_356 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_354, x_354, x_354) * vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : f32 = u_xlat22;
  let x_363 : vec4<f32> = x_18.x_LightColor0;
  let x_365 : vec3<f32> = (vec3<f32>(x_359, x_359, x_359) * vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : vec3<f32> = u_xlat3;
  let x_370 : vec4<f32> = x_18.x_Color;
  u_xlat3 = ((x_368 * vec3<f32>(x_370.x, x_370.y, x_370.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_376 : vec4<f32> = u_xlat2;
  let x_378 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_376.x, x_376.x, x_376.x) * x_378) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_384 : f32 = u_xlat2.x;
  u_xlat22 = ((-(x_384) * 0.959999979f) + 0.959999979f);
  let x_389 : f32 = u_xlat22;
  let x_391 : vec3<f32> = u_xlat4;
  let x_392 : vec3<f32> = (vec3<f32>(x_389, x_389, x_389) * x_391);
  let x_393 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_392.x, x_393.y, x_392.y, x_392.z);
  let x_396 : f32 = u_xlat2.y;
  let x_400 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_396) * x_400) + 1.0f);
  let x_403 : vec3<f32> = u_xlat0;
  let x_404 : f32 = u_xlat21;
  let x_408 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_403 * vec3<f32>(x_404, x_404, x_404)) + vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec3<f32> = u_xlat0;
  let x_412 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_411, x_412);
  let x_414 : f32 = u_xlat21;
  u_xlat21 = max(x_414, 0.001f);
  let x_417 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_417);
  let x_419 : f32 = u_xlat21;
  let x_421 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_419, x_419, x_419) * x_421);
  let x_423 : vec3<f32> = u_xlat5;
  let x_424 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_423, x_424);
  let x_426 : vec3<f32> = u_xlat5;
  let x_428 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_426, vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_433 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_433, 0.0f, 1.0f);
  let x_437 : vec3<f32> = u_xlat5;
  let x_438 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_437, x_438);
  let x_440 : f32 = u_xlat8;
  u_xlat8 = clamp(x_440, 0.0f, 1.0f);
  let x_443 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_445 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), x_445);
  let x_449 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_449, 0.0f, 1.0f);
  let x_454 : f32 = u_xlat0.x;
  let x_456 : f32 = u_xlat0.x;
  u_xlat7.x = (x_454 * x_456);
  let x_459 : vec3<f32> = u_xlat7;
  let x_461 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_459.x, x_459.x), vec2<f32>(x_461, x_461));
  let x_466 : f32 = u_xlat7.x;
  u_xlat7.x = (x_466 + -0.5f);
  let x_472 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_472) + 1.0f);
  let x_476 : f32 = u_xlat14;
  let x_477 : f32 = u_xlat14;
  u_xlat15 = (x_476 * x_477);
  let x_479 : f32 = u_xlat15;
  let x_480 : f32 = u_xlat15;
  u_xlat15 = (x_479 * x_480);
  let x_482 : f32 = u_xlat14;
  let x_483 : f32 = u_xlat15;
  u_xlat14 = (x_482 * x_483);
  let x_486 : f32 = u_xlat7.x;
  let x_487 : f32 = u_xlat14;
  u_xlat14 = ((x_486 * x_487) + 1.0f);
  let x_490 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_490)) + 1.0f);
  let x_495 : f32 = u_xlat15;
  let x_496 : f32 = u_xlat15;
  u_xlat9 = (x_495 * x_496);
  let x_498 : f32 = u_xlat9;
  let x_499 : f32 = u_xlat9;
  u_xlat9 = (x_498 * x_499);
  let x_501 : f32 = u_xlat15;
  let x_502 : f32 = u_xlat9;
  u_xlat15 = (x_501 * x_502);
  let x_505 : f32 = u_xlat7.x;
  let x_506 : f32 = u_xlat15;
  u_xlat7.x = ((x_505 * x_506) + 1.0f);
  let x_511 : f32 = u_xlat7.x;
  let x_512 : f32 = u_xlat14;
  u_xlat7.x = (x_511 * x_512);
  let x_515 : f32 = u_xlat22;
  let x_516 : f32 = u_xlat22;
  u_xlat14 = (x_515 * x_516);
  let x_518 : f32 = u_xlat14;
  u_xlat14 = max(x_518, 0.002f);
  let x_521 : f32 = u_xlat14;
  u_xlat15 = (-(x_521) + 1.0f);
  let x_524 : f32 = u_xlat21;
  let x_526 : f32 = u_xlat15;
  let x_528 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_524) * x_526) + x_528);
  let x_531 : f32 = u_xlat1.x;
  let x_532 : f32 = u_xlat15;
  let x_534 : f32 = u_xlat14;
  u_xlat15 = ((x_531 * x_532) + x_534);
  let x_536 : f32 = u_xlat21;
  let x_538 : f32 = u_xlat15;
  u_xlat21 = (abs(x_536) * x_538);
  let x_541 : f32 = u_xlat1.x;
  let x_542 : f32 = u_xlat22;
  let x_544 : f32 = u_xlat21;
  u_xlat21 = ((x_541 * x_542) + x_544);
  let x_546 : f32 = u_xlat21;
  u_xlat21 = (x_546 + 0.00001f);
  let x_549 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_549);
  let x_551 : f32 = u_xlat14;
  let x_552 : f32 = u_xlat14;
  u_xlat14 = (x_551 * x_552);
  let x_554 : f32 = u_xlat8;
  let x_555 : f32 = u_xlat14;
  let x_557 : f32 = u_xlat8;
  u_xlat15 = ((x_554 * x_555) + -(x_557));
  let x_560 : f32 = u_xlat15;
  let x_561 : f32 = u_xlat8;
  u_xlat8 = ((x_560 * x_561) + 1.0f);
  let x_564 : f32 = u_xlat14;
  u_xlat14 = (x_564 * 0.318309873f);
  let x_567 : f32 = u_xlat8;
  let x_568 : f32 = u_xlat8;
  u_xlat8 = ((x_567 * x_568) + 0.0000001f);
  let x_572 : f32 = u_xlat14;
  let x_573 : f32 = u_xlat8;
  u_xlat14 = (x_572 / x_573);
  let x_575 : f32 = u_xlat14;
  let x_576 : f32 = u_xlat21;
  u_xlat7.y = (x_575 * x_576);
  let x_579 : vec3<f32> = u_xlat1;
  let x_581 : vec3<f32> = u_xlat7;
  let x_583 : vec2<f32> = (vec2<f32>(x_579.x, x_579.x) * vec2<f32>(x_581.x, x_581.y));
  let x_584 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_583.x, x_583.y, x_584.z);
  let x_587 : f32 = u_xlat7.y;
  u_xlat14 = (x_587 * 3.141592741f);
  let x_590 : f32 = u_xlat14;
  u_xlat14 = max(x_590, 0.0f);
  let x_592 : vec3<f32> = u_xlat3;
  let x_593 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_592, x_593);
  let x_596 : f32 = u_xlat21;
  u_xlatb21 = !((x_596 == 0.0f));
  let x_598 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_598);
  let x_600 : f32 = u_xlat21;
  let x_601 : f32 = u_xlat14;
  u_xlat14 = (x_600 * x_601);
  let x_603 : vec3<f32> = u_xlat7;
  let x_605 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_603.x, x_603.x, x_603.x) * vec3<f32>(x_605.x, x_605.y, x_605.z));
  let x_608 : vec4<f32> = u_xlat6;
  let x_610 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_608.x, x_608.y, x_608.z) * vec3<f32>(x_610, x_610, x_610));
  let x_614 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_614) + 1.0f);
  let x_619 : f32 = u_xlat0.x;
  let x_621 : f32 = u_xlat0.x;
  u_xlat22 = (x_619 * x_621);
  let x_623 : f32 = u_xlat22;
  let x_624 : f32 = u_xlat22;
  u_xlat22 = (x_623 * x_624);
  let x_627 : f32 = u_xlat0.x;
  let x_628 : f32 = u_xlat22;
  u_xlat0.x = (x_627 * x_628);
  let x_631 : vec3<f32> = u_xlat3;
  u_xlat4 = (-(x_631) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_635 : vec3<f32> = u_xlat4;
  let x_636 : vec3<f32> = u_xlat0;
  let x_639 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_635 * vec3<f32>(x_636.x, x_636.x, x_636.x)) + x_639);
  let x_641 : vec3<f32> = u_xlat7;
  let x_642 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_641 * x_642);
  let x_646 : vec4<f32> = u_xlat2;
  let x_648 : vec3<f32> = u_xlat1;
  let x_650 : vec3<f32> = u_xlat0;
  let x_651 : vec3<f32> = ((vec3<f32>(x_646.x, x_646.z, x_646.w) * x_648) + x_650);
  let x_652 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_651.x, x_651.y, x_651.z, x_652.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

