struct PGlobals {
  x_Time : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
  x_NormalSacle : f32,
  x_MovementSpeed : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(7) var sampler_Normal : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> vs_TEXCOORD8 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlatb22 : bool;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec4<f32>;
  var x_269 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlat8 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat15 : f32;
  var u_xlatb21 : bool;
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
  let x_52 : vec4<f32> = vs_TEXCOORD0;
  let x_54 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_52.x, x_52.y));
  u_xlat2 = x_54;
  let x_55 : vec4<f32> = u_xlat2;
  let x_60 : vec4<f32> = x_18.x_Color;
  let x_62 : vec3<f32> = (vec3<f32>(x_55.x, x_55.y, x_55.z) * vec3<f32>(x_60.x, x_60.y, x_60.z));
  let x_63 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_62.x, x_62.y, x_62.z, x_63.w);
  let x_66 : vec4<f32> = u_xlat2;
  let x_69 : vec4<f32> = vs_COLOR0;
  u_xlat3 = (vec3<f32>(x_66.x, x_66.y, x_66.z) * vec3<f32>(x_69.x, x_69.y, x_69.z));
  let x_78 : f32 = x_18.x_Time.x;
  let x_81 : f32 = x_18.x_MovementSpeed;
  let x_86 : f32 = vs_TEXCOORD0.z;
  u_xlat4.x = ((x_78 * x_81) + x_86);
  let x_90 : f32 = x_18.x_Time.x;
  let x_93 : f32 = x_18.x_MovementSpeed;
  let x_97 : f32 = vs_TEXCOORD0.w;
  u_xlat4.y = ((-(x_90) * x_93) + x_97);
  let x_106 : vec3<f32> = u_xlat4;
  let x_108 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_106.x, x_106.y));
  u_xlat4 = vec3<f32>(x_108.x, x_108.y, x_108.w);
  let x_111 : f32 = u_xlat4.z;
  let x_113 : f32 = u_xlat4.x;
  u_xlat4.x = (x_111 * x_113);
  let x_116 : vec3<f32> = u_xlat4;
  let x_123 : vec2<f32> = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_124 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_123.x, x_123.y, x_124.z);
  let x_126 : vec3<f32> = u_xlat4;
  let x_130 : f32 = x_18.x_NormalSacle;
  let x_132 : vec2<f32> = (vec2<f32>(x_126.x, x_126.y) * vec2<f32>(x_130, x_130));
  let x_133 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_132.x, x_132.y, x_133.z);
  let x_136 : vec3<f32> = u_xlat4;
  let x_138 : vec3<f32> = u_xlat4;
  u_xlat22 = dot(vec2<f32>(x_136.x, x_136.y), vec2<f32>(x_138.x, x_138.y));
  let x_141 : f32 = u_xlat22;
  u_xlat22 = min(x_141, 1.0f);
  let x_144 : f32 = u_xlat22;
  u_xlat22 = (-(x_144) + 1.0f);
  let x_147 : f32 = u_xlat22;
  u_xlat4.z = sqrt(x_147);
  let x_151 : f32 = vs_COLOR0.w;
  u_xlat22 = (-(x_151) + 1.0f);
  let x_155 : f32 = u_xlat2.w;
  let x_157 : f32 = x_18.x_Color.w;
  let x_159 : f32 = u_xlat22;
  u_xlat22 = ((x_155 * x_157) + -(x_159));
  let x_165 : f32 = u_xlat22;
  u_xlatb22 = (x_165 < 0.0f);
  let x_168 : bool = u_xlatb22;
  if (((select(0i, 1i, x_168) * -1i) != 0i)) {
    discard;
  }
  let x_177 : vec3<f32> = vs_TEXCOORD4;
  let x_181 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_183 : vec2<f32> = (vec2<f32>(x_177.y, x_177.y) * vec2<f32>(x_181.x, x_181.y));
  let x_184 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_183.x, x_183.y, x_184.z);
  let x_187 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_189 : vec3<f32> = vs_TEXCOORD4;
  let x_192 : vec3<f32> = u_xlat5;
  let x_194 : vec2<f32> = ((vec2<f32>(x_187.x, x_187.y) * vec2<f32>(x_189.x, x_189.x)) + vec2<f32>(x_192.x, x_192.y));
  let x_195 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_194.x, x_194.y, x_195.z);
  let x_199 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_201 : vec3<f32> = vs_TEXCOORD4;
  let x_204 : vec3<f32> = u_xlat5;
  let x_206 : vec2<f32> = ((vec2<f32>(x_199.x, x_199.y) * vec2<f32>(x_201.z, x_201.z)) + vec2<f32>(x_204.x, x_204.y));
  let x_207 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_206.x, x_206.y, x_207.z);
  let x_209 : vec3<f32> = u_xlat5;
  let x_213 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_215 : vec2<f32> = (vec2<f32>(x_209.x, x_209.y) + vec2<f32>(x_213.x, x_213.y));
  let x_216 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_215.x, x_215.y, x_216.z);
  let x_220 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_220 == 1.0f);
  let x_222 : bool = u_xlatb22;
  if (x_222) {
    let x_226 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_226 == 1.0f);
    let x_229 : vec3<f32> = vs_TEXCOORD4;
    let x_233 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_235 : vec3<f32> = (vec3<f32>(x_229.y, x_229.y, x_229.y) * vec3<f32>(x_233.x, x_233.y, x_233.z));
    let x_236 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
    let x_239 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_241 : vec3<f32> = vs_TEXCOORD4;
    let x_244 : vec4<f32> = u_xlat6;
    let x_246 : vec3<f32> = ((vec3<f32>(x_239.x, x_239.y, x_239.z) * vec3<f32>(x_241.x, x_241.x, x_241.x)) + vec3<f32>(x_244.x, x_244.y, x_244.z));
    let x_247 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
    let x_250 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_252 : vec3<f32> = vs_TEXCOORD4;
    let x_255 : vec4<f32> = u_xlat6;
    let x_257 : vec3<f32> = ((vec3<f32>(x_250.x, x_250.y, x_250.z) * vec3<f32>(x_252.z, x_252.z, x_252.z)) + vec3<f32>(x_255.x, x_255.y, x_255.z));
    let x_258 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
    let x_260 : vec4<f32> = u_xlat6;
    let x_263 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_265 : vec3<f32> = (vec3<f32>(x_260.x, x_260.y, x_260.z) + vec3<f32>(x_263.x, x_263.y, x_263.z));
    let x_266 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_265.x, x_265.y, x_265.z, x_266.w);
    let x_268 : bool = u_xlatb22;
    if (x_268) {
      let x_272 : vec4<f32> = u_xlat6;
      x_269 = vec3<f32>(x_272.x, x_272.y, x_272.z);
    } else {
      let x_275 : vec3<f32> = vs_TEXCOORD4;
      x_269 = x_275;
    }
    let x_276 : vec3<f32> = x_269;
    let x_277 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_276.x, x_276.y, x_276.z, x_277.w);
    let x_279 : vec4<f32> = u_xlat6;
    let x_283 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_285 : vec3<f32> = (vec3<f32>(x_279.x, x_279.y, x_279.z) + -(x_283));
    let x_286 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : vec4<f32> = u_xlat6;
    let x_292 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_293 : vec3<f32> = (vec3<f32>(x_288.x, x_288.y, x_288.z) * x_292);
    let x_294 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_294.x, x_293.x, x_293.y, x_293.z);
    let x_297 : f32 = u_xlat6.y;
    u_xlat22 = ((x_297 * 0.25f) + 0.75f);
    let x_304 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_304 * 0.5f) + 0.75f);
    let x_308 : f32 = u_xlat22;
    let x_309 : f32 = u_xlat23;
    u_xlat6.x = max(x_308, x_309);
    let x_320 : vec4<f32> = u_xlat6;
    let x_322 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_320.x, x_320.z, x_320.w));
    u_xlat6 = x_322;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_328 : vec4<f32> = u_xlat6;
  let x_331 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_328, x_331);
  let x_333 : f32 = u_xlat22;
  u_xlat22 = clamp(x_333, 0.0f, 1.0f);
  let x_340 : vec3<f32> = u_xlat5;
  let x_342 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_340.x, x_340.y));
  u_xlat23 = x_342.w;
  let x_344 : f32 = u_xlat22;
  let x_345 : f32 = u_xlat23;
  u_xlat22 = (x_344 * x_345);
  let x_348 : vec3<f32> = vs_TEXCOORD1;
  let x_349 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_348, x_349);
  let x_353 : vec3<f32> = vs_TEXCOORD2;
  let x_354 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_353, x_354);
  let x_358 : vec3<f32> = vs_TEXCOORD3;
  let x_359 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_358, x_359);
  let x_362 : vec3<f32> = u_xlat5;
  let x_363 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(x_362, x_363);
  let x_365 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_365);
  let x_367 : f32 = u_xlat23;
  let x_369 : vec3<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_367, x_367, x_367) * x_369);
  let x_371 : f32 = u_xlat22;
  let x_375 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_371, x_371, x_371) * vec3<f32>(x_375.x, x_375.y, x_375.z));
  let x_378 : vec4<f32> = u_xlat2;
  let x_380 : vec4<f32> = vs_COLOR0;
  let x_385 : vec3<f32> = ((vec3<f32>(x_378.x, x_378.y, x_378.z) * vec3<f32>(x_380.x, x_380.y, x_380.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_386 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_385.x, x_385.y, x_385.z, x_386.w);
  let x_390 : f32 = x_18.x_Metallic;
  let x_392 : f32 = x_18.x_Metallic;
  let x_394 : f32 = x_18.x_Metallic;
  let x_395 : vec3<f32> = vec3<f32>(x_390, x_392, x_394);
  let x_400 : vec4<f32> = u_xlat2;
  let x_405 : vec3<f32> = ((vec3<f32>(x_395.x, x_395.y, x_395.z) * vec3<f32>(x_400.x, x_400.y, x_400.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_406 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_409 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_409) * 0.959999979f) + 0.959999979f);
  let x_414 : f32 = u_xlat22;
  let x_416 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_414, x_414, x_414) * x_416);
  let x_420 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_420) + 1.0f);
  let x_423 : vec3<f32> = u_xlat0;
  let x_424 : f32 = u_xlat21;
  let x_428 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_423 * vec3<f32>(x_424, x_424, x_424)) + vec3<f32>(x_428.x, x_428.y, x_428.z));
  let x_431 : vec3<f32> = u_xlat0;
  let x_432 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_431, x_432);
  let x_434 : f32 = u_xlat21;
  u_xlat21 = max(x_434, 0.001f);
  let x_437 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_437);
  let x_439 : f32 = u_xlat21;
  let x_441 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_439, x_439, x_439) * x_441);
  let x_443 : vec3<f32> = u_xlat4;
  let x_444 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_443, x_444);
  let x_446 : vec3<f32> = u_xlat4;
  let x_448 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_446, vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_453 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_453, 0.0f, 1.0f);
  let x_457 : vec3<f32> = u_xlat4;
  let x_458 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_457, x_458);
  let x_460 : f32 = u_xlat8;
  u_xlat8 = clamp(x_460, 0.0f, 1.0f);
  let x_463 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_465 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_463.x, x_463.y, x_463.z), x_465);
  let x_469 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_469, 0.0f, 1.0f);
  let x_474 : f32 = u_xlat0.x;
  let x_476 : f32 = u_xlat0.x;
  u_xlat7.x = (x_474 * x_476);
  let x_479 : vec3<f32> = u_xlat7;
  let x_481 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_479.x, x_479.x), vec2<f32>(x_481, x_481));
  let x_486 : f32 = u_xlat7.x;
  u_xlat7.x = (x_486 + -0.5f);
  let x_492 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_492) + 1.0f);
  let x_496 : f32 = u_xlat14;
  let x_497 : f32 = u_xlat14;
  u_xlat15 = (x_496 * x_497);
  let x_499 : f32 = u_xlat15;
  let x_500 : f32 = u_xlat15;
  u_xlat15 = (x_499 * x_500);
  let x_502 : f32 = u_xlat14;
  let x_503 : f32 = u_xlat15;
  u_xlat14 = (x_502 * x_503);
  let x_506 : f32 = u_xlat7.x;
  let x_507 : f32 = u_xlat14;
  u_xlat14 = ((x_506 * x_507) + 1.0f);
  let x_510 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_510)) + 1.0f);
  let x_514 : f32 = u_xlat15;
  let x_515 : f32 = u_xlat15;
  u_xlat23 = (x_514 * x_515);
  let x_517 : f32 = u_xlat23;
  let x_518 : f32 = u_xlat23;
  u_xlat23 = (x_517 * x_518);
  let x_520 : f32 = u_xlat15;
  let x_521 : f32 = u_xlat23;
  u_xlat15 = (x_520 * x_521);
  let x_524 : f32 = u_xlat7.x;
  let x_525 : f32 = u_xlat15;
  u_xlat7.x = ((x_524 * x_525) + 1.0f);
  let x_530 : f32 = u_xlat7.x;
  let x_531 : f32 = u_xlat14;
  u_xlat7.x = (x_530 * x_531);
  let x_534 : f32 = u_xlat22;
  let x_535 : f32 = u_xlat22;
  u_xlat14 = (x_534 * x_535);
  let x_537 : f32 = u_xlat14;
  u_xlat14 = max(x_537, 0.002f);
  let x_540 : f32 = u_xlat14;
  u_xlat15 = (-(x_540) + 1.0f);
  let x_543 : f32 = u_xlat21;
  let x_545 : f32 = u_xlat15;
  let x_547 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_543) * x_545) + x_547);
  let x_550 : f32 = u_xlat1.x;
  let x_551 : f32 = u_xlat15;
  let x_553 : f32 = u_xlat14;
  u_xlat15 = ((x_550 * x_551) + x_553);
  let x_555 : f32 = u_xlat21;
  let x_557 : f32 = u_xlat15;
  u_xlat21 = (abs(x_555) * x_557);
  let x_560 : f32 = u_xlat1.x;
  let x_561 : f32 = u_xlat22;
  let x_563 : f32 = u_xlat21;
  u_xlat21 = ((x_560 * x_561) + x_563);
  let x_565 : f32 = u_xlat21;
  u_xlat21 = (x_565 + 0.00001f);
  let x_568 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_568);
  let x_570 : f32 = u_xlat14;
  let x_571 : f32 = u_xlat14;
  u_xlat14 = (x_570 * x_571);
  let x_573 : f32 = u_xlat8;
  let x_574 : f32 = u_xlat14;
  let x_576 : f32 = u_xlat8;
  u_xlat15 = ((x_573 * x_574) + -(x_576));
  let x_579 : f32 = u_xlat15;
  let x_580 : f32 = u_xlat8;
  u_xlat8 = ((x_579 * x_580) + 1.0f);
  let x_583 : f32 = u_xlat14;
  u_xlat14 = (x_583 * 0.318309873f);
  let x_586 : f32 = u_xlat8;
  let x_587 : f32 = u_xlat8;
  u_xlat8 = ((x_586 * x_587) + 0.0000001f);
  let x_591 : f32 = u_xlat14;
  let x_592 : f32 = u_xlat8;
  u_xlat14 = (x_591 / x_592);
  let x_594 : f32 = u_xlat14;
  let x_595 : f32 = u_xlat21;
  u_xlat7.y = (x_594 * x_595);
  let x_598 : vec3<f32> = u_xlat1;
  let x_600 : vec3<f32> = u_xlat7;
  let x_602 : vec2<f32> = (vec2<f32>(x_598.x, x_598.x) * vec2<f32>(x_600.x, x_600.y));
  let x_603 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_602.x, x_602.y, x_603.z);
  let x_606 : f32 = u_xlat7.y;
  u_xlat14 = (x_606 * 3.141592741f);
  let x_609 : f32 = u_xlat14;
  u_xlat14 = max(x_609, 0.0f);
  let x_611 : vec4<f32> = u_xlat2;
  let x_613 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_611.x, x_611.y, x_611.z), vec3<f32>(x_613.x, x_613.y, x_613.z));
  let x_617 : f32 = u_xlat21;
  u_xlatb21 = !((x_617 == 0.0f));
  let x_619 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_619);
  let x_621 : f32 = u_xlat21;
  let x_622 : f32 = u_xlat14;
  u_xlat14 = (x_621 * x_622);
  let x_624 : vec3<f32> = u_xlat7;
  let x_626 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_624.x, x_624.x, x_624.x) * x_626);
  let x_628 : vec3<f32> = u_xlat5;
  let x_629 : f32 = u_xlat14;
  u_xlat7 = (x_628 * vec3<f32>(x_629, x_629, x_629));
  let x_633 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_633) + 1.0f);
  let x_638 : f32 = u_xlat0.x;
  let x_640 : f32 = u_xlat0.x;
  u_xlat22 = (x_638 * x_640);
  let x_642 : f32 = u_xlat22;
  let x_643 : f32 = u_xlat22;
  u_xlat22 = (x_642 * x_643);
  let x_646 : f32 = u_xlat0.x;
  let x_647 : f32 = u_xlat22;
  u_xlat0.x = (x_646 * x_647);
  let x_650 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec3<f32>(x_650.x, x_650.y, x_650.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_655 : vec3<f32> = u_xlat4;
  let x_656 : vec3<f32> = u_xlat0;
  let x_659 : vec4<f32> = u_xlat2;
  let x_661 : vec3<f32> = ((x_655 * vec3<f32>(x_656.x, x_656.x, x_656.x)) + vec3<f32>(x_659.x, x_659.y, x_659.z));
  let x_662 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_661.x, x_661.y, x_661.z, x_662.w);
  let x_664 : vec3<f32> = u_xlat7;
  let x_665 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_664 * vec3<f32>(x_665.x, x_665.y, x_665.z));
  let x_668 : vec3<f32> = u_xlat3;
  let x_669 : vec3<f32> = u_xlat1;
  let x_671 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_668 * x_669) + x_671);
  let x_674 : f32 = vs_TEXCOORD8;
  let x_676 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_674 / x_676);
  let x_678 : f32 = u_xlat21;
  u_xlat21 = (-(x_678) + 1.0f);
  let x_681 : f32 = u_xlat21;
  let x_683 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_681 * x_683);
  let x_685 : f32 = u_xlat21;
  u_xlat21 = max(x_685, 0.0f);
  let x_687 : f32 = u_xlat21;
  let x_690 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_687 * x_690);
  let x_692 : f32 = u_xlat21;
  let x_693 : f32 = u_xlat21;
  u_xlat21 = (x_692 * -(x_693));
  let x_696 : f32 = u_xlat21;
  u_xlat21 = exp2(x_696);
  let x_700 : vec3<f32> = u_xlat0;
  let x_701 : f32 = u_xlat21;
  let x_703 : vec3<f32> = (x_700 * vec3<f32>(x_701, x_701, x_701));
  let x_704 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @location(6) vs_TEXCOORD8_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD8 = vs_TEXCOORD8_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

