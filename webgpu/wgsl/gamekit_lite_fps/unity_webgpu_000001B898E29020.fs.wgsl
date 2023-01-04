struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
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

@group(0) @binding(11) var sampler_Noise : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

@group(0) @binding(2) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(14) var sampler_MetallicSmooth : sampler;

var<private> u_xlat16 : f32;

@group(0) @binding(3) var x_Gradient : texture_2d<f32>;

@group(0) @binding(12) var sampler_Gradient : sampler;

var<private> u_xlat23 : f32;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(4) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var x_Normal : texture_2d<f32>;

@group(0) @binding(13) var sampler_Normal : sampler;

var<private> u_xlatb22 : bool;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlatb16 : bool;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(6) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(9) var sampler_ShadowMapTexture : sampler;

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
  var x_319 : vec3<f32>;
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
  let x_216 : f32 = x_18.unity_MatrixV[0i].z;
  u_xlat6.x = x_216;
  let x_219 : f32 = x_18.unity_MatrixV[1i].z;
  u_xlat6.y = x_219;
  let x_224 : f32 = x_18.unity_MatrixV[2i].z;
  u_xlat6.z = x_224;
  let x_226 : vec3<f32> = u_xlat0;
  let x_227 : vec4<f32> = u_xlat6;
  u_xlat22 = dot(x_226, vec3<f32>(x_227.x, x_227.y, x_227.z));
  let x_230 : vec3<f32> = vs_TEXCOORD4;
  let x_233 : vec4<f32> = x_18.unity_ShadowFadeCenterAndType;
  let x_236 : vec3<f32> = (x_230 + -(vec3<f32>(x_233.x, x_233.y, x_233.z)));
  let x_237 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_236.x, x_236.y, x_236.z, x_237.w);
  let x_239 : vec4<f32> = u_xlat6;
  let x_241 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_239.x, x_239.y, x_239.z), vec3<f32>(x_241.x, x_241.y, x_241.z));
  let x_244 : f32 = u_xlat16;
  u_xlat16 = sqrt(x_244);
  let x_246 : f32 = u_xlat22;
  let x_248 : f32 = u_xlat16;
  u_xlat16 = (-(x_246) + x_248);
  let x_252 : f32 = x_18.unity_ShadowFadeCenterAndType.w;
  let x_253 : f32 = u_xlat16;
  let x_255 : f32 = u_xlat22;
  u_xlat22 = ((x_252 * x_253) + x_255);
  let x_257 : f32 = u_xlat22;
  let x_260 : f32 = x_18.x_LightShadowData.z;
  let x_263 : f32 = x_18.x_LightShadowData.w;
  u_xlat22 = ((x_257 * x_260) + x_263);
  let x_265 : f32 = u_xlat22;
  u_xlat22 = clamp(x_265, 0.0f, 1.0f);
  let x_270 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb16 = (x_270 == 1.0f);
  let x_272 : bool = u_xlatb16;
  if (x_272) {
    let x_276 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb16 = (x_276 == 1.0f);
    let x_278 : vec3<f32> = vs_TEXCOORD4;
    let x_282 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_284 : vec3<f32> = (vec3<f32>(x_278.y, x_278.y, x_278.y) * vec3<f32>(x_282.x, x_282.y, x_282.z));
    let x_285 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
    let x_288 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_290 : vec3<f32> = vs_TEXCOORD4;
    let x_293 : vec4<f32> = u_xlat6;
    let x_295 : vec3<f32> = ((vec3<f32>(x_288.x, x_288.y, x_288.z) * vec3<f32>(x_290.x, x_290.x, x_290.x)) + vec3<f32>(x_293.x, x_293.y, x_293.z));
    let x_296 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_299 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_301 : vec3<f32> = vs_TEXCOORD4;
    let x_304 : vec4<f32> = u_xlat6;
    let x_306 : vec3<f32> = ((vec3<f32>(x_299.x, x_299.y, x_299.z) * vec3<f32>(x_301.z, x_301.z, x_301.z)) + vec3<f32>(x_304.x, x_304.y, x_304.z));
    let x_307 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
    let x_309 : vec4<f32> = u_xlat6;
    let x_312 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_314 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) + vec3<f32>(x_312.x, x_312.y, x_312.z));
    let x_315 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_314.x, x_314.y, x_314.z, x_315.w);
    let x_317 : bool = u_xlatb16;
    if (x_317) {
      let x_322 : vec4<f32> = u_xlat6;
      x_319 = vec3<f32>(x_322.x, x_322.y, x_322.z);
    } else {
      let x_325 : vec3<f32> = vs_TEXCOORD4;
      x_319 = x_325;
    }
    let x_326 : vec3<f32> = x_319;
    let x_327 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_326.x, x_326.y, x_326.z, x_327.w);
    let x_329 : vec4<f32> = u_xlat6;
    let x_333 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_335 : vec3<f32> = (vec3<f32>(x_329.x, x_329.y, x_329.z) + -(x_333));
    let x_336 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_335.x, x_335.y, x_335.z, x_336.w);
    let x_338 : vec4<f32> = u_xlat6;
    let x_342 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_343 : vec3<f32> = (vec3<f32>(x_338.x, x_338.y, x_338.z) * x_342);
    let x_344 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_344.x, x_343.x, x_343.y, x_343.z);
    let x_347 : f32 = u_xlat6.y;
    u_xlat16 = ((x_347 * 0.25f) + 0.75f);
    let x_353 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_353 * 0.5f) + 0.75f);
    let x_357 : f32 = u_xlat23;
    let x_358 : f32 = u_xlat16;
    u_xlat6.x = max(x_357, x_358);
    let x_369 : vec4<f32> = u_xlat6;
    let x_371 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_369.x, x_369.z, x_369.w));
    u_xlat6 = x_371;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_377 : vec4<f32> = u_xlat6;
  let x_379 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat16 = dot(x_377, x_379);
  let x_381 : f32 = u_xlat16;
  u_xlat16 = clamp(x_381, 0.0f, 1.0f);
  let x_384 : vec4<f32> = vs_TEXCOORD6;
  let x_386 : vec4<f32> = vs_TEXCOORD6;
  let x_388 : vec2<f32> = (vec2<f32>(x_384.x, x_384.y) / vec2<f32>(x_386.w, x_386.w));
  let x_389 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_388.x, x_388.y, x_389.z, x_389.w);
  let x_396 : vec4<f32> = u_xlat6;
  let x_398 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_396.x, x_396.y));
  u_xlat23 = x_398.x;
  let x_400 : f32 = u_xlat23;
  let x_402 : f32 = u_xlat16;
  u_xlat16 = (-(x_400) + x_402);
  let x_404 : f32 = u_xlat22;
  let x_405 : f32 = u_xlat16;
  let x_407 : f32 = u_xlat23;
  u_xlat22 = ((x_404 * x_405) + x_407);
  let x_410 : vec3<f32> = vs_TEXCOORD1;
  let x_411 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_410, x_411);
  let x_415 : vec3<f32> = vs_TEXCOORD2;
  let x_416 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_415, x_416);
  let x_420 : vec3<f32> = vs_TEXCOORD3;
  let x_421 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_420, x_421);
  let x_424 : vec4<f32> = u_xlat6;
  let x_426 : vec4<f32> = u_xlat6;
  u_xlat16 = dot(vec3<f32>(x_424.x, x_424.y, x_424.z), vec3<f32>(x_426.x, x_426.y, x_426.z));
  let x_429 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_429);
  let x_431 : f32 = u_xlat16;
  let x_433 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_431, x_431, x_431) * vec3<f32>(x_433.x, x_433.y, x_433.z));
  let x_436 : f32 = u_xlat22;
  let x_440 : vec4<f32> = x_18.x_LightColor0;
  let x_442 : vec3<f32> = (vec3<f32>(x_436, x_436, x_436) * vec3<f32>(x_440.x, x_440.y, x_440.z));
  let x_443 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
  let x_445 : vec3<f32> = u_xlat3;
  let x_447 : vec4<f32> = x_18.x_Color;
  u_xlat3 = ((x_445 * vec3<f32>(x_447.x, x_447.y, x_447.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_453 : vec4<f32> = u_xlat2;
  let x_455 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_453.x, x_453.x, x_453.x) * x_455) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_461 : f32 = u_xlat2.x;
  u_xlat22 = ((-(x_461) * 0.959999979f) + 0.959999979f);
  let x_466 : f32 = u_xlat22;
  let x_468 : vec3<f32> = u_xlat4;
  let x_469 : vec3<f32> = (vec3<f32>(x_466, x_466, x_466) * x_468);
  let x_470 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_469.x, x_470.y, x_469.y, x_469.z);
  let x_473 : f32 = u_xlat2.y;
  let x_477 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_473) * x_477) + 1.0f);
  let x_480 : vec3<f32> = u_xlat0;
  let x_481 : f32 = u_xlat21;
  let x_485 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_480 * vec3<f32>(x_481, x_481, x_481)) + vec3<f32>(x_485.x, x_485.y, x_485.z));
  let x_488 : vec3<f32> = u_xlat0;
  let x_489 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_488, x_489);
  let x_491 : f32 = u_xlat21;
  u_xlat21 = max(x_491, 0.001f);
  let x_494 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_494);
  let x_496 : f32 = u_xlat21;
  let x_498 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_496, x_496, x_496) * x_498);
  let x_500 : vec3<f32> = u_xlat5;
  let x_501 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_500, x_501);
  let x_503 : vec3<f32> = u_xlat5;
  let x_505 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_503, vec3<f32>(x_505.x, x_505.y, x_505.z));
  let x_510 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_510, 0.0f, 1.0f);
  let x_514 : vec3<f32> = u_xlat5;
  let x_515 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_514, x_515);
  let x_517 : f32 = u_xlat8;
  u_xlat8 = clamp(x_517, 0.0f, 1.0f);
  let x_520 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_522 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_520.x, x_520.y, x_520.z), x_522);
  let x_526 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_526, 0.0f, 1.0f);
  let x_531 : f32 = u_xlat0.x;
  let x_533 : f32 = u_xlat0.x;
  u_xlat7.x = (x_531 * x_533);
  let x_536 : vec3<f32> = u_xlat7;
  let x_538 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_536.x, x_536.x), vec2<f32>(x_538, x_538));
  let x_543 : f32 = u_xlat7.x;
  u_xlat7.x = (x_543 + -0.5f);
  let x_549 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_549) + 1.0f);
  let x_553 : f32 = u_xlat14;
  let x_554 : f32 = u_xlat14;
  u_xlat15 = (x_553 * x_554);
  let x_556 : f32 = u_xlat15;
  let x_557 : f32 = u_xlat15;
  u_xlat15 = (x_556 * x_557);
  let x_559 : f32 = u_xlat14;
  let x_560 : f32 = u_xlat15;
  u_xlat14 = (x_559 * x_560);
  let x_563 : f32 = u_xlat7.x;
  let x_564 : f32 = u_xlat14;
  u_xlat14 = ((x_563 * x_564) + 1.0f);
  let x_567 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_567)) + 1.0f);
  let x_572 : f32 = u_xlat15;
  let x_573 : f32 = u_xlat15;
  u_xlat9 = (x_572 * x_573);
  let x_575 : f32 = u_xlat9;
  let x_576 : f32 = u_xlat9;
  u_xlat9 = (x_575 * x_576);
  let x_578 : f32 = u_xlat15;
  let x_579 : f32 = u_xlat9;
  u_xlat15 = (x_578 * x_579);
  let x_582 : f32 = u_xlat7.x;
  let x_583 : f32 = u_xlat15;
  u_xlat7.x = ((x_582 * x_583) + 1.0f);
  let x_588 : f32 = u_xlat7.x;
  let x_589 : f32 = u_xlat14;
  u_xlat7.x = (x_588 * x_589);
  let x_592 : f32 = u_xlat22;
  let x_593 : f32 = u_xlat22;
  u_xlat14 = (x_592 * x_593);
  let x_595 : f32 = u_xlat14;
  u_xlat14 = max(x_595, 0.002f);
  let x_598 : f32 = u_xlat14;
  u_xlat15 = (-(x_598) + 1.0f);
  let x_601 : f32 = u_xlat21;
  let x_603 : f32 = u_xlat15;
  let x_605 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_601) * x_603) + x_605);
  let x_608 : f32 = u_xlat1.x;
  let x_609 : f32 = u_xlat15;
  let x_611 : f32 = u_xlat14;
  u_xlat15 = ((x_608 * x_609) + x_611);
  let x_613 : f32 = u_xlat21;
  let x_615 : f32 = u_xlat15;
  u_xlat21 = (abs(x_613) * x_615);
  let x_618 : f32 = u_xlat1.x;
  let x_619 : f32 = u_xlat22;
  let x_621 : f32 = u_xlat21;
  u_xlat21 = ((x_618 * x_619) + x_621);
  let x_623 : f32 = u_xlat21;
  u_xlat21 = (x_623 + 0.00001f);
  let x_626 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_626);
  let x_628 : f32 = u_xlat14;
  let x_629 : f32 = u_xlat14;
  u_xlat14 = (x_628 * x_629);
  let x_631 : f32 = u_xlat8;
  let x_632 : f32 = u_xlat14;
  let x_634 : f32 = u_xlat8;
  u_xlat15 = ((x_631 * x_632) + -(x_634));
  let x_637 : f32 = u_xlat15;
  let x_638 : f32 = u_xlat8;
  u_xlat8 = ((x_637 * x_638) + 1.0f);
  let x_641 : f32 = u_xlat14;
  u_xlat14 = (x_641 * 0.318309873f);
  let x_644 : f32 = u_xlat8;
  let x_645 : f32 = u_xlat8;
  u_xlat8 = ((x_644 * x_645) + 0.0000001f);
  let x_649 : f32 = u_xlat14;
  let x_650 : f32 = u_xlat8;
  u_xlat14 = (x_649 / x_650);
  let x_652 : f32 = u_xlat14;
  let x_653 : f32 = u_xlat21;
  u_xlat7.y = (x_652 * x_653);
  let x_656 : vec3<f32> = u_xlat1;
  let x_658 : vec3<f32> = u_xlat7;
  let x_660 : vec2<f32> = (vec2<f32>(x_656.x, x_656.x) * vec2<f32>(x_658.x, x_658.y));
  let x_661 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_660.x, x_660.y, x_661.z);
  let x_664 : f32 = u_xlat7.y;
  u_xlat14 = (x_664 * 3.141592741f);
  let x_667 : f32 = u_xlat14;
  u_xlat14 = max(x_667, 0.0f);
  let x_669 : vec3<f32> = u_xlat3;
  let x_670 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(x_669, x_670);
  let x_673 : f32 = u_xlat21;
  u_xlatb21 = !((x_673 == 0.0f));
  let x_675 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_675);
  let x_677 : f32 = u_xlat21;
  let x_678 : f32 = u_xlat14;
  u_xlat14 = (x_677 * x_678);
  let x_680 : vec3<f32> = u_xlat7;
  let x_682 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_680.x, x_680.x, x_680.x) * vec3<f32>(x_682.x, x_682.y, x_682.z));
  let x_685 : vec4<f32> = u_xlat6;
  let x_687 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_685.x, x_685.y, x_685.z) * vec3<f32>(x_687, x_687, x_687));
  let x_691 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_691) + 1.0f);
  let x_696 : f32 = u_xlat0.x;
  let x_698 : f32 = u_xlat0.x;
  u_xlat22 = (x_696 * x_698);
  let x_700 : f32 = u_xlat22;
  let x_701 : f32 = u_xlat22;
  u_xlat22 = (x_700 * x_701);
  let x_704 : f32 = u_xlat0.x;
  let x_705 : f32 = u_xlat22;
  u_xlat0.x = (x_704 * x_705);
  let x_708 : vec3<f32> = u_xlat3;
  u_xlat4 = (-(x_708) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_712 : vec3<f32> = u_xlat4;
  let x_713 : vec3<f32> = u_xlat0;
  let x_716 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_712 * vec3<f32>(x_713.x, x_713.x, x_713.x)) + x_716);
  let x_718 : vec3<f32> = u_xlat7;
  let x_719 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_718 * x_719);
  let x_723 : vec4<f32> = u_xlat2;
  let x_725 : vec3<f32> = u_xlat1;
  let x_727 : vec3<f32> = u_xlat0;
  let x_728 : vec3<f32> = ((vec3<f32>(x_723.x, x_723.z, x_723.w) * x_725) + x_727);
  let x_729 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_728.x, x_728.y, x_728.z, x_729.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

