struct PGlobals {
  x_Time : vec4<f32>,
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
  let x_330 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_328, x_330);
  let x_332 : f32 = u_xlat22;
  u_xlat22 = clamp(x_332, 0.0f, 1.0f);
  let x_339 : vec3<f32> = u_xlat5;
  let x_341 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_339.x, x_339.y));
  u_xlat23 = x_341.w;
  let x_343 : f32 = u_xlat22;
  let x_344 : f32 = u_xlat23;
  u_xlat22 = (x_343 * x_344);
  let x_347 : vec3<f32> = vs_TEXCOORD1;
  let x_348 : vec3<f32> = u_xlat4;
  u_xlat5.x = dot(x_347, x_348);
  let x_352 : vec3<f32> = vs_TEXCOORD2;
  let x_353 : vec3<f32> = u_xlat4;
  u_xlat5.y = dot(x_352, x_353);
  let x_357 : vec3<f32> = vs_TEXCOORD3;
  let x_358 : vec3<f32> = u_xlat4;
  u_xlat5.z = dot(x_357, x_358);
  let x_361 : vec3<f32> = u_xlat5;
  let x_362 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(x_361, x_362);
  let x_364 : f32 = u_xlat23;
  u_xlat23 = inverseSqrt(x_364);
  let x_366 : f32 = u_xlat23;
  let x_368 : vec3<f32> = u_xlat5;
  u_xlat4 = (vec3<f32>(x_366, x_366, x_366) * x_368);
  let x_370 : f32 = u_xlat22;
  let x_374 : vec4<f32> = x_18.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_370, x_370, x_370) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_377 : vec4<f32> = u_xlat2;
  let x_379 : vec4<f32> = vs_COLOR0;
  let x_384 : vec3<f32> = ((vec3<f32>(x_377.x, x_377.y, x_377.z) * vec3<f32>(x_379.x, x_379.y, x_379.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_385 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_389 : f32 = x_18.x_Metallic;
  let x_391 : f32 = x_18.x_Metallic;
  let x_393 : f32 = x_18.x_Metallic;
  let x_394 : vec3<f32> = vec3<f32>(x_389, x_391, x_393);
  let x_399 : vec4<f32> = u_xlat2;
  let x_404 : vec3<f32> = ((vec3<f32>(x_394.x, x_394.y, x_394.z) * vec3<f32>(x_399.x, x_399.y, x_399.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_405 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_408 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_408) * 0.959999979f) + 0.959999979f);
  let x_413 : f32 = u_xlat22;
  let x_415 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_413, x_413, x_413) * x_415);
  let x_419 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_419) + 1.0f);
  let x_422 : vec3<f32> = u_xlat0;
  let x_423 : f32 = u_xlat21;
  let x_427 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_422 * vec3<f32>(x_423, x_423, x_423)) + vec3<f32>(x_427.x, x_427.y, x_427.z));
  let x_430 : vec3<f32> = u_xlat0;
  let x_431 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_430, x_431);
  let x_433 : f32 = u_xlat21;
  u_xlat21 = max(x_433, 0.001f);
  let x_436 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_436);
  let x_438 : f32 = u_xlat21;
  let x_440 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_438, x_438, x_438) * x_440);
  let x_442 : vec3<f32> = u_xlat4;
  let x_443 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_442, x_443);
  let x_445 : vec3<f32> = u_xlat4;
  let x_447 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_445, vec3<f32>(x_447.x, x_447.y, x_447.z));
  let x_452 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_452, 0.0f, 1.0f);
  let x_456 : vec3<f32> = u_xlat4;
  let x_457 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_456, x_457);
  let x_459 : f32 = u_xlat8;
  u_xlat8 = clamp(x_459, 0.0f, 1.0f);
  let x_462 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_464 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_462.x, x_462.y, x_462.z), x_464);
  let x_468 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_468, 0.0f, 1.0f);
  let x_473 : f32 = u_xlat0.x;
  let x_475 : f32 = u_xlat0.x;
  u_xlat7.x = (x_473 * x_475);
  let x_478 : vec3<f32> = u_xlat7;
  let x_480 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_478.x, x_478.x), vec2<f32>(x_480, x_480));
  let x_485 : f32 = u_xlat7.x;
  u_xlat7.x = (x_485 + -0.5f);
  let x_491 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_491) + 1.0f);
  let x_495 : f32 = u_xlat14;
  let x_496 : f32 = u_xlat14;
  u_xlat15 = (x_495 * x_496);
  let x_498 : f32 = u_xlat15;
  let x_499 : f32 = u_xlat15;
  u_xlat15 = (x_498 * x_499);
  let x_501 : f32 = u_xlat14;
  let x_502 : f32 = u_xlat15;
  u_xlat14 = (x_501 * x_502);
  let x_505 : f32 = u_xlat7.x;
  let x_506 : f32 = u_xlat14;
  u_xlat14 = ((x_505 * x_506) + 1.0f);
  let x_509 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_509)) + 1.0f);
  let x_513 : f32 = u_xlat15;
  let x_514 : f32 = u_xlat15;
  u_xlat23 = (x_513 * x_514);
  let x_516 : f32 = u_xlat23;
  let x_517 : f32 = u_xlat23;
  u_xlat23 = (x_516 * x_517);
  let x_519 : f32 = u_xlat15;
  let x_520 : f32 = u_xlat23;
  u_xlat15 = (x_519 * x_520);
  let x_523 : f32 = u_xlat7.x;
  let x_524 : f32 = u_xlat15;
  u_xlat7.x = ((x_523 * x_524) + 1.0f);
  let x_529 : f32 = u_xlat7.x;
  let x_530 : f32 = u_xlat14;
  u_xlat7.x = (x_529 * x_530);
  let x_533 : f32 = u_xlat22;
  let x_534 : f32 = u_xlat22;
  u_xlat14 = (x_533 * x_534);
  let x_536 : f32 = u_xlat14;
  u_xlat14 = max(x_536, 0.002f);
  let x_539 : f32 = u_xlat14;
  u_xlat15 = (-(x_539) + 1.0f);
  let x_542 : f32 = u_xlat21;
  let x_544 : f32 = u_xlat15;
  let x_546 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_542) * x_544) + x_546);
  let x_549 : f32 = u_xlat1.x;
  let x_550 : f32 = u_xlat15;
  let x_552 : f32 = u_xlat14;
  u_xlat15 = ((x_549 * x_550) + x_552);
  let x_554 : f32 = u_xlat21;
  let x_556 : f32 = u_xlat15;
  u_xlat21 = (abs(x_554) * x_556);
  let x_559 : f32 = u_xlat1.x;
  let x_560 : f32 = u_xlat22;
  let x_562 : f32 = u_xlat21;
  u_xlat21 = ((x_559 * x_560) + x_562);
  let x_564 : f32 = u_xlat21;
  u_xlat21 = (x_564 + 0.00001f);
  let x_567 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_567);
  let x_569 : f32 = u_xlat14;
  let x_570 : f32 = u_xlat14;
  u_xlat14 = (x_569 * x_570);
  let x_572 : f32 = u_xlat8;
  let x_573 : f32 = u_xlat14;
  let x_575 : f32 = u_xlat8;
  u_xlat15 = ((x_572 * x_573) + -(x_575));
  let x_578 : f32 = u_xlat15;
  let x_579 : f32 = u_xlat8;
  u_xlat8 = ((x_578 * x_579) + 1.0f);
  let x_582 : f32 = u_xlat14;
  u_xlat14 = (x_582 * 0.318309873f);
  let x_585 : f32 = u_xlat8;
  let x_586 : f32 = u_xlat8;
  u_xlat8 = ((x_585 * x_586) + 0.0000001f);
  let x_590 : f32 = u_xlat14;
  let x_591 : f32 = u_xlat8;
  u_xlat14 = (x_590 / x_591);
  let x_593 : f32 = u_xlat14;
  let x_594 : f32 = u_xlat21;
  u_xlat7.y = (x_593 * x_594);
  let x_597 : vec3<f32> = u_xlat1;
  let x_599 : vec3<f32> = u_xlat7;
  let x_601 : vec2<f32> = (vec2<f32>(x_597.x, x_597.x) * vec2<f32>(x_599.x, x_599.y));
  let x_602 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_601.x, x_601.y, x_602.z);
  let x_605 : f32 = u_xlat7.y;
  u_xlat14 = (x_605 * 3.141592741f);
  let x_608 : f32 = u_xlat14;
  u_xlat14 = max(x_608, 0.0f);
  let x_610 : vec4<f32> = u_xlat2;
  let x_612 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_610.x, x_610.y, x_610.z), vec3<f32>(x_612.x, x_612.y, x_612.z));
  let x_616 : f32 = u_xlat21;
  u_xlatb21 = !((x_616 == 0.0f));
  let x_618 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_618);
  let x_620 : f32 = u_xlat21;
  let x_621 : f32 = u_xlat14;
  u_xlat14 = (x_620 * x_621);
  let x_623 : vec3<f32> = u_xlat7;
  let x_625 : vec3<f32> = u_xlat5;
  u_xlat1 = (vec3<f32>(x_623.x, x_623.x, x_623.x) * x_625);
  let x_627 : vec3<f32> = u_xlat5;
  let x_628 : f32 = u_xlat14;
  u_xlat7 = (x_627 * vec3<f32>(x_628, x_628, x_628));
  let x_632 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_632) + 1.0f);
  let x_637 : f32 = u_xlat0.x;
  let x_639 : f32 = u_xlat0.x;
  u_xlat22 = (x_637 * x_639);
  let x_641 : f32 = u_xlat22;
  let x_642 : f32 = u_xlat22;
  u_xlat22 = (x_641 * x_642);
  let x_645 : f32 = u_xlat0.x;
  let x_646 : f32 = u_xlat22;
  u_xlat0.x = (x_645 * x_646);
  let x_649 : vec4<f32> = u_xlat2;
  u_xlat4 = (-(vec3<f32>(x_649.x, x_649.y, x_649.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_654 : vec3<f32> = u_xlat4;
  let x_655 : vec3<f32> = u_xlat0;
  let x_658 : vec4<f32> = u_xlat2;
  let x_660 : vec3<f32> = ((x_654 * vec3<f32>(x_655.x, x_655.x, x_655.x)) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec3<f32> = u_xlat7;
  let x_664 : vec4<f32> = u_xlat2;
  u_xlat0 = (x_663 * vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_669 : vec3<f32> = u_xlat3;
  let x_670 : vec3<f32> = u_xlat1;
  let x_672 : vec3<f32> = u_xlat0;
  let x_673 : vec3<f32> = ((x_669 * x_670) + x_672);
  let x_674 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_673.x, x_673.y, x_673.z, x_674.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec4<f32>, @location(5) vs_COLOR0_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

