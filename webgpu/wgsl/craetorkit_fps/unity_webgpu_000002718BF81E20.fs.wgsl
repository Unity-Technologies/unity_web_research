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

@group(0) @binding(13) var sampler_DissolveNoise : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

@group(0) @binding(2) var x_Specular : texture_2d<f32>;

@group(0) @binding(12) var sampler_Specular : sampler;

@group(0) @binding(3) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_NormalMap : sampler;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(7) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTexture0 : sampler;

@group(0) @binding(5) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(9) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat27 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat28 : f32;
  var u_xlat29 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat30 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlatb28 : bool;
  var u_xlat7 : vec4<f32>;
  var x_263 : vec3<f32>;
  var u_xlat8 : vec4<f32>;
  var u_xlatb29 : bool;
  var u_xlat11 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat18 : f32;
  var u_xlat10 : f32;
  var u_xlatb27 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat27;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat28 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat28;
  u_xlat28 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat28;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_69 : vec2<f32> = vs_TEXCOORD0;
  let x_70 : vec4<f32> = textureSample(x_DissolveNoise, sampler_DissolveNoise, x_69);
  u_xlat28 = x_70.x;
  let x_78 : f32 = x_18.x_EdgeSize;
  let x_81 : f32 = x_18.x_Cutoff;
  u_xlat29 = (x_78 + x_81);
  let x_90 : vec2<f32> = vs_TEXCOORD0;
  let x_91 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_90);
  u_xlat3 = x_91;
  let x_93 : vec4<f32> = u_xlat3;
  let x_96 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_93 * x_96);
  let x_104 : vec2<f32> = vs_TEXCOORD0;
  let x_105 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_104);
  let x_106 : vec2<f32> = vec2<f32>(x_105.x, x_105.w);
  let x_107 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_106.x, x_106.y, x_107.z, x_107.w);
  let x_111 : f32 = u_xlat5.x;
  let x_114 : f32 = x_18.x_Metallic;
  u_xlat30 = (x_111 * x_114);
  let x_121 : vec2<f32> = vs_TEXCOORD0;
  let x_122 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_121);
  let x_123 : vec3<f32> = vec3<f32>(x_122.x, x_122.y, x_122.w);
  let x_124 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_123.x, x_124.y, x_123.y, x_123.z);
  let x_128 : f32 = u_xlat5.w;
  let x_130 : f32 = u_xlat5.x;
  u_xlat5.x = (x_128 * x_130);
  let x_134 : vec4<f32> = u_xlat5;
  let x_141 : vec2<f32> = ((vec2<f32>(x_134.x, x_134.z) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_142 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_141.x, x_141.y, x_142.z);
  let x_144 : vec3<f32> = u_xlat6;
  let x_146 : vec3<f32> = u_xlat6;
  u_xlat5.x = dot(vec2<f32>(x_144.x, x_144.y), vec2<f32>(x_146.x, x_146.y));
  let x_151 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_151, 1.0f);
  let x_156 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_156) + 1.0f);
  let x_161 : f32 = u_xlat5.x;
  u_xlat6.z = sqrt(x_161);
  let x_166 : f32 = x_18.x_Cutoff;
  let x_168 : f32 = u_xlat29;
  let x_170 : f32 = u_xlat28;
  u_xlat28 = ((-(x_166) * x_168) + x_170);
  let x_175 : f32 = u_xlat28;
  u_xlatb28 = (x_175 < 0.0f);
  let x_178 : bool = u_xlatb28;
  if (((select(0i, 1i, x_178) * -1i) != 0i)) {
    discard;
  }
  let x_187 : vec3<f32> = vs_TEXCOORD4;
  let x_191 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec4<f32>(x_187.y, x_187.y, x_187.y, x_187.y) * x_191);
  let x_194 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_195 : vec3<f32> = vs_TEXCOORD4;
  let x_198 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_194 * vec4<f32>(x_195.x, x_195.x, x_195.x, x_195.x)) + x_198);
  let x_202 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_203 : vec3<f32> = vs_TEXCOORD4;
  let x_206 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_202 * vec4<f32>(x_203.z, x_203.z, x_203.z, x_203.z)) + x_206);
  let x_208 : vec4<f32> = u_xlat7;
  let x_211 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_208 + x_211);
  let x_214 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb28 = (x_214 == 1.0f);
  let x_216 : bool = u_xlatb28;
  if (x_216) {
    let x_221 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb28 = (x_221 == 1.0f);
    let x_223 : vec3<f32> = vs_TEXCOORD4;
    let x_227 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_229 : vec3<f32> = (vec3<f32>(x_223.y, x_223.y, x_223.y) * vec3<f32>(x_227.x, x_227.y, x_227.z));
    let x_230 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_229.x, x_230.y, x_229.y, x_229.z);
    let x_233 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_235 : vec3<f32> = vs_TEXCOORD4;
    let x_238 : vec4<f32> = u_xlat5;
    let x_240 : vec3<f32> = ((vec3<f32>(x_233.x, x_233.y, x_233.z) * vec3<f32>(x_235.x, x_235.x, x_235.x)) + vec3<f32>(x_238.x, x_238.z, x_238.w));
    let x_241 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_240.x, x_241.y, x_240.y, x_240.z);
    let x_244 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_246 : vec3<f32> = vs_TEXCOORD4;
    let x_249 : vec4<f32> = u_xlat5;
    let x_251 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(x_246.z, x_246.z, x_246.z)) + vec3<f32>(x_249.x, x_249.z, x_249.w));
    let x_252 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_251.x, x_252.y, x_251.y, x_251.z);
    let x_254 : vec4<f32> = u_xlat5;
    let x_257 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_259 : vec3<f32> = (vec3<f32>(x_254.x, x_254.z, x_254.w) + vec3<f32>(x_257.x, x_257.y, x_257.z));
    let x_260 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_259.x, x_260.y, x_259.y, x_259.z);
    let x_262 : bool = u_xlatb28;
    if (x_262) {
      let x_266 : vec4<f32> = u_xlat5;
      x_263 = vec3<f32>(x_266.x, x_266.z, x_266.w);
    } else {
      let x_269 : vec3<f32> = vs_TEXCOORD4;
      x_263 = x_269;
    }
    let x_270 : vec3<f32> = x_263;
    let x_271 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_270.x, x_271.y, x_270.y, x_270.z);
    let x_273 : vec4<f32> = u_xlat5;
    let x_277 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_279 : vec3<f32> = (vec3<f32>(x_273.x, x_273.z, x_273.w) + -(x_277));
    let x_280 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_279.x, x_280.y, x_279.y, x_279.z);
    let x_283 : vec4<f32> = u_xlat5;
    let x_287 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_288 : vec3<f32> = (vec3<f32>(x_283.x, x_283.z, x_283.w) * x_287);
    let x_289 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_289.x, x_288.x, x_288.y, x_288.z);
    let x_292 : f32 = u_xlat8.y;
    u_xlat28 = ((x_292 * 0.25f) + 0.75f);
    let x_298 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat29 = ((x_298 * 0.5f) + 0.75f);
    let x_302 : f32 = u_xlat28;
    let x_303 : f32 = u_xlat29;
    u_xlat8.x = max(x_302, x_303);
    let x_314 : vec4<f32> = u_xlat8;
    let x_316 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_314.x, x_314.z, x_314.w));
    u_xlat8 = x_316;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_322 : vec4<f32> = u_xlat8;
  let x_324 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat28 = dot(x_322, x_324);
  let x_326 : f32 = u_xlat28;
  u_xlat28 = clamp(x_326, 0.0f, 1.0f);
  let x_330 : f32 = u_xlat7.z;
  u_xlatb29 = (0.0f < x_330);
  let x_332 : bool = u_xlatb29;
  u_xlat29 = select(0.0f, 1.0f, x_332);
  let x_334 : vec4<f32> = u_xlat7;
  let x_336 : vec4<f32> = u_xlat7;
  let x_338 : vec2<f32> = (vec2<f32>(x_334.x, x_334.y) / vec2<f32>(x_336.w, x_336.w));
  let x_339 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_338.x, x_339.y, x_338.y, x_339.w);
  let x_341 : vec4<f32> = u_xlat5;
  let x_344 : vec2<f32> = (vec2<f32>(x_341.x, x_341.z) + vec2<f32>(0.5f, 0.5f));
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_344.x, x_345.y, x_344.y, x_345.w);
  let x_352 : vec4<f32> = u_xlat5;
  let x_354 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_352.x, x_352.z));
  u_xlat5.x = x_354.w;
  let x_357 : f32 = u_xlat29;
  let x_359 : f32 = u_xlat5.x;
  u_xlat29 = (x_357 * x_359);
  let x_361 : vec4<f32> = u_xlat7;
  let x_363 : vec4<f32> = u_xlat7;
  u_xlat5.x = dot(vec3<f32>(x_361.x, x_361.y, x_361.z), vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_372 : vec4<f32> = u_xlat5;
  let x_374 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_372.x, x_372.x));
  u_xlat5.x = x_374.x;
  let x_377 : f32 = u_xlat29;
  let x_379 : f32 = u_xlat5.x;
  u_xlat29 = (x_377 * x_379);
  let x_381 : f32 = u_xlat28;
  let x_382 : f32 = u_xlat29;
  u_xlat28 = (x_381 * x_382);
  let x_385 : vec3<f32> = vs_TEXCOORD1;
  let x_386 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_385, x_386);
  let x_390 : vec3<f32> = vs_TEXCOORD2;
  let x_391 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_390, x_391);
  let x_395 : vec3<f32> = vs_TEXCOORD3;
  let x_396 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_395, x_396);
  let x_399 : vec4<f32> = u_xlat7;
  let x_401 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_399.x, x_399.y, x_399.z), vec3<f32>(x_401.x, x_401.y, x_401.z));
  let x_404 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_404);
  let x_406 : f32 = u_xlat29;
  let x_408 : vec4<f32> = u_xlat7;
  let x_410 : vec3<f32> = (vec3<f32>(x_406, x_406, x_406) * vec3<f32>(x_408.x, x_408.y, x_408.z));
  let x_411 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_410.x, x_411.y, x_410.y, x_410.z);
  let x_413 : f32 = u_xlat28;
  let x_417 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_413, x_413, x_413) * vec3<f32>(x_417.x, x_417.y, x_417.z));
  let x_420 : vec4<f32> = u_xlat3;
  let x_423 : vec4<f32> = x_18.x_Color;
  let x_428 : vec3<f32> = ((vec3<f32>(x_420.x, x_420.y, x_420.z) * vec3<f32>(x_423.x, x_423.y, x_423.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_429 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_428.x, x_428.y, x_428.z, x_429.w);
  let x_431 : f32 = u_xlat30;
  let x_433 : vec4<f32> = u_xlat3;
  let x_438 : vec3<f32> = ((vec3<f32>(x_431, x_431, x_431) * vec3<f32>(x_433.x, x_433.y, x_433.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_439 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_438.x, x_438.y, x_438.z, x_439.w);
  let x_441 : f32 = u_xlat30;
  u_xlat28 = ((-(x_441) * 0.959999979f) + 0.959999979f);
  let x_446 : f32 = u_xlat28;
  let x_448 : vec4<f32> = u_xlat4;
  let x_450 : vec3<f32> = (vec3<f32>(x_446, x_446, x_446) * vec3<f32>(x_448.x, x_448.y, x_448.z));
  let x_451 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
  let x_454 : f32 = u_xlat5.y;
  let x_458 : f32 = x_18.x_Glossiness;
  u_xlat28 = ((-(x_454) * x_458) + 1.0f);
  let x_461 : vec3<f32> = u_xlat0;
  let x_462 : f32 = u_xlat27;
  let x_465 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_461 * vec3<f32>(x_462, x_462, x_462)) + x_465);
  let x_467 : vec3<f32> = u_xlat0;
  let x_468 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_467, x_468);
  let x_470 : f32 = u_xlat27;
  u_xlat27 = max(x_470, 0.001f);
  let x_473 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_473);
  let x_475 : f32 = u_xlat27;
  let x_477 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_475, x_475, x_475) * x_477);
  let x_479 : vec4<f32> = u_xlat5;
  let x_481 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(vec3<f32>(x_479.x, x_479.z, x_479.w), x_481);
  let x_483 : vec4<f32> = u_xlat5;
  let x_485 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_483.x, x_483.z, x_483.w), x_485);
  let x_489 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_489, 0.0f, 1.0f);
  let x_493 : vec4<f32> = u_xlat5;
  let x_495 : vec3<f32> = u_xlat0;
  u_xlat11 = dot(vec3<f32>(x_493.x, x_493.z, x_493.w), x_495);
  let x_497 : f32 = u_xlat11;
  u_xlat11 = clamp(x_497, 0.0f, 1.0f);
  let x_499 : vec3<f32> = u_xlat1;
  let x_500 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_499, x_500);
  let x_504 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_504, 0.0f, 1.0f);
  let x_509 : f32 = u_xlat0.x;
  let x_511 : f32 = u_xlat0.x;
  u_xlat9.x = (x_509 * x_511);
  let x_514 : vec3<f32> = u_xlat9;
  let x_516 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_514.x, x_514.x), vec2<f32>(x_516, x_516));
  let x_521 : f32 = u_xlat9.x;
  u_xlat9.x = (x_521 + -0.5f);
  let x_527 : f32 = u_xlat2.x;
  u_xlat18 = (-(x_527) + 1.0f);
  let x_530 : f32 = u_xlat18;
  let x_531 : f32 = u_xlat18;
  u_xlat1.x = (x_530 * x_531);
  let x_535 : f32 = u_xlat1.x;
  let x_537 : f32 = u_xlat1.x;
  u_xlat1.x = (x_535 * x_537);
  let x_540 : f32 = u_xlat18;
  let x_542 : f32 = u_xlat1.x;
  u_xlat18 = (x_540 * x_542);
  let x_545 : f32 = u_xlat9.x;
  let x_546 : f32 = u_xlat18;
  u_xlat18 = ((x_545 * x_546) + 1.0f);
  let x_549 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_549)) + 1.0f);
  let x_556 : f32 = u_xlat1.x;
  let x_558 : f32 = u_xlat1.x;
  u_xlat10 = (x_556 * x_558);
  let x_560 : f32 = u_xlat10;
  let x_561 : f32 = u_xlat10;
  u_xlat10 = (x_560 * x_561);
  let x_564 : f32 = u_xlat1.x;
  let x_565 : f32 = u_xlat10;
  u_xlat1.x = (x_564 * x_565);
  let x_569 : f32 = u_xlat9.x;
  let x_571 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_569 * x_571) + 1.0f);
  let x_576 : f32 = u_xlat9.x;
  let x_577 : f32 = u_xlat18;
  u_xlat9.x = (x_576 * x_577);
  let x_580 : f32 = u_xlat28;
  let x_581 : f32 = u_xlat28;
  u_xlat18 = (x_580 * x_581);
  let x_583 : f32 = u_xlat18;
  u_xlat18 = max(x_583, 0.002f);
  let x_586 : f32 = u_xlat18;
  u_xlat1.x = (-(x_586) + 1.0f);
  let x_590 : f32 = u_xlat27;
  let x_593 : f32 = u_xlat1.x;
  let x_595 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_590) * x_593) + x_595);
  let x_598 : f32 = u_xlat2.x;
  let x_600 : f32 = u_xlat1.x;
  let x_602 : f32 = u_xlat18;
  u_xlat1.x = ((x_598 * x_600) + x_602);
  let x_605 : f32 = u_xlat27;
  let x_608 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_605) * x_608);
  let x_611 : f32 = u_xlat2.x;
  let x_612 : f32 = u_xlat10;
  let x_614 : f32 = u_xlat27;
  u_xlat27 = ((x_611 * x_612) + x_614);
  let x_616 : f32 = u_xlat27;
  u_xlat27 = (x_616 + 0.00001f);
  let x_619 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_619);
  let x_621 : f32 = u_xlat18;
  let x_622 : f32 = u_xlat18;
  u_xlat18 = (x_621 * x_622);
  let x_624 : f32 = u_xlat11;
  let x_625 : f32 = u_xlat18;
  let x_627 : f32 = u_xlat11;
  u_xlat1.x = ((x_624 * x_625) + -(x_627));
  let x_632 : f32 = u_xlat1.x;
  let x_633 : f32 = u_xlat11;
  u_xlat1.x = ((x_632 * x_633) + 1.0f);
  let x_637 : f32 = u_xlat18;
  u_xlat18 = (x_637 * 0.318309873f);
  let x_641 : f32 = u_xlat1.x;
  let x_643 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_641 * x_643) + 0.0000001f);
  let x_648 : f32 = u_xlat18;
  let x_650 : f32 = u_xlat1.x;
  u_xlat18 = (x_648 / x_650);
  let x_652 : f32 = u_xlat18;
  let x_653 : f32 = u_xlat27;
  u_xlat9.y = (x_652 * x_653);
  let x_656 : vec3<f32> = u_xlat2;
  let x_658 : vec3<f32> = u_xlat9;
  let x_660 : vec2<f32> = (vec2<f32>(x_656.x, x_656.x) * vec2<f32>(x_658.x, x_658.y));
  let x_661 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_660.x, x_660.y, x_661.z);
  let x_664 : f32 = u_xlat9.y;
  u_xlat18 = (x_664 * 3.141592741f);
  let x_667 : f32 = u_xlat18;
  u_xlat18 = max(x_667, 0.0f);
  let x_669 : vec4<f32> = u_xlat3;
  let x_671 : vec4<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_669.x, x_669.y, x_669.z), vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_675 : f32 = u_xlat27;
  u_xlatb27 = !((x_675 == 0.0f));
  let x_677 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_677);
  let x_679 : f32 = u_xlat27;
  let x_680 : f32 = u_xlat18;
  u_xlat18 = (x_679 * x_680);
  let x_682 : vec3<f32> = u_xlat9;
  let x_684 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_682.x, x_682.x, x_682.x) * x_684);
  let x_686 : vec3<f32> = u_xlat6;
  let x_687 : f32 = u_xlat18;
  u_xlat9 = (x_686 * vec3<f32>(x_687, x_687, x_687));
  let x_691 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_691) + 1.0f);
  let x_696 : f32 = u_xlat0.x;
  let x_698 : f32 = u_xlat0.x;
  u_xlat28 = (x_696 * x_698);
  let x_700 : f32 = u_xlat28;
  let x_701 : f32 = u_xlat28;
  u_xlat28 = (x_700 * x_701);
  let x_704 : f32 = u_xlat0.x;
  let x_705 : f32 = u_xlat28;
  u_xlat0.x = (x_704 * x_705);
  let x_708 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_708.x, x_708.y, x_708.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_713 : vec3<f32> = u_xlat2;
  let x_714 : vec3<f32> = u_xlat0;
  let x_717 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_713 * vec3<f32>(x_714.x, x_714.x, x_714.x)) + vec3<f32>(x_717.x, x_717.y, x_717.z));
  let x_720 : vec3<f32> = u_xlat9;
  let x_721 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_720 * x_721);
  let x_725 : vec4<f32> = u_xlat4;
  let x_727 : vec3<f32> = u_xlat1;
  let x_729 : vec3<f32> = u_xlat0;
  let x_730 : vec3<f32> = ((vec3<f32>(x_725.x, x_725.y, x_725.z) * x_727) + x_729);
  let x_731 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_730.x, x_730.y, x_730.z, x_731.w);
  let x_734 : f32 = u_xlat4.w;
  SV_Target0.w = x_734;
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

