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
  unity_WorldToLight : mat4x4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_Cutoff : f32,
  x_EdgeSize : f32,
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_DissolveNoise : texture_2d<f32>;

@group(0) @binding(11) var sampler_DissolveNoise : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_Specular : texture_2d<f32>;

@group(0) @binding(10) var sampler_Specular : sampler;

@group(0) @binding(3) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(9) var sampler_NormalMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat9 : vec2<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb22 : bool;
  var u_xlat6 : vec4<f32>;
  var x_255 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat8 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat15 : f32;
  var u_xlat16 : f32;
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
  let x_51 : vec2<f32> = vs_TEXCOORD0;
  let x_52 : vec4<f32> = textureSample(x_DissolveNoise, sampler_DissolveNoise, x_51);
  u_xlat22 = x_52.x;
  let x_61 : f32 = x_18.x_EdgeSize;
  let x_64 : f32 = x_18.x_Cutoff;
  u_xlat2.x = (x_61 + x_64);
  let x_73 : vec2<f32> = vs_TEXCOORD0;
  let x_74 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_73);
  u_xlat3 = x_74;
  let x_76 : vec4<f32> = u_xlat3;
  let x_80 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_76 * x_80);
  let x_89 : vec2<f32> = vs_TEXCOORD0;
  let x_90 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_89);
  u_xlat9 = vec2<f32>(x_90.x, x_90.w);
  let x_93 : f32 = u_xlat9.x;
  let x_96 : f32 = x_18.x_Metallic;
  u_xlat9.x = (x_93 * x_96);
  let x_105 : vec2<f32> = vs_TEXCOORD0;
  let x_106 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_105);
  u_xlat5 = vec3<f32>(x_106.x, x_106.y, x_106.w);
  let x_110 : f32 = u_xlat5.z;
  let x_112 : f32 = u_xlat5.x;
  u_xlat5.x = (x_110 * x_112);
  let x_115 : vec3<f32> = u_xlat5;
  let x_122 : vec2<f32> = ((vec2<f32>(x_115.x, x_115.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_123 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_122.x, x_122.y, x_123.z);
  let x_126 : vec3<f32> = u_xlat5;
  let x_128 : vec3<f32> = u_xlat5;
  u_xlat23 = dot(vec2<f32>(x_126.x, x_126.y), vec2<f32>(x_128.x, x_128.y));
  let x_131 : f32 = u_xlat23;
  u_xlat23 = min(x_131, 1.0f);
  let x_134 : f32 = u_xlat23;
  u_xlat23 = (-(x_134) + 1.0f);
  let x_137 : f32 = u_xlat23;
  u_xlat5.z = sqrt(x_137);
  let x_141 : f32 = x_18.x_Cutoff;
  let x_144 : f32 = u_xlat2.x;
  let x_146 : f32 = u_xlat22;
  u_xlat22 = ((-(x_141) * x_144) + x_146);
  let x_151 : f32 = u_xlat22;
  u_xlatb22 = (x_151 < 0.0f);
  let x_154 : bool = u_xlatb22;
  if (((select(0i, 1i, x_154) * -1i) != 0i)) {
    discard;
  }
  let x_163 : vec3<f32> = vs_TEXCOORD4;
  let x_167 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_169 : vec2<f32> = (vec2<f32>(x_163.y, x_163.y) * vec2<f32>(x_167.x, x_167.y));
  let x_170 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_169.x, x_170.y, x_170.z, x_169.y);
  let x_173 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_175 : vec3<f32> = vs_TEXCOORD4;
  let x_178 : vec4<f32> = u_xlat2;
  let x_180 : vec2<f32> = ((vec2<f32>(x_173.x, x_173.y) * vec2<f32>(x_175.x, x_175.x)) + vec2<f32>(x_178.x, x_178.w));
  let x_181 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_180.x, x_181.y, x_181.z, x_180.y);
  let x_185 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_187 : vec3<f32> = vs_TEXCOORD4;
  let x_190 : vec4<f32> = u_xlat2;
  let x_192 : vec2<f32> = ((vec2<f32>(x_185.x, x_185.y) * vec2<f32>(x_187.z, x_187.z)) + vec2<f32>(x_190.x, x_190.w));
  let x_193 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_192.x, x_193.y, x_193.z, x_192.y);
  let x_195 : vec4<f32> = u_xlat2;
  let x_199 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_201 : vec2<f32> = (vec2<f32>(x_195.x, x_195.w) + vec2<f32>(x_199.x, x_199.y));
  let x_202 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_201.x, x_202.y, x_202.z, x_201.y);
  let x_205 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_205 == 1.0f);
  let x_207 : bool = u_xlatb22;
  if (x_207) {
    let x_212 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_212 == 1.0f);
    let x_215 : vec3<f32> = vs_TEXCOORD4;
    let x_219 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_221 : vec3<f32> = (vec3<f32>(x_215.y, x_215.y, x_215.y) * vec3<f32>(x_219.x, x_219.y, x_219.z));
    let x_222 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_221.x, x_221.y, x_221.z, x_222.w);
    let x_225 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_227 : vec3<f32> = vs_TEXCOORD4;
    let x_230 : vec4<f32> = u_xlat6;
    let x_232 : vec3<f32> = ((vec3<f32>(x_225.x, x_225.y, x_225.z) * vec3<f32>(x_227.x, x_227.x, x_227.x)) + vec3<f32>(x_230.x, x_230.y, x_230.z));
    let x_233 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
    let x_236 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_238 : vec3<f32> = vs_TEXCOORD4;
    let x_241 : vec4<f32> = u_xlat6;
    let x_243 : vec3<f32> = ((vec3<f32>(x_236.x, x_236.y, x_236.z) * vec3<f32>(x_238.z, x_238.z, x_238.z)) + vec3<f32>(x_241.x, x_241.y, x_241.z));
    let x_244 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_243.x, x_243.y, x_243.z, x_244.w);
    let x_246 : vec4<f32> = u_xlat6;
    let x_249 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_251 : vec3<f32> = (vec3<f32>(x_246.x, x_246.y, x_246.z) + vec3<f32>(x_249.x, x_249.y, x_249.z));
    let x_252 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_254 : bool = u_xlatb22;
    if (x_254) {
      let x_258 : vec4<f32> = u_xlat6;
      x_255 = vec3<f32>(x_258.x, x_258.y, x_258.z);
    } else {
      let x_261 : vec3<f32> = vs_TEXCOORD4;
      x_255 = x_261;
    }
    let x_262 : vec3<f32> = x_255;
    let x_263 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat6;
    let x_269 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_271 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) + -(x_269));
    let x_272 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
    let x_274 : vec4<f32> = u_xlat6;
    let x_278 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_279 : vec3<f32> = (vec3<f32>(x_274.x, x_274.y, x_274.z) * x_278);
    let x_280 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_280.x, x_279.x, x_279.y, x_279.z);
    let x_283 : f32 = u_xlat6.y;
    u_xlat22 = ((x_283 * 0.25f) + 0.75f);
    let x_290 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat24 = ((x_290 * 0.5f) + 0.75f);
    let x_294 : f32 = u_xlat22;
    let x_295 : f32 = u_xlat24;
    u_xlat6.x = max(x_294, x_295);
    let x_306 : vec4<f32> = u_xlat6;
    let x_308 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_306.x, x_306.z, x_306.w));
    u_xlat6 = x_308;
  } else {
    u_xlat6.x = 1.0f;
    u_xlat6.y = 1.0f;
    u_xlat6.z = 1.0f;
    u_xlat6.w = 1.0f;
  }
  let x_315 : vec4<f32> = u_xlat6;
  let x_317 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_315, x_317);
  let x_319 : f32 = u_xlat22;
  u_xlat22 = clamp(x_319, 0.0f, 1.0f);
  let x_326 : vec4<f32> = u_xlat2;
  let x_328 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_326.x, x_326.w));
  u_xlat2.x = x_328.w;
  let x_331 : f32 = u_xlat22;
  let x_333 : f32 = u_xlat2.x;
  u_xlat22 = (x_331 * x_333);
  let x_336 : vec3<f32> = vs_TEXCOORD1;
  let x_337 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_336, x_337);
  let x_341 : vec3<f32> = vs_TEXCOORD2;
  let x_342 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_341, x_342);
  let x_346 : vec3<f32> = vs_TEXCOORD3;
  let x_347 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_346, x_347);
  let x_350 : vec4<f32> = u_xlat6;
  let x_352 : vec4<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_350.x, x_350.y, x_350.z), vec3<f32>(x_352.x, x_352.y, x_352.z));
  let x_357 : f32 = u_xlat2.x;
  u_xlat2.x = inverseSqrt(x_357);
  let x_360 : vec4<f32> = u_xlat2;
  let x_362 : vec4<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_360.x, x_360.x, x_360.x) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : f32 = u_xlat22;
  let x_369 : vec4<f32> = x_18.x_LightColor0;
  let x_371 : vec3<f32> = (vec3<f32>(x_365, x_365, x_365) * vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_371.x, x_371.y, x_371.z, x_372.w);
  let x_374 : vec4<f32> = u_xlat3;
  let x_377 : vec4<f32> = x_18.x_Color;
  let x_382 : vec3<f32> = ((vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(x_377.x, x_377.y, x_377.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_383 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : vec2<f32> = u_xlat9;
  let x_387 : vec4<f32> = u_xlat3;
  let x_392 : vec3<f32> = ((vec3<f32>(x_385.x, x_385.x, x_385.x) * vec3<f32>(x_387.x, x_387.y, x_387.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_393 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_396 : f32 = u_xlat9.x;
  u_xlat22 = ((-(x_396) * 0.959999979f) + 0.959999979f);
  let x_401 : f32 = u_xlat22;
  let x_403 : vec4<f32> = u_xlat4;
  let x_405 : vec3<f32> = (vec3<f32>(x_401, x_401, x_401) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_405.x, x_405.y, x_406.z, x_405.z);
  let x_409 : f32 = u_xlat9.y;
  let x_413 : f32 = x_18.x_Glossiness;
  u_xlat22 = ((-(x_409) * x_413) + 1.0f);
  let x_416 : vec3<f32> = u_xlat0;
  let x_417 : f32 = u_xlat21;
  let x_421 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = ((x_416 * vec3<f32>(x_417, x_417, x_417)) + vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : vec3<f32> = u_xlat0;
  let x_425 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_424, x_425);
  let x_427 : f32 = u_xlat21;
  u_xlat21 = max(x_427, 0.001f);
  let x_430 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_430);
  let x_432 : f32 = u_xlat21;
  let x_434 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_432, x_432, x_432) * x_434);
  let x_436 : vec3<f32> = u_xlat5;
  let x_437 : vec3<f32> = u_xlat1;
  u_xlat21 = dot(x_436, x_437);
  let x_439 : vec3<f32> = u_xlat5;
  let x_441 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat1.x = dot(x_439, vec3<f32>(x_441.x, x_441.y, x_441.z));
  let x_446 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_446, 0.0f, 1.0f);
  let x_450 : vec3<f32> = u_xlat5;
  let x_451 : vec3<f32> = u_xlat0;
  u_xlat8 = dot(x_450, x_451);
  let x_453 : f32 = u_xlat8;
  u_xlat8 = clamp(x_453, 0.0f, 1.0f);
  let x_456 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_458 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec3<f32>(x_456.x, x_456.y, x_456.z), x_458);
  let x_462 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_462, 0.0f, 1.0f);
  let x_467 : f32 = u_xlat0.x;
  let x_469 : f32 = u_xlat0.x;
  u_xlat7.x = (x_467 * x_469);
  let x_472 : vec3<f32> = u_xlat7;
  let x_474 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_472.x, x_472.x), vec2<f32>(x_474, x_474));
  let x_479 : f32 = u_xlat7.x;
  u_xlat7.x = (x_479 + -0.5f);
  let x_485 : f32 = u_xlat1.x;
  u_xlat14 = (-(x_485) + 1.0f);
  let x_489 : f32 = u_xlat14;
  let x_490 : f32 = u_xlat14;
  u_xlat15 = (x_489 * x_490);
  let x_492 : f32 = u_xlat15;
  let x_493 : f32 = u_xlat15;
  u_xlat15 = (x_492 * x_493);
  let x_495 : f32 = u_xlat14;
  let x_496 : f32 = u_xlat15;
  u_xlat14 = (x_495 * x_496);
  let x_499 : f32 = u_xlat7.x;
  let x_500 : f32 = u_xlat14;
  u_xlat14 = ((x_499 * x_500) + 1.0f);
  let x_503 : f32 = u_xlat21;
  u_xlat15 = (-(abs(x_503)) + 1.0f);
  let x_508 : f32 = u_xlat15;
  let x_509 : f32 = u_xlat15;
  u_xlat16 = (x_508 * x_509);
  let x_511 : f32 = u_xlat16;
  let x_512 : f32 = u_xlat16;
  u_xlat16 = (x_511 * x_512);
  let x_514 : f32 = u_xlat15;
  let x_515 : f32 = u_xlat16;
  u_xlat15 = (x_514 * x_515);
  let x_518 : f32 = u_xlat7.x;
  let x_519 : f32 = u_xlat15;
  u_xlat7.x = ((x_518 * x_519) + 1.0f);
  let x_524 : f32 = u_xlat7.x;
  let x_525 : f32 = u_xlat14;
  u_xlat7.x = (x_524 * x_525);
  let x_528 : f32 = u_xlat22;
  let x_529 : f32 = u_xlat22;
  u_xlat14 = (x_528 * x_529);
  let x_531 : f32 = u_xlat14;
  u_xlat14 = max(x_531, 0.002f);
  let x_534 : f32 = u_xlat14;
  u_xlat15 = (-(x_534) + 1.0f);
  let x_537 : f32 = u_xlat21;
  let x_539 : f32 = u_xlat15;
  let x_541 : f32 = u_xlat14;
  u_xlat22 = ((abs(x_537) * x_539) + x_541);
  let x_544 : f32 = u_xlat1.x;
  let x_545 : f32 = u_xlat15;
  let x_547 : f32 = u_xlat14;
  u_xlat15 = ((x_544 * x_545) + x_547);
  let x_549 : f32 = u_xlat21;
  let x_551 : f32 = u_xlat15;
  u_xlat21 = (abs(x_549) * x_551);
  let x_554 : f32 = u_xlat1.x;
  let x_555 : f32 = u_xlat22;
  let x_557 : f32 = u_xlat21;
  u_xlat21 = ((x_554 * x_555) + x_557);
  let x_559 : f32 = u_xlat21;
  u_xlat21 = (x_559 + 0.00001f);
  let x_562 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_562);
  let x_564 : f32 = u_xlat14;
  let x_565 : f32 = u_xlat14;
  u_xlat14 = (x_564 * x_565);
  let x_567 : f32 = u_xlat8;
  let x_568 : f32 = u_xlat14;
  let x_570 : f32 = u_xlat8;
  u_xlat15 = ((x_567 * x_568) + -(x_570));
  let x_573 : f32 = u_xlat15;
  let x_574 : f32 = u_xlat8;
  u_xlat8 = ((x_573 * x_574) + 1.0f);
  let x_577 : f32 = u_xlat14;
  u_xlat14 = (x_577 * 0.318309873f);
  let x_580 : f32 = u_xlat8;
  let x_581 : f32 = u_xlat8;
  u_xlat8 = ((x_580 * x_581) + 0.0000001f);
  let x_585 : f32 = u_xlat14;
  let x_586 : f32 = u_xlat8;
  u_xlat14 = (x_585 / x_586);
  let x_588 : f32 = u_xlat14;
  let x_589 : f32 = u_xlat21;
  u_xlat7.y = (x_588 * x_589);
  let x_592 : vec3<f32> = u_xlat1;
  let x_594 : vec3<f32> = u_xlat7;
  let x_596 : vec2<f32> = (vec2<f32>(x_592.x, x_592.x) * vec2<f32>(x_594.x, x_594.y));
  let x_597 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_596.x, x_596.y, x_597.z);
  let x_600 : f32 = u_xlat7.y;
  u_xlat14 = (x_600 * 3.141592741f);
  let x_603 : f32 = u_xlat14;
  u_xlat14 = max(x_603, 0.0f);
  let x_605 : vec4<f32> = u_xlat3;
  let x_607 : vec4<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_605.x, x_605.y, x_605.z), vec3<f32>(x_607.x, x_607.y, x_607.z));
  let x_611 : f32 = u_xlat21;
  u_xlatb21 = !((x_611 == 0.0f));
  let x_613 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_613);
  let x_615 : f32 = u_xlat21;
  let x_616 : f32 = u_xlat14;
  u_xlat14 = (x_615 * x_616);
  let x_618 : vec3<f32> = u_xlat7;
  let x_620 : vec4<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_618.x, x_618.x, x_618.x) * vec3<f32>(x_620.x, x_620.y, x_620.z));
  let x_623 : vec4<f32> = u_xlat6;
  let x_625 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_623.x, x_623.y, x_623.z) * vec3<f32>(x_625, x_625, x_625));
  let x_629 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_629) + 1.0f);
  let x_634 : f32 = u_xlat0.x;
  let x_636 : f32 = u_xlat0.x;
  u_xlat22 = (x_634 * x_636);
  let x_638 : f32 = u_xlat22;
  let x_639 : f32 = u_xlat22;
  u_xlat22 = (x_638 * x_639);
  let x_642 : f32 = u_xlat0.x;
  let x_643 : f32 = u_xlat22;
  u_xlat0.x = (x_642 * x_643);
  let x_646 : vec4<f32> = u_xlat3;
  let x_650 : vec3<f32> = (-(vec3<f32>(x_646.x, x_646.y, x_646.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_650.x, x_650.y, x_650.z, x_651.w);
  let x_653 : vec4<f32> = u_xlat4;
  let x_655 : vec3<f32> = u_xlat0;
  let x_658 : vec4<f32> = u_xlat3;
  let x_660 : vec3<f32> = ((vec3<f32>(x_653.x, x_653.y, x_653.z) * vec3<f32>(x_655.x, x_655.x, x_655.x)) + vec3<f32>(x_658.x, x_658.y, x_658.z));
  let x_661 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_660.x, x_660.y, x_660.z, x_661.w);
  let x_663 : vec3<f32> = u_xlat7;
  let x_664 : vec4<f32> = u_xlat3;
  u_xlat0 = (x_663 * vec3<f32>(x_664.x, x_664.y, x_664.z));
  let x_669 : vec4<f32> = u_xlat2;
  let x_671 : vec3<f32> = u_xlat1;
  let x_673 : vec3<f32> = u_xlat0;
  let x_674 : vec3<f32> = ((vec3<f32>(x_669.x, x_669.y, x_669.w) * x_671) + x_673);
  let x_675 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_674.x, x_674.y, x_674.z, x_675.w);
  let x_678 : f32 = u_xlat4.w;
  SV_Target0.w = x_678;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec3<f32>, @location(3) vs_TEXCOORD3_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

