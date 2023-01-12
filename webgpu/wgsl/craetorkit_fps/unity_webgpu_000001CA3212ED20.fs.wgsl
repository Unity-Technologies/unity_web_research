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

@group(0) @binding(8) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(1) var x_Normal : texture_2d<f32>;

@group(0) @binding(9) var sampler_Normal : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTextureB0 : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(6) var sampler_LightTexture0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec3<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var x_274 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlat27 : f32;
  var u_xlat10 : f32;
  var u_xlat8 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat9 : f32;
  var u_xlatb24 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD4;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat24;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD4;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat25 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat25;
  u_xlat25 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat25;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_71 : vec4<f32> = vs_TEXCOORD0;
  let x_73 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_71.x, x_71.y));
  u_xlat3 = x_73;
  let x_74 : vec4<f32> = u_xlat3;
  let x_78 : vec4<f32> = x_18.x_Color;
  let x_80 : vec3<f32> = (vec3<f32>(x_74.x, x_74.y, x_74.z) * vec3<f32>(x_78.x, x_78.y, x_78.z));
  let x_81 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_80.x, x_80.y, x_80.z, x_81.w);
  let x_84 : vec4<f32> = u_xlat3;
  let x_87 : vec4<f32> = vs_COLOR0;
  u_xlat4 = (vec3<f32>(x_84.x, x_84.y, x_84.z) * vec3<f32>(x_87.x, x_87.y, x_87.z));
  let x_96 : f32 = x_18.x_Time.x;
  let x_99 : f32 = x_18.x_MovementSpeed;
  let x_104 : f32 = vs_TEXCOORD0.z;
  u_xlat5.x = ((x_96 * x_99) + x_104);
  let x_108 : f32 = x_18.x_Time.x;
  let x_111 : f32 = x_18.x_MovementSpeed;
  let x_115 : f32 = vs_TEXCOORD0.w;
  u_xlat5.y = ((-(x_108) * x_111) + x_115);
  let x_124 : vec3<f32> = u_xlat5;
  let x_126 : vec4<f32> = textureSample(x_Normal, sampler_Normal, vec2<f32>(x_124.x, x_124.y));
  u_xlat5 = vec3<f32>(x_126.x, x_126.y, x_126.w);
  let x_129 : f32 = u_xlat5.z;
  let x_131 : f32 = u_xlat5.x;
  u_xlat5.x = (x_129 * x_131);
  let x_134 : vec3<f32> = u_xlat5;
  let x_141 : vec2<f32> = ((vec2<f32>(x_134.x, x_134.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_142 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_141.x, x_141.y, x_142.z);
  let x_144 : vec3<f32> = u_xlat5;
  let x_148 : f32 = x_18.x_NormalSacle;
  let x_150 : vec2<f32> = (vec2<f32>(x_144.x, x_144.y) * vec2<f32>(x_148, x_148));
  let x_151 : vec3<f32> = u_xlat5;
  u_xlat5 = vec3<f32>(x_150.x, x_150.y, x_151.z);
  let x_153 : vec3<f32> = u_xlat5;
  let x_155 : vec3<f32> = u_xlat5;
  u_xlat25 = dot(vec2<f32>(x_153.x, x_153.y), vec2<f32>(x_155.x, x_155.y));
  let x_158 : f32 = u_xlat25;
  u_xlat25 = min(x_158, 1.0f);
  let x_161 : f32 = u_xlat25;
  u_xlat25 = (-(x_161) + 1.0f);
  let x_164 : f32 = u_xlat25;
  u_xlat5.z = sqrt(x_164);
  let x_168 : f32 = vs_COLOR0.w;
  u_xlat25 = (-(x_168) + 1.0f);
  let x_172 : f32 = u_xlat3.w;
  let x_174 : f32 = x_18.x_Color.w;
  let x_176 : f32 = u_xlat25;
  u_xlat25 = ((x_172 * x_174) + -(x_176));
  let x_182 : f32 = u_xlat25;
  u_xlatb25 = (x_182 < 0.0f);
  let x_185 : bool = u_xlatb25;
  if (((select(0i, 1i, x_185) * -1i) != 0i)) {
    discard;
  }
  let x_194 : vec3<f32> = vs_TEXCOORD4;
  let x_198 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat6 = (vec3<f32>(x_194.y, x_194.y, x_194.y) * vec3<f32>(x_198.x, x_198.y, x_198.z));
  let x_202 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_204 : vec3<f32> = vs_TEXCOORD4;
  let x_207 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_202.x, x_202.y, x_202.z) * vec3<f32>(x_204.x, x_204.x, x_204.x)) + x_207);
  let x_210 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_212 : vec3<f32> = vs_TEXCOORD4;
  let x_215 : vec3<f32> = u_xlat6;
  u_xlat6 = ((vec3<f32>(x_210.x, x_210.y, x_210.z) * vec3<f32>(x_212.z, x_212.z, x_212.z)) + x_215);
  let x_217 : vec3<f32> = u_xlat6;
  let x_220 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat6 = (x_217 + vec3<f32>(x_220.x, x_220.y, x_220.z));
  let x_225 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_225 == 1.0f);
  let x_227 : bool = u_xlatb25;
  if (x_227) {
    let x_231 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_231 == 1.0f);
    let x_234 : vec3<f32> = vs_TEXCOORD4;
    let x_238 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_240 : vec3<f32> = (vec3<f32>(x_234.y, x_234.y, x_234.y) * vec3<f32>(x_238.x, x_238.y, x_238.z));
    let x_241 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_240.x, x_240.y, x_240.z, x_241.w);
    let x_244 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_246 : vec3<f32> = vs_TEXCOORD4;
    let x_249 : vec4<f32> = u_xlat7;
    let x_251 : vec3<f32> = ((vec3<f32>(x_244.x, x_244.y, x_244.z) * vec3<f32>(x_246.x, x_246.x, x_246.x)) + vec3<f32>(x_249.x, x_249.y, x_249.z));
    let x_252 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_251.x, x_251.y, x_251.z, x_252.w);
    let x_255 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_257 : vec3<f32> = vs_TEXCOORD4;
    let x_260 : vec4<f32> = u_xlat7;
    let x_262 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.y, x_255.z) * vec3<f32>(x_257.z, x_257.z, x_257.z)) + vec3<f32>(x_260.x, x_260.y, x_260.z));
    let x_263 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat7;
    let x_268 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_270 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) + vec3<f32>(x_268.x, x_268.y, x_268.z));
    let x_271 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_270.x, x_270.y, x_270.z, x_271.w);
    let x_273 : bool = u_xlatb25;
    if (x_273) {
      let x_277 : vec4<f32> = u_xlat7;
      x_274 = vec3<f32>(x_277.x, x_277.y, x_277.z);
    } else {
      let x_280 : vec3<f32> = vs_TEXCOORD4;
      x_274 = x_280;
    }
    let x_281 : vec3<f32> = x_274;
    let x_282 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat7;
    let x_288 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_290 : vec3<f32> = (vec3<f32>(x_284.x, x_284.y, x_284.z) + -(x_288));
    let x_291 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_290.x, x_290.y, x_290.z, x_291.w);
    let x_293 : vec4<f32> = u_xlat7;
    let x_297 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_298 : vec3<f32> = (vec3<f32>(x_293.x, x_293.y, x_293.z) * x_297);
    let x_299 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_299.x, x_298.x, x_298.y, x_298.z);
    let x_302 : f32 = u_xlat7.y;
    u_xlat25 = ((x_302 * 0.25f) + 0.75f);
    let x_309 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_309 * 0.5f) + 0.75f);
    let x_313 : f32 = u_xlat25;
    let x_314 : f32 = u_xlat26;
    u_xlat7.x = max(x_313, x_314);
    let x_325 : vec4<f32> = u_xlat7;
    let x_327 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_325.x, x_325.z, x_325.w));
    u_xlat7 = x_327;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_333 : vec4<f32> = u_xlat7;
  let x_335 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_333, x_335);
  let x_337 : f32 = u_xlat25;
  u_xlat25 = clamp(x_337, 0.0f, 1.0f);
  let x_339 : vec3<f32> = u_xlat6;
  let x_340 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_339, x_340);
  let x_347 : f32 = u_xlat26;
  let x_349 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_347, x_347));
  u_xlat26 = x_349.x;
  let x_360 : vec3<f32> = u_xlat6;
  let x_361 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_360);
  u_xlat27 = x_361.w;
  let x_363 : f32 = u_xlat26;
  let x_364 : f32 = u_xlat27;
  u_xlat26 = (x_363 * x_364);
  let x_366 : f32 = u_xlat25;
  let x_367 : f32 = u_xlat26;
  u_xlat25 = (x_366 * x_367);
  let x_370 : vec3<f32> = vs_TEXCOORD1;
  let x_371 : vec3<f32> = u_xlat5;
  u_xlat6.x = dot(x_370, x_371);
  let x_375 : vec3<f32> = vs_TEXCOORD2;
  let x_376 : vec3<f32> = u_xlat5;
  u_xlat6.y = dot(x_375, x_376);
  let x_380 : vec3<f32> = vs_TEXCOORD3;
  let x_381 : vec3<f32> = u_xlat5;
  u_xlat6.z = dot(x_380, x_381);
  let x_384 : vec3<f32> = u_xlat6;
  let x_385 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(x_384, x_385);
  let x_387 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_387);
  let x_389 : f32 = u_xlat26;
  let x_391 : vec3<f32> = u_xlat6;
  u_xlat5 = (vec3<f32>(x_389, x_389, x_389) * x_391);
  let x_393 : f32 = u_xlat25;
  let x_397 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_393, x_393, x_393) * vec3<f32>(x_397.x, x_397.y, x_397.z));
  let x_400 : vec4<f32> = u_xlat3;
  let x_402 : vec4<f32> = vs_COLOR0;
  let x_407 : vec3<f32> = ((vec3<f32>(x_400.x, x_400.y, x_400.z) * vec3<f32>(x_402.x, x_402.y, x_402.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_408 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_407.x, x_407.y, x_407.z, x_408.w);
  let x_412 : f32 = x_18.x_Metallic;
  let x_414 : f32 = x_18.x_Metallic;
  let x_416 : f32 = x_18.x_Metallic;
  let x_417 : vec3<f32> = vec3<f32>(x_412, x_414, x_416);
  let x_422 : vec4<f32> = u_xlat3;
  let x_427 : vec3<f32> = ((vec3<f32>(x_417.x, x_417.y, x_417.z) * vec3<f32>(x_422.x, x_422.y, x_422.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_428 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_427.x, x_427.y, x_427.z, x_428.w);
  let x_431 : f32 = x_18.x_Metallic;
  u_xlat25 = ((-(x_431) * 0.959999979f) + 0.959999979f);
  let x_436 : f32 = u_xlat25;
  let x_438 : vec3<f32> = u_xlat4;
  u_xlat4 = (vec3<f32>(x_436, x_436, x_436) * x_438);
  let x_442 : f32 = x_18.x_Glossiness;
  u_xlat25 = (-(x_442) + 1.0f);
  let x_445 : vec3<f32> = u_xlat0;
  let x_446 : f32 = u_xlat24;
  let x_449 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_445 * vec3<f32>(x_446, x_446, x_446)) + x_449);
  let x_451 : vec3<f32> = u_xlat0;
  let x_452 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_451, x_452);
  let x_454 : f32 = u_xlat24;
  u_xlat24 = max(x_454, 0.001f);
  let x_457 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_457);
  let x_459 : f32 = u_xlat24;
  let x_461 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_459, x_459, x_459) * x_461);
  let x_463 : vec3<f32> = u_xlat5;
  let x_464 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(x_463, x_464);
  let x_466 : vec3<f32> = u_xlat5;
  let x_467 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(x_466, x_467);
  let x_471 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_471, 0.0f, 1.0f);
  let x_475 : vec3<f32> = u_xlat5;
  let x_476 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(x_475, x_476);
  let x_478 : f32 = u_xlat10;
  u_xlat10 = clamp(x_478, 0.0f, 1.0f);
  let x_480 : vec3<f32> = u_xlat1;
  let x_481 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_480, x_481);
  let x_485 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_485, 0.0f, 1.0f);
  let x_490 : f32 = u_xlat0.x;
  let x_492 : f32 = u_xlat0.x;
  u_xlat8.x = (x_490 * x_492);
  let x_495 : vec3<f32> = u_xlat8;
  let x_497 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_495.x, x_495.x), vec2<f32>(x_497, x_497));
  let x_502 : f32 = u_xlat8.x;
  u_xlat8.x = (x_502 + -0.5f);
  let x_508 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_508) + 1.0f);
  let x_511 : f32 = u_xlat16;
  let x_512 : f32 = u_xlat16;
  u_xlat1.x = (x_511 * x_512);
  let x_516 : f32 = u_xlat1.x;
  let x_518 : f32 = u_xlat1.x;
  u_xlat1.x = (x_516 * x_518);
  let x_521 : f32 = u_xlat16;
  let x_523 : f32 = u_xlat1.x;
  u_xlat16 = (x_521 * x_523);
  let x_526 : f32 = u_xlat8.x;
  let x_527 : f32 = u_xlat16;
  u_xlat16 = ((x_526 * x_527) + 1.0f);
  let x_530 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_530)) + 1.0f);
  let x_537 : f32 = u_xlat1.x;
  let x_539 : f32 = u_xlat1.x;
  u_xlat9 = (x_537 * x_539);
  let x_541 : f32 = u_xlat9;
  let x_542 : f32 = u_xlat9;
  u_xlat9 = (x_541 * x_542);
  let x_545 : f32 = u_xlat1.x;
  let x_546 : f32 = u_xlat9;
  u_xlat1.x = (x_545 * x_546);
  let x_550 : f32 = u_xlat8.x;
  let x_552 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_550 * x_552) + 1.0f);
  let x_557 : f32 = u_xlat8.x;
  let x_558 : f32 = u_xlat16;
  u_xlat8.x = (x_557 * x_558);
  let x_561 : f32 = u_xlat25;
  let x_562 : f32 = u_xlat25;
  u_xlat16 = (x_561 * x_562);
  let x_564 : f32 = u_xlat16;
  u_xlat16 = max(x_564, 0.002f);
  let x_567 : f32 = u_xlat16;
  u_xlat1.x = (-(x_567) + 1.0f);
  let x_571 : f32 = u_xlat24;
  let x_574 : f32 = u_xlat1.x;
  let x_576 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_571) * x_574) + x_576);
  let x_579 : f32 = u_xlat2.x;
  let x_581 : f32 = u_xlat1.x;
  let x_583 : f32 = u_xlat16;
  u_xlat1.x = ((x_579 * x_581) + x_583);
  let x_586 : f32 = u_xlat24;
  let x_589 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_586) * x_589);
  let x_592 : f32 = u_xlat2.x;
  let x_593 : f32 = u_xlat9;
  let x_595 : f32 = u_xlat24;
  u_xlat24 = ((x_592 * x_593) + x_595);
  let x_597 : f32 = u_xlat24;
  u_xlat24 = (x_597 + 0.00001f);
  let x_600 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_600);
  let x_602 : f32 = u_xlat16;
  let x_603 : f32 = u_xlat16;
  u_xlat16 = (x_602 * x_603);
  let x_605 : f32 = u_xlat10;
  let x_606 : f32 = u_xlat16;
  let x_608 : f32 = u_xlat10;
  u_xlat1.x = ((x_605 * x_606) + -(x_608));
  let x_613 : f32 = u_xlat1.x;
  let x_614 : f32 = u_xlat10;
  u_xlat1.x = ((x_613 * x_614) + 1.0f);
  let x_618 : f32 = u_xlat16;
  u_xlat16 = (x_618 * 0.318309873f);
  let x_622 : f32 = u_xlat1.x;
  let x_624 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_622 * x_624) + 0.0000001f);
  let x_629 : f32 = u_xlat16;
  let x_631 : f32 = u_xlat1.x;
  u_xlat16 = (x_629 / x_631);
  let x_633 : f32 = u_xlat16;
  let x_634 : f32 = u_xlat24;
  u_xlat8.y = (x_633 * x_634);
  let x_637 : vec3<f32> = u_xlat2;
  let x_639 : vec3<f32> = u_xlat8;
  let x_641 : vec2<f32> = (vec2<f32>(x_637.x, x_637.x) * vec2<f32>(x_639.x, x_639.y));
  let x_642 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_641.x, x_641.y, x_642.z);
  let x_645 : f32 = u_xlat8.y;
  u_xlat16 = (x_645 * 3.141592741f);
  let x_648 : f32 = u_xlat16;
  u_xlat16 = max(x_648, 0.0f);
  let x_650 : vec4<f32> = u_xlat3;
  let x_652 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_650.x, x_650.y, x_650.z), vec3<f32>(x_652.x, x_652.y, x_652.z));
  let x_656 : f32 = u_xlat24;
  u_xlatb24 = !((x_656 == 0.0f));
  let x_658 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_658);
  let x_660 : f32 = u_xlat24;
  let x_661 : f32 = u_xlat16;
  u_xlat16 = (x_660 * x_661);
  let x_663 : vec3<f32> = u_xlat8;
  let x_665 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_663.x, x_663.x, x_663.x) * x_665);
  let x_667 : vec3<f32> = u_xlat6;
  let x_668 : f32 = u_xlat16;
  u_xlat8 = (x_667 * vec3<f32>(x_668, x_668, x_668));
  let x_672 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_672) + 1.0f);
  let x_677 : f32 = u_xlat0.x;
  let x_679 : f32 = u_xlat0.x;
  u_xlat25 = (x_677 * x_679);
  let x_681 : f32 = u_xlat25;
  let x_682 : f32 = u_xlat25;
  u_xlat25 = (x_681 * x_682);
  let x_685 : f32 = u_xlat0.x;
  let x_686 : f32 = u_xlat25;
  u_xlat0.x = (x_685 * x_686);
  let x_689 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_689.x, x_689.y, x_689.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_694 : vec3<f32> = u_xlat2;
  let x_695 : vec3<f32> = u_xlat0;
  let x_698 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_694 * vec3<f32>(x_695.x, x_695.x, x_695.x)) + vec3<f32>(x_698.x, x_698.y, x_698.z));
  let x_701 : vec3<f32> = u_xlat8;
  let x_702 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_701 * x_702);
  let x_706 : vec3<f32> = u_xlat4;
  let x_707 : vec3<f32> = u_xlat1;
  let x_709 : vec3<f32> = u_xlat0;
  let x_710 : vec3<f32> = ((x_706 * x_707) + x_709);
  let x_711 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_710.x, x_710.y, x_710.z, x_711.w);
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

