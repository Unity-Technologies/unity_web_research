struct PGlobals {
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
}

var<private> vs_TEXCOORD2 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

var<private> vs_TEXCOORD3 : f32;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(0) var x_Gradient : texture_2d<f32>;

@group(0) @binding(7) var sampler_Gradient : sampler;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(1) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

@group(0) @binding(2) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD1 : vec3<f32>;

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat23 : f32;
  var u_xlatb22 : bool;
  var u_xlat4 : vec4<f32>;
  var x_204 : vec3<f32>;
  var u_xlatb23 : bool;
  var u_xlat24 : f32;
  var u_xlat5 : vec3<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat9 : f32;
  var u_xlat7 : vec3<f32>;
  var u_xlat14 : f32;
  var u_xlat8 : f32;
  var u_xlatb21 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec3<f32> = vs_TEXCOORD2;
  let x_23 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat0 = (-(x_12) + vec3<f32>(x_23.x, x_23.y, x_23.z));
  let x_28 : vec3<f32> = u_xlat0;
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_28, x_29);
  let x_31 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_31);
  let x_34 : f32 = u_xlat21;
  let x_36 : vec3<f32> = u_xlat0;
  u_xlat1 = (vec3<f32>(x_34, x_34, x_34) * x_36);
  let x_39 : vec3<f32> = vs_TEXCOORD2;
  let x_44 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  u_xlat2 = (-(x_39) + x_44);
  let x_47 : vec3<f32> = u_xlat2;
  let x_48 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(x_47, x_48);
  let x_50 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_50);
  let x_52 : f32 = u_xlat22;
  let x_54 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_58 : f32 = vs_TEXCOORD3;
  u_xlat22 = (x_58 + -1.0f);
  let x_61 : f32 = u_xlat22;
  u_xlat22 = (x_61 * -9.999998093f);
  let x_64 : f32 = u_xlat22;
  u_xlat22 = clamp(x_64, 0.0f, 1.0f);
  let x_70 : f32 = u_xlat22;
  let x_76 : vec2<f32> = vs_TEXCOORD0;
  let x_77 : vec2<f32> = (-(vec2<f32>(x_70, x_70)) + x_76);
  let x_78 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_77.x, x_77.y, x_78.z, x_78.w);
  let x_90 : vec4<f32> = u_xlat3;
  let x_92 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_90.x, x_90.y));
  u_xlat22 = x_92.x;
  let x_100 : vec2<f32> = vs_TEXCOORD0;
  let x_101 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_100);
  u_xlat23 = x_101.z;
  let x_104 : f32 = u_xlat22;
  u_xlat22 = ((x_104 * -2.0f) + 1.0f);
  let x_108 : f32 = u_xlat23;
  let x_110 : f32 = u_xlat22;
  u_xlat22 = (-(x_108) + x_110);
  let x_115 : f32 = u_xlat22;
  u_xlatb22 = (x_115 < 0.0f);
  let x_117 : bool = u_xlatb22;
  if (((select(0i, 1i, x_117) * -1i) != 0i)) {
    discard;
  }
  let x_126 : vec3<f32> = vs_TEXCOORD2;
  let x_130 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat3 = (vec4<f32>(x_126.y, x_126.y, x_126.y, x_126.y) * x_130);
  let x_133 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_134 : vec3<f32> = vs_TEXCOORD2;
  let x_137 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_133 * vec4<f32>(x_134.x, x_134.x, x_134.x, x_134.x)) + x_137);
  let x_140 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_141 : vec3<f32> = vs_TEXCOORD2;
  let x_144 : vec4<f32> = u_xlat3;
  u_xlat3 = ((x_140 * vec4<f32>(x_141.z, x_141.z, x_141.z, x_141.z)) + x_144);
  let x_146 : vec4<f32> = u_xlat3;
  let x_149 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat3 = (x_146 + x_149);
  let x_154 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_154 == 1.0f);
  let x_156 : bool = u_xlatb22;
  if (x_156) {
    let x_161 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_161 == 1.0f);
    let x_164 : vec3<f32> = vs_TEXCOORD2;
    let x_168 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_170 : vec3<f32> = (vec3<f32>(x_164.y, x_164.y, x_164.y) * vec3<f32>(x_168.x, x_168.y, x_168.z));
    let x_171 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
    let x_174 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_176 : vec3<f32> = vs_TEXCOORD2;
    let x_179 : vec4<f32> = u_xlat4;
    let x_181 : vec3<f32> = ((vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_176.x, x_176.x, x_176.x)) + vec3<f32>(x_179.x, x_179.y, x_179.z));
    let x_182 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_181.x, x_181.y, x_181.z, x_182.w);
    let x_185 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_187 : vec3<f32> = vs_TEXCOORD2;
    let x_190 : vec4<f32> = u_xlat4;
    let x_192 : vec3<f32> = ((vec3<f32>(x_185.x, x_185.y, x_185.z) * vec3<f32>(x_187.z, x_187.z, x_187.z)) + vec3<f32>(x_190.x, x_190.y, x_190.z));
    let x_193 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_192.x, x_192.y, x_192.z, x_193.w);
    let x_195 : vec4<f32> = u_xlat4;
    let x_198 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_200 : vec3<f32> = (vec3<f32>(x_195.x, x_195.y, x_195.z) + vec3<f32>(x_198.x, x_198.y, x_198.z));
    let x_201 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
    let x_203 : bool = u_xlatb22;
    if (x_203) {
      let x_207 : vec4<f32> = u_xlat4;
      x_204 = vec3<f32>(x_207.x, x_207.y, x_207.z);
    } else {
      let x_210 : vec3<f32> = vs_TEXCOORD2;
      x_204 = x_210;
    }
    let x_211 : vec3<f32> = x_204;
    let x_212 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_211.x, x_211.y, x_211.z, x_212.w);
    let x_214 : vec4<f32> = u_xlat4;
    let x_218 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_220 : vec3<f32> = (vec3<f32>(x_214.x, x_214.y, x_214.z) + -(x_218));
    let x_221 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
    let x_223 : vec4<f32> = u_xlat4;
    let x_227 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_228 : vec3<f32> = (vec3<f32>(x_223.x, x_223.y, x_223.z) * x_227);
    let x_229 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_229.x, x_228.x, x_228.y, x_228.z);
    let x_232 : f32 = u_xlat4.y;
    u_xlat22 = ((x_232 * 0.25f) + 0.75f);
    let x_238 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_238 * 0.5f) + 0.75f);
    let x_242 : f32 = u_xlat22;
    let x_243 : f32 = u_xlat23;
    u_xlat4.x = max(x_242, x_243);
    let x_254 : vec4<f32> = u_xlat4;
    let x_256 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_254.x, x_254.z, x_254.w));
    u_xlat4 = x_256;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_263 : vec4<f32> = u_xlat4;
  let x_265 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_263, x_265);
  let x_267 : f32 = u_xlat22;
  u_xlat22 = clamp(x_267, 0.0f, 1.0f);
  let x_271 : f32 = u_xlat3.z;
  u_xlatb23 = (0.0f < x_271);
  let x_273 : bool = u_xlatb23;
  u_xlat23 = select(0.0f, 1.0f, x_273);
  let x_275 : vec4<f32> = u_xlat3;
  let x_277 : vec4<f32> = u_xlat3;
  let x_279 : vec2<f32> = (vec2<f32>(x_275.x, x_275.y) / vec2<f32>(x_277.w, x_277.w));
  let x_280 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_279.x, x_279.y, x_280.z, x_280.w);
  let x_282 : vec4<f32> = u_xlat4;
  let x_285 : vec2<f32> = (vec2<f32>(x_282.x, x_282.y) + vec2<f32>(0.5f, 0.5f));
  let x_286 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_285.x, x_285.y, x_286.z, x_286.w);
  let x_294 : vec4<f32> = u_xlat4;
  let x_296 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_294.x, x_294.y));
  u_xlat24 = x_296.w;
  let x_298 : f32 = u_xlat23;
  let x_299 : f32 = u_xlat24;
  u_xlat23 = (x_298 * x_299);
  let x_301 : vec4<f32> = u_xlat3;
  let x_303 : vec4<f32> = u_xlat3;
  u_xlat3.x = dot(vec3<f32>(x_301.x, x_301.y, x_301.z), vec3<f32>(x_303.x, x_303.y, x_303.z));
  let x_312 : vec4<f32> = u_xlat3;
  let x_314 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_312.x, x_312.x));
  u_xlat3.x = x_314.x;
  let x_317 : f32 = u_xlat23;
  let x_319 : f32 = u_xlat3.x;
  u_xlat23 = (x_317 * x_319);
  let x_321 : f32 = u_xlat22;
  let x_322 : f32 = u_xlat23;
  u_xlat22 = (x_321 * x_322);
  let x_324 : f32 = u_xlat22;
  let x_328 : vec4<f32> = x_18.x_LightColor0;
  let x_330 : vec3<f32> = (vec3<f32>(x_324, x_324, x_324) * vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_331 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_330.x, x_330.y, x_330.z, x_331.w);
  let x_334 : vec3<f32> = vs_TEXCOORD1;
  let x_335 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_334, x_335);
  let x_337 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_337);
  let x_339 : f32 = u_xlat22;
  let x_341 : vec3<f32> = vs_TEXCOORD1;
  let x_342 : vec3<f32> = (vec3<f32>(x_339, x_339, x_339) * x_341);
  let x_343 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_342.x, x_342.y, x_342.z, x_343.w);
  let x_348 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_348.x, x_348.y, x_348.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_355 : f32 = x_18.x_Metallic;
  let x_357 : f32 = x_18.x_Metallic;
  let x_359 : f32 = x_18.x_Metallic;
  let x_360 : vec3<f32> = vec3<f32>(x_355, x_357, x_359);
  let x_365 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_360.x, x_360.y, x_360.z) * x_365) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_371 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_371) * 0.959999979f) + 0.959999979f);
  let x_377 : f32 = u_xlat22;
  let x_380 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (vec3<f32>(x_377, x_377, x_377) * vec3<f32>(x_380.x, x_380.y, x_380.z));
  let x_385 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_385) + 1.0f);
  let x_388 : vec3<f32> = u_xlat0;
  let x_389 : f32 = u_xlat21;
  let x_392 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_388 * vec3<f32>(x_389, x_389, x_389)) + x_392);
  let x_394 : vec3<f32> = u_xlat0;
  let x_395 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_394, x_395);
  let x_397 : f32 = u_xlat21;
  u_xlat21 = max(x_397, 0.001f);
  let x_400 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_400);
  let x_402 : f32 = u_xlat21;
  let x_404 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_402, x_402, x_402) * x_404);
  let x_406 : vec4<f32> = u_xlat4;
  let x_408 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_406.x, x_406.y, x_406.z), x_408);
  let x_410 : vec4<f32> = u_xlat4;
  let x_412 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_410.x, x_410.y, x_410.z), x_412);
  let x_416 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_416, 0.0f, 1.0f);
  let x_420 : vec4<f32> = u_xlat4;
  let x_422 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_420.x, x_420.y, x_420.z), x_422);
  let x_424 : f32 = u_xlat9;
  u_xlat9 = clamp(x_424, 0.0f, 1.0f);
  let x_426 : vec3<f32> = u_xlat1;
  let x_427 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_426, x_427);
  let x_431 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_431, 0.0f, 1.0f);
  let x_436 : f32 = u_xlat0.x;
  let x_438 : f32 = u_xlat0.x;
  u_xlat7.x = (x_436 * x_438);
  let x_441 : vec3<f32> = u_xlat7;
  let x_443 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_441.x, x_441.x), vec2<f32>(x_443, x_443));
  let x_448 : f32 = u_xlat7.x;
  u_xlat7.x = (x_448 + -0.5f);
  let x_454 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_454) + 1.0f);
  let x_457 : f32 = u_xlat14;
  let x_458 : f32 = u_xlat14;
  u_xlat1.x = (x_457 * x_458);
  let x_462 : f32 = u_xlat1.x;
  let x_464 : f32 = u_xlat1.x;
  u_xlat1.x = (x_462 * x_464);
  let x_467 : f32 = u_xlat14;
  let x_469 : f32 = u_xlat1.x;
  u_xlat14 = (x_467 * x_469);
  let x_472 : f32 = u_xlat7.x;
  let x_473 : f32 = u_xlat14;
  u_xlat14 = ((x_472 * x_473) + 1.0f);
  let x_476 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_476)) + 1.0f);
  let x_483 : f32 = u_xlat1.x;
  let x_485 : f32 = u_xlat1.x;
  u_xlat8 = (x_483 * x_485);
  let x_487 : f32 = u_xlat8;
  let x_488 : f32 = u_xlat8;
  u_xlat8 = (x_487 * x_488);
  let x_491 : f32 = u_xlat1.x;
  let x_492 : f32 = u_xlat8;
  u_xlat1.x = (x_491 * x_492);
  let x_496 : f32 = u_xlat7.x;
  let x_498 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_496 * x_498) + 1.0f);
  let x_503 : f32 = u_xlat7.x;
  let x_504 : f32 = u_xlat14;
  u_xlat7.x = (x_503 * x_504);
  let x_507 : f32 = u_xlat22;
  let x_508 : f32 = u_xlat22;
  u_xlat14 = (x_507 * x_508);
  let x_510 : f32 = u_xlat14;
  u_xlat14 = max(x_510, 0.002f);
  let x_513 : f32 = u_xlat14;
  u_xlat1.x = (-(x_513) + 1.0f);
  let x_517 : f32 = u_xlat21;
  let x_520 : f32 = u_xlat1.x;
  let x_522 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_517) * x_520) + x_522);
  let x_525 : f32 = u_xlat2.x;
  let x_527 : f32 = u_xlat1.x;
  let x_529 : f32 = u_xlat14;
  u_xlat1.x = ((x_525 * x_527) + x_529);
  let x_532 : f32 = u_xlat21;
  let x_535 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_532) * x_535);
  let x_538 : f32 = u_xlat2.x;
  let x_539 : f32 = u_xlat8;
  let x_541 : f32 = u_xlat21;
  u_xlat21 = ((x_538 * x_539) + x_541);
  let x_543 : f32 = u_xlat21;
  u_xlat21 = (x_543 + 0.00001f);
  let x_546 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_546);
  let x_548 : f32 = u_xlat14;
  let x_549 : f32 = u_xlat14;
  u_xlat14 = (x_548 * x_549);
  let x_551 : f32 = u_xlat9;
  let x_552 : f32 = u_xlat14;
  let x_554 : f32 = u_xlat9;
  u_xlat1.x = ((x_551 * x_552) + -(x_554));
  let x_559 : f32 = u_xlat1.x;
  let x_560 : f32 = u_xlat9;
  u_xlat1.x = ((x_559 * x_560) + 1.0f);
  let x_564 : f32 = u_xlat14;
  u_xlat14 = (x_564 * 0.318309873f);
  let x_568 : f32 = u_xlat1.x;
  let x_570 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_568 * x_570) + 0.0000001f);
  let x_575 : f32 = u_xlat14;
  let x_577 : f32 = u_xlat1.x;
  u_xlat14 = (x_575 / x_577);
  let x_579 : f32 = u_xlat14;
  let x_580 : f32 = u_xlat21;
  u_xlat7.y = (x_579 * x_580);
  let x_583 : vec3<f32> = u_xlat2;
  let x_585 : vec3<f32> = u_xlat7;
  let x_587 : vec2<f32> = (vec2<f32>(x_583.x, x_583.x) * vec2<f32>(x_585.x, x_585.y));
  let x_588 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_587.x, x_587.y, x_588.z);
  let x_591 : f32 = u_xlat7.y;
  u_xlat14 = (x_591 * 3.141592741f);
  let x_594 : f32 = u_xlat14;
  u_xlat14 = max(x_594, 0.0f);
  let x_596 : vec3<f32> = u_xlat5;
  let x_597 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(x_596, x_597);
  let x_600 : f32 = u_xlat21;
  u_xlatb21 = !((x_600 == 0.0f));
  let x_602 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_602);
  let x_604 : f32 = u_xlat21;
  let x_605 : f32 = u_xlat14;
  u_xlat14 = (x_604 * x_605);
  let x_607 : vec3<f32> = u_xlat7;
  let x_609 : vec4<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_607.x, x_607.x, x_607.x) * vec3<f32>(x_609.x, x_609.y, x_609.z));
  let x_612 : vec4<f32> = u_xlat3;
  let x_614 : f32 = u_xlat14;
  u_xlat7 = (vec3<f32>(x_612.x, x_612.y, x_612.z) * vec3<f32>(x_614, x_614, x_614));
  let x_618 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_618) + 1.0f);
  let x_623 : f32 = u_xlat0.x;
  let x_625 : f32 = u_xlat0.x;
  u_xlat22 = (x_623 * x_625);
  let x_627 : f32 = u_xlat22;
  let x_628 : f32 = u_xlat22;
  u_xlat22 = (x_627 * x_628);
  let x_631 : f32 = u_xlat0.x;
  let x_632 : f32 = u_xlat22;
  u_xlat0.x = (x_631 * x_632);
  let x_635 : vec3<f32> = u_xlat5;
  u_xlat2 = (-(x_635) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_639 : vec3<f32> = u_xlat2;
  let x_640 : vec3<f32> = u_xlat0;
  let x_643 : vec3<f32> = u_xlat5;
  u_xlat2 = ((x_639 * vec3<f32>(x_640.x, x_640.x, x_640.x)) + x_643);
  let x_645 : vec3<f32> = u_xlat7;
  let x_646 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_645 * x_646);
  let x_648 : vec3<f32> = u_xlat6;
  let x_649 : vec3<f32> = u_xlat1;
  let x_651 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_648 * x_649) + x_651);
  let x_654 : f32 = vs_TEXCOORD6;
  let x_656 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_654 / x_656);
  let x_658 : f32 = u_xlat21;
  u_xlat21 = (-(x_658) + 1.0f);
  let x_661 : f32 = u_xlat21;
  let x_663 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_661 * x_663);
  let x_665 : f32 = u_xlat21;
  u_xlat21 = max(x_665, 0.0f);
  let x_667 : f32 = u_xlat21;
  let x_670 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_667 * x_670);
  let x_672 : f32 = u_xlat21;
  let x_673 : f32 = u_xlat21;
  u_xlat21 = (x_672 * -(x_673));
  let x_676 : f32 = u_xlat21;
  u_xlat21 = exp2(x_676);
  let x_680 : vec3<f32> = u_xlat0;
  let x_681 : f32 = u_xlat21;
  let x_683 : vec3<f32> = (x_680 * vec3<f32>(x_681, x_681, x_681));
  let x_684 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_683.x, x_683.y, x_683.z, x_684.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(4) vs_TEXCOORD2_param : vec3<f32>, @location(1) vs_TEXCOORD3_param : f32, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(3) vs_TEXCOORD1_param : vec3<f32>, @location(2) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

