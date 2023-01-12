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

@group(0) @binding(1) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(6) var sampler_LightTextureB0 : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(5) var sampler_LightTexture0 : sampler;

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
  var u_xlat3 : vec3<f32>;
  var u_xlat23 : f32;
  var u_xlatb22 : bool;
  var u_xlat4 : vec4<f32>;
  var x_208 : vec3<f32>;
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
  let x_69 : f32 = u_xlat22;
  let x_75 : vec2<f32> = vs_TEXCOORD0;
  let x_76 : vec2<f32> = (-(vec2<f32>(x_69, x_69)) + x_75);
  let x_77 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_76.x, x_76.y, x_77.z);
  let x_89 : vec3<f32> = u_xlat3;
  let x_91 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, vec2<f32>(x_89.x, x_89.y));
  u_xlat22 = x_91.x;
  let x_99 : vec2<f32> = vs_TEXCOORD0;
  let x_100 : vec4<f32> = textureSample(x_Gradient, sampler_Gradient, x_99);
  u_xlat23 = x_100.z;
  let x_103 : f32 = u_xlat22;
  u_xlat22 = ((x_103 * -2.0f) + 1.0f);
  let x_107 : f32 = u_xlat23;
  let x_109 : f32 = u_xlat22;
  u_xlat22 = (-(x_107) + x_109);
  let x_114 : f32 = u_xlat22;
  u_xlatb22 = (x_114 < 0.0f);
  let x_116 : bool = u_xlatb22;
  if (((select(0i, 1i, x_116) * -1i) != 0i)) {
    discard;
  }
  let x_125 : vec3<f32> = vs_TEXCOORD2;
  let x_129 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat3 = (vec3<f32>(x_125.y, x_125.y, x_125.y) * vec3<f32>(x_129.x, x_129.y, x_129.z));
  let x_133 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_135 : vec3<f32> = vs_TEXCOORD2;
  let x_138 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_133.x, x_133.y, x_133.z) * vec3<f32>(x_135.x, x_135.x, x_135.x)) + x_138);
  let x_141 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_143 : vec3<f32> = vs_TEXCOORD2;
  let x_146 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.z, x_143.z, x_143.z)) + x_146);
  let x_148 : vec3<f32> = u_xlat3;
  let x_151 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat3 = (x_148 + vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_157 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_157 == 1.0f);
  let x_159 : bool = u_xlatb22;
  if (x_159) {
    let x_164 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_164 == 1.0f);
    let x_168 : vec3<f32> = vs_TEXCOORD2;
    let x_172 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_174 : vec3<f32> = (vec3<f32>(x_168.y, x_168.y, x_168.y) * vec3<f32>(x_172.x, x_172.y, x_172.z));
    let x_175 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
    let x_178 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_180 : vec3<f32> = vs_TEXCOORD2;
    let x_183 : vec4<f32> = u_xlat4;
    let x_185 : vec3<f32> = ((vec3<f32>(x_178.x, x_178.y, x_178.z) * vec3<f32>(x_180.x, x_180.x, x_180.x)) + vec3<f32>(x_183.x, x_183.y, x_183.z));
    let x_186 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
    let x_189 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_191 : vec3<f32> = vs_TEXCOORD2;
    let x_194 : vec4<f32> = u_xlat4;
    let x_196 : vec3<f32> = ((vec3<f32>(x_189.x, x_189.y, x_189.z) * vec3<f32>(x_191.z, x_191.z, x_191.z)) + vec3<f32>(x_194.x, x_194.y, x_194.z));
    let x_197 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_196.x, x_196.y, x_196.z, x_197.w);
    let x_199 : vec4<f32> = u_xlat4;
    let x_202 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_204 : vec3<f32> = (vec3<f32>(x_199.x, x_199.y, x_199.z) + vec3<f32>(x_202.x, x_202.y, x_202.z));
    let x_205 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_207 : bool = u_xlatb22;
    if (x_207) {
      let x_211 : vec4<f32> = u_xlat4;
      x_208 = vec3<f32>(x_211.x, x_211.y, x_211.z);
    } else {
      let x_214 : vec3<f32> = vs_TEXCOORD2;
      x_208 = x_214;
    }
    let x_215 : vec3<f32> = x_208;
    let x_216 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
    let x_218 : vec4<f32> = u_xlat4;
    let x_222 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_224 : vec3<f32> = (vec3<f32>(x_218.x, x_218.y, x_218.z) + -(x_222));
    let x_225 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_224.x, x_224.y, x_224.z, x_225.w);
    let x_227 : vec4<f32> = u_xlat4;
    let x_231 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_232 : vec3<f32> = (vec3<f32>(x_227.x, x_227.y, x_227.z) * x_231);
    let x_233 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_233.x, x_232.x, x_232.y, x_232.z);
    let x_236 : f32 = u_xlat4.y;
    u_xlat22 = ((x_236 * 0.25f) + 0.75f);
    let x_242 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_242 * 0.5f) + 0.75f);
    let x_246 : f32 = u_xlat22;
    let x_247 : f32 = u_xlat23;
    u_xlat4.x = max(x_246, x_247);
    let x_258 : vec4<f32> = u_xlat4;
    let x_260 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_258.x, x_258.z, x_258.w));
    u_xlat4 = x_260;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_267 : vec4<f32> = u_xlat4;
  let x_269 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_267, x_269);
  let x_271 : f32 = u_xlat22;
  u_xlat22 = clamp(x_271, 0.0f, 1.0f);
  let x_273 : vec3<f32> = u_xlat3;
  let x_274 : vec3<f32> = u_xlat3;
  u_xlat23 = dot(x_273, x_274);
  let x_281 : f32 = u_xlat23;
  let x_283 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_281, x_281));
  u_xlat23 = x_283.x;
  let x_293 : vec3<f32> = u_xlat3;
  let x_294 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, x_293);
  u_xlat3.x = x_294.w;
  let x_297 : f32 = u_xlat23;
  let x_299 : f32 = u_xlat3.x;
  u_xlat23 = (x_297 * x_299);
  let x_301 : f32 = u_xlat22;
  let x_302 : f32 = u_xlat23;
  u_xlat22 = (x_301 * x_302);
  let x_304 : f32 = u_xlat22;
  let x_308 : vec4<f32> = x_18.x_LightColor0;
  u_xlat3 = (vec3<f32>(x_304, x_304, x_304) * vec3<f32>(x_308.x, x_308.y, x_308.z));
  let x_312 : vec3<f32> = vs_TEXCOORD1;
  let x_313 : vec3<f32> = vs_TEXCOORD1;
  u_xlat22 = dot(x_312, x_313);
  let x_315 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_315);
  let x_317 : f32 = u_xlat22;
  let x_319 : vec3<f32> = vs_TEXCOORD1;
  let x_320 : vec3<f32> = (vec3<f32>(x_317, x_317, x_317) * x_319);
  let x_321 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_320.x, x_320.y, x_320.z, x_321.w);
  let x_326 : vec4<f32> = x_18.x_Color;
  u_xlat5 = (vec3<f32>(x_326.x, x_326.y, x_326.z) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_333 : f32 = x_18.x_Metallic;
  let x_335 : f32 = x_18.x_Metallic;
  let x_337 : f32 = x_18.x_Metallic;
  let x_338 : vec3<f32> = vec3<f32>(x_333, x_335, x_337);
  let x_343 : vec3<f32> = u_xlat5;
  u_xlat5 = ((vec3<f32>(x_338.x, x_338.y, x_338.z) * x_343) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_349 : f32 = x_18.x_Metallic;
  u_xlat22 = ((-(x_349) * 0.959999979f) + 0.959999979f);
  let x_355 : f32 = u_xlat22;
  let x_358 : vec4<f32> = x_18.x_Color;
  u_xlat6 = (vec3<f32>(x_355, x_355, x_355) * vec3<f32>(x_358.x, x_358.y, x_358.z));
  let x_363 : f32 = x_18.x_Glossiness;
  u_xlat22 = (-(x_363) + 1.0f);
  let x_366 : vec3<f32> = u_xlat0;
  let x_367 : f32 = u_xlat21;
  let x_370 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_366 * vec3<f32>(x_367, x_367, x_367)) + x_370);
  let x_372 : vec3<f32> = u_xlat0;
  let x_373 : vec3<f32> = u_xlat0;
  u_xlat21 = dot(x_372, x_373);
  let x_375 : f32 = u_xlat21;
  u_xlat21 = max(x_375, 0.001f);
  let x_378 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_378);
  let x_380 : f32 = u_xlat21;
  let x_382 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_380, x_380, x_380) * x_382);
  let x_384 : vec4<f32> = u_xlat4;
  let x_386 : vec3<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), x_386);
  let x_388 : vec4<f32> = u_xlat4;
  let x_390 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_388.x, x_388.y, x_388.z), x_390);
  let x_394 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_394, 0.0f, 1.0f);
  let x_398 : vec4<f32> = u_xlat4;
  let x_400 : vec3<f32> = u_xlat0;
  u_xlat9 = dot(vec3<f32>(x_398.x, x_398.y, x_398.z), x_400);
  let x_402 : f32 = u_xlat9;
  u_xlat9 = clamp(x_402, 0.0f, 1.0f);
  let x_404 : vec3<f32> = u_xlat1;
  let x_405 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_404, x_405);
  let x_409 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_409, 0.0f, 1.0f);
  let x_414 : f32 = u_xlat0.x;
  let x_416 : f32 = u_xlat0.x;
  u_xlat7.x = (x_414 * x_416);
  let x_419 : vec3<f32> = u_xlat7;
  let x_421 : f32 = u_xlat22;
  u_xlat7.x = dot(vec2<f32>(x_419.x, x_419.x), vec2<f32>(x_421, x_421));
  let x_426 : f32 = u_xlat7.x;
  u_xlat7.x = (x_426 + -0.5f);
  let x_432 : f32 = u_xlat2.x;
  u_xlat14 = (-(x_432) + 1.0f);
  let x_435 : f32 = u_xlat14;
  let x_436 : f32 = u_xlat14;
  u_xlat1.x = (x_435 * x_436);
  let x_440 : f32 = u_xlat1.x;
  let x_442 : f32 = u_xlat1.x;
  u_xlat1.x = (x_440 * x_442);
  let x_445 : f32 = u_xlat14;
  let x_447 : f32 = u_xlat1.x;
  u_xlat14 = (x_445 * x_447);
  let x_450 : f32 = u_xlat7.x;
  let x_451 : f32 = u_xlat14;
  u_xlat14 = ((x_450 * x_451) + 1.0f);
  let x_454 : f32 = u_xlat21;
  u_xlat1.x = (-(abs(x_454)) + 1.0f);
  let x_461 : f32 = u_xlat1.x;
  let x_463 : f32 = u_xlat1.x;
  u_xlat8 = (x_461 * x_463);
  let x_465 : f32 = u_xlat8;
  let x_466 : f32 = u_xlat8;
  u_xlat8 = (x_465 * x_466);
  let x_469 : f32 = u_xlat1.x;
  let x_470 : f32 = u_xlat8;
  u_xlat1.x = (x_469 * x_470);
  let x_474 : f32 = u_xlat7.x;
  let x_476 : f32 = u_xlat1.x;
  u_xlat7.x = ((x_474 * x_476) + 1.0f);
  let x_481 : f32 = u_xlat7.x;
  let x_482 : f32 = u_xlat14;
  u_xlat7.x = (x_481 * x_482);
  let x_485 : f32 = u_xlat22;
  let x_486 : f32 = u_xlat22;
  u_xlat14 = (x_485 * x_486);
  let x_488 : f32 = u_xlat14;
  u_xlat14 = max(x_488, 0.002f);
  let x_491 : f32 = u_xlat14;
  u_xlat1.x = (-(x_491) + 1.0f);
  let x_495 : f32 = u_xlat21;
  let x_498 : f32 = u_xlat1.x;
  let x_500 : f32 = u_xlat14;
  u_xlat8 = ((abs(x_495) * x_498) + x_500);
  let x_503 : f32 = u_xlat2.x;
  let x_505 : f32 = u_xlat1.x;
  let x_507 : f32 = u_xlat14;
  u_xlat1.x = ((x_503 * x_505) + x_507);
  let x_510 : f32 = u_xlat21;
  let x_513 : f32 = u_xlat1.x;
  u_xlat21 = (abs(x_510) * x_513);
  let x_516 : f32 = u_xlat2.x;
  let x_517 : f32 = u_xlat8;
  let x_519 : f32 = u_xlat21;
  u_xlat21 = ((x_516 * x_517) + x_519);
  let x_521 : f32 = u_xlat21;
  u_xlat21 = (x_521 + 0.00001f);
  let x_524 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_524);
  let x_526 : f32 = u_xlat14;
  let x_527 : f32 = u_xlat14;
  u_xlat14 = (x_526 * x_527);
  let x_529 : f32 = u_xlat9;
  let x_530 : f32 = u_xlat14;
  let x_532 : f32 = u_xlat9;
  u_xlat1.x = ((x_529 * x_530) + -(x_532));
  let x_537 : f32 = u_xlat1.x;
  let x_538 : f32 = u_xlat9;
  u_xlat1.x = ((x_537 * x_538) + 1.0f);
  let x_542 : f32 = u_xlat14;
  u_xlat14 = (x_542 * 0.318309873f);
  let x_546 : f32 = u_xlat1.x;
  let x_548 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_546 * x_548) + 0.0000001f);
  let x_553 : f32 = u_xlat14;
  let x_555 : f32 = u_xlat1.x;
  u_xlat14 = (x_553 / x_555);
  let x_557 : f32 = u_xlat14;
  let x_558 : f32 = u_xlat21;
  u_xlat7.y = (x_557 * x_558);
  let x_561 : vec3<f32> = u_xlat2;
  let x_563 : vec3<f32> = u_xlat7;
  let x_565 : vec2<f32> = (vec2<f32>(x_561.x, x_561.x) * vec2<f32>(x_563.x, x_563.y));
  let x_566 : vec3<f32> = u_xlat7;
  u_xlat7 = vec3<f32>(x_565.x, x_565.y, x_566.z);
  let x_569 : f32 = u_xlat7.y;
  u_xlat14 = (x_569 * 3.141592741f);
  let x_572 : f32 = u_xlat14;
  u_xlat14 = max(x_572, 0.0f);
  let x_574 : vec3<f32> = u_xlat5;
  let x_575 : vec3<f32> = u_xlat5;
  u_xlat21 = dot(x_574, x_575);
  let x_578 : f32 = u_xlat21;
  u_xlatb21 = !((x_578 == 0.0f));
  let x_580 : bool = u_xlatb21;
  u_xlat21 = select(0.0f, 1.0f, x_580);
  let x_582 : f32 = u_xlat21;
  let x_583 : f32 = u_xlat14;
  u_xlat14 = (x_582 * x_583);
  let x_585 : vec3<f32> = u_xlat7;
  let x_587 : vec3<f32> = u_xlat3;
  u_xlat1 = (vec3<f32>(x_585.x, x_585.x, x_585.x) * x_587);
  let x_589 : vec3<f32> = u_xlat3;
  let x_590 : f32 = u_xlat14;
  u_xlat7 = (x_589 * vec3<f32>(x_590, x_590, x_590));
  let x_594 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_594) + 1.0f);
  let x_599 : f32 = u_xlat0.x;
  let x_601 : f32 = u_xlat0.x;
  u_xlat22 = (x_599 * x_601);
  let x_603 : f32 = u_xlat22;
  let x_604 : f32 = u_xlat22;
  u_xlat22 = (x_603 * x_604);
  let x_607 : f32 = u_xlat0.x;
  let x_608 : f32 = u_xlat22;
  u_xlat0.x = (x_607 * x_608);
  let x_611 : vec3<f32> = u_xlat5;
  u_xlat2 = (-(x_611) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_615 : vec3<f32> = u_xlat2;
  let x_616 : vec3<f32> = u_xlat0;
  let x_619 : vec3<f32> = u_xlat5;
  u_xlat2 = ((x_615 * vec3<f32>(x_616.x, x_616.x, x_616.x)) + x_619);
  let x_621 : vec3<f32> = u_xlat7;
  let x_622 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_621 * x_622);
  let x_624 : vec3<f32> = u_xlat6;
  let x_625 : vec3<f32> = u_xlat1;
  let x_627 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_624 * x_625) + x_627);
  let x_630 : f32 = vs_TEXCOORD6;
  let x_632 : f32 = x_18.x_ProjectionParams.y;
  u_xlat21 = (x_630 / x_632);
  let x_634 : f32 = u_xlat21;
  u_xlat21 = (-(x_634) + 1.0f);
  let x_637 : f32 = u_xlat21;
  let x_639 : f32 = x_18.x_ProjectionParams.z;
  u_xlat21 = (x_637 * x_639);
  let x_641 : f32 = u_xlat21;
  u_xlat21 = max(x_641, 0.0f);
  let x_643 : f32 = u_xlat21;
  let x_646 : f32 = x_18.unity_FogParams.x;
  u_xlat21 = (x_643 * x_646);
  let x_648 : f32 = u_xlat21;
  let x_649 : f32 = u_xlat21;
  u_xlat21 = (x_648 * -(x_649));
  let x_652 : f32 = u_xlat21;
  u_xlat21 = exp2(x_652);
  let x_656 : vec3<f32> = u_xlat0;
  let x_657 : f32 = u_xlat21;
  let x_659 : vec3<f32> = (x_656 * vec3<f32>(x_657, x_657, x_657));
  let x_660 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_659.x, x_659.y, x_659.z, x_660.w);
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

