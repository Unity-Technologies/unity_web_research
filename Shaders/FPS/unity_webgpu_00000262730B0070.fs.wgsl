struct PGlobals {
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_1 : u32,
  x_LightColor0 : vec4<f32>,
  x_Color : vec4<f32>,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(8)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_33 : PGlobals;

var<private> u_xlat21 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> u_xlatb21 : bool;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat22 : f32;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlatb22 : bool;

var<private> u_xlat23 : f32;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat9 : f32;

var<private> u_xlat16 : f32;

var<private> u_xlat10 : f32;

var<private> u_xlat17 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_198 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_24 : vec4<f32> = vs_TEXCOORD0;
  let x_26 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_24.x, x_24.y));
  u_xlat0 = vec3<f32>(x_26.x, x_26.y, x_26.z);
  let x_29 : vec3<f32> = u_xlat0;
  let x_38 : vec4<f32> = x_33.x_Color;
  u_xlat1 = (x_29 * vec3<f32>(x_38.x, x_38.y, x_38.z));
  let x_42 : vec4<f32> = x_33.x_Color;
  let x_44 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_42.x, x_42.y, x_42.z) * x_44) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_52 : f32 = x_33.x_Metallic;
  let x_54 : f32 = x_33.x_Metallic;
  let x_56 : f32 = x_33.x_Metallic;
  let x_57 : vec3<f32> = vec3<f32>(x_52, x_54, x_56);
  let x_62 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_57.x, x_57.y, x_57.z) * x_62) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_70 : f32 = x_33.x_Metallic;
  u_xlat21 = ((-(x_70) * 0.959999979f) + 0.959999979f);
  let x_75 : f32 = u_xlat21;
  let x_77 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_75, x_75, x_75) * x_77);
  let x_80 : vec4<f32> = vs_TEXCOORD4;
  let x_82 : vec4<f32> = vs_TEXCOORD4;
  u_xlat21 = dot(vec3<f32>(x_80.x, x_80.y, x_80.z), vec3<f32>(x_82.x, x_82.y, x_82.z));
  let x_85 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_85);
  let x_89 : f32 = u_xlat21;
  let x_91 : vec4<f32> = vs_TEXCOORD4;
  let x_93 : vec3<f32> = (vec3<f32>(x_89, x_89, x_89) * vec3<f32>(x_91.x, x_91.y, x_91.z));
  let x_94 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_93.x, x_93.y, x_93.z, x_94.w);
  let x_97 : vec4<f32> = vs_TEXCOORD1;
  let x_99 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_97.x, x_97.y, x_97.z), vec3<f32>(x_99.x, x_99.y, x_99.z));
  let x_102 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_102);
  let x_105 : f32 = u_xlat21;
  let x_107 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_105, x_105, x_105) * vec3<f32>(x_107.x, x_107.y, x_107.z));
  let x_113 : vec3<f32> = vs_TEXCOORD5;
  let x_118 : vec4<f32> = x_33.unity_WorldToLight[1i];
  u_xlat4 = (vec4<f32>(x_113.y, x_113.y, x_113.y, x_113.y) * x_118);
  let x_122 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_123 : vec3<f32> = vs_TEXCOORD5;
  let x_126 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_122 * vec4<f32>(x_123.x, x_123.x, x_123.x, x_123.x)) + x_126);
  let x_130 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_131 : vec3<f32> = vs_TEXCOORD5;
  let x_134 : vec4<f32> = u_xlat4;
  u_xlat4 = ((x_130 * vec4<f32>(x_131.z, x_131.z, x_131.z, x_131.z)) + x_134);
  let x_136 : vec4<f32> = u_xlat4;
  let x_139 : vec4<f32> = x_33.unity_WorldToLight[3i];
  u_xlat4 = (x_136 + x_139);
  let x_147 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb21 = (x_147 == 1.0f);
  let x_150 : bool = u_xlatb21;
  if (x_150) {
    let x_155 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb21 = (x_155 == 1.0f);
    let x_158 : vec3<f32> = vs_TEXCOORD5;
    let x_161 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_163 : vec3<f32> = (vec3<f32>(x_158.y, x_158.y, x_158.y) * vec3<f32>(x_161.x, x_161.y, x_161.z));
    let x_164 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
    let x_167 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_169 : vec3<f32> = vs_TEXCOORD5;
    let x_172 : vec4<f32> = u_xlat5;
    let x_174 : vec3<f32> = ((vec3<f32>(x_167.x, x_167.y, x_167.z) * vec3<f32>(x_169.x, x_169.x, x_169.x)) + vec3<f32>(x_172.x, x_172.y, x_172.z));
    let x_175 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_174.x, x_174.y, x_174.z, x_175.w);
    let x_178 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_180 : vec3<f32> = vs_TEXCOORD5;
    let x_183 : vec4<f32> = u_xlat5;
    let x_185 : vec3<f32> = ((vec3<f32>(x_178.x, x_178.y, x_178.z) * vec3<f32>(x_180.z, x_180.z, x_180.z)) + vec3<f32>(x_183.x, x_183.y, x_183.z));
    let x_186 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_185.x, x_185.y, x_185.z, x_186.w);
    let x_188 : vec4<f32> = u_xlat5;
    let x_191 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_193 : vec3<f32> = (vec3<f32>(x_188.x, x_188.y, x_188.z) + vec3<f32>(x_191.x, x_191.y, x_191.z));
    let x_194 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_193.x, x_193.y, x_193.z, x_194.w);
    let x_196 : bool = u_xlatb21;
    if (x_196) {
      let x_201 : vec4<f32> = u_xlat5;
      x_198 = vec3<f32>(x_201.x, x_201.y, x_201.z);
    } else {
      let x_204 : vec3<f32> = vs_TEXCOORD5;
      x_198 = x_204;
    }
    let x_205 : vec3<f32> = x_198;
    let x_206 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_208 : vec4<f32> = u_xlat5;
    let x_213 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_215 : vec3<f32> = (vec3<f32>(x_208.x, x_208.y, x_208.z) + -(x_213));
    let x_216 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
    let x_218 : vec4<f32> = u_xlat5;
    let x_221 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_222 : vec3<f32> = (vec3<f32>(x_218.x, x_218.y, x_218.z) * x_221);
    let x_223 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_223.x, x_222.x, x_222.y, x_222.z);
    let x_226 : f32 = u_xlat5.y;
    u_xlat21 = ((x_226 * 0.25f) + 0.75f);
    let x_234 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat22 = ((x_234 * 0.5f) + 0.75f);
    let x_238 : f32 = u_xlat21;
    let x_239 : f32 = u_xlat22;
    u_xlat5.x = max(x_238, x_239);
    let x_250 : vec4<f32> = u_xlat5;
    let x_252 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_250.x, x_250.z, x_250.w));
    u_xlat5 = x_252;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_259 : vec4<f32> = u_xlat5;
  let x_261 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat21 = dot(x_259, x_261);
  let x_263 : f32 = u_xlat21;
  u_xlat21 = clamp(x_263, 0.0f, 1.0f);
  let x_268 : f32 = u_xlat4.z;
  u_xlatb22 = (0.0f < x_268);
  let x_270 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_270);
  let x_272 : vec4<f32> = u_xlat4;
  let x_274 : vec4<f32> = u_xlat4;
  let x_276 : vec2<f32> = (vec2<f32>(x_272.x, x_272.y) / vec2<f32>(x_274.w, x_274.w));
  let x_277 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_276.x, x_276.y, x_277.z, x_277.w);
  let x_279 : vec4<f32> = u_xlat5;
  let x_282 : vec2<f32> = (vec2<f32>(x_279.x, x_279.y) + vec2<f32>(0.5f, 0.5f));
  let x_283 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_282.x, x_282.y, x_283.z, x_283.w);
  let x_291 : vec4<f32> = u_xlat5;
  let x_293 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_291.x, x_291.y));
  u_xlat23 = x_293.w;
  let x_295 : f32 = u_xlat22;
  let x_296 : f32 = u_xlat23;
  u_xlat22 = (x_295 * x_296);
  let x_298 : vec4<f32> = u_xlat4;
  let x_300 : vec4<f32> = u_xlat4;
  u_xlat23 = dot(vec3<f32>(x_298.x, x_298.y, x_298.z), vec3<f32>(x_300.x, x_300.y, x_300.z));
  let x_308 : f32 = u_xlat23;
  let x_310 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_308, x_308));
  u_xlat23 = x_310.x;
  let x_312 : f32 = u_xlat22;
  let x_313 : f32 = u_xlat23;
  u_xlat22 = (x_312 * x_313);
  let x_315 : f32 = u_xlat21;
  let x_316 : f32 = u_xlat22;
  u_xlat21 = (x_315 * x_316);
  let x_321 : f32 = vs_TEXCOORD2.w;
  u_xlat4.x = x_321;
  let x_325 : f32 = vs_TEXCOORD3.w;
  u_xlat4.y = x_325;
  let x_328 : f32 = vs_TEXCOORD4.w;
  u_xlat4.z = x_328;
  let x_330 : vec4<f32> = u_xlat4;
  let x_332 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_330.x, x_330.y, x_330.z), vec3<f32>(x_332.x, x_332.y, x_332.z));
  let x_335 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_335);
  let x_337 : f32 = u_xlat22;
  let x_339 : vec4<f32> = u_xlat4;
  let x_341 : vec3<f32> = (vec3<f32>(x_337, x_337, x_337) * vec3<f32>(x_339.x, x_339.y, x_339.z));
  let x_342 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_341.x, x_341.y, x_341.z, x_342.w);
  let x_345 : f32 = u_xlat21;
  let x_349 : vec4<f32> = x_33.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_345, x_345, x_345) * vec3<f32>(x_349.x, x_349.y, x_349.z));
  let x_354 : f32 = x_33.x_Glossiness;
  u_xlat21 = (-(x_354) + 1.0f);
  let x_357 : vec4<f32> = u_xlat4;
  let x_359 : f32 = u_xlat22;
  let x_362 : vec3<f32> = u_xlat3;
  let x_364 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_359, x_359, x_359)) + -(x_362));
  let x_365 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_364.x, x_364.y, x_364.z, x_365.w);
  let x_367 : vec4<f32> = u_xlat4;
  let x_369 : vec4<f32> = u_xlat4;
  u_xlat22 = dot(vec3<f32>(x_367.x, x_367.y, x_367.z), vec3<f32>(x_369.x, x_369.y, x_369.z));
  let x_372 : f32 = u_xlat22;
  u_xlat22 = max(x_372, 0.001f);
  let x_375 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_375);
  let x_377 : f32 = u_xlat22;
  let x_379 : vec4<f32> = u_xlat4;
  let x_381 : vec3<f32> = (vec3<f32>(x_377, x_377, x_377) * vec3<f32>(x_379.x, x_379.y, x_379.z));
  let x_382 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_381.x, x_381.y, x_381.z, x_382.w);
  let x_384 : vec4<f32> = u_xlat2;
  let x_386 : vec3<f32> = u_xlat3;
  u_xlat22 = dot(vec3<f32>(x_384.x, x_384.y, x_384.z), -(x_386));
  let x_389 : vec4<f32> = u_xlat2;
  let x_391 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_389.x, x_389.y, x_389.z), vec3<f32>(x_391.x, x_391.y, x_391.z));
  let x_394 : f32 = u_xlat23;
  u_xlat23 = clamp(x_394, 0.0f, 1.0f);
  let x_396 : vec4<f32> = u_xlat2;
  let x_398 : vec4<f32> = u_xlat4;
  u_xlat2.x = dot(vec3<f32>(x_396.x, x_396.y, x_396.z), vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_403 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_403, 0.0f, 1.0f);
  let x_407 : vec4<f32> = u_xlat5;
  let x_409 : vec4<f32> = u_xlat4;
  u_xlat9 = dot(vec3<f32>(x_407.x, x_407.y, x_407.z), vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : f32 = u_xlat9;
  u_xlat9 = clamp(x_412, 0.0f, 1.0f);
  let x_415 : f32 = u_xlat9;
  let x_416 : f32 = u_xlat9;
  u_xlat16 = (x_415 * x_416);
  let x_418 : f32 = u_xlat16;
  let x_420 : f32 = u_xlat21;
  u_xlat16 = dot(vec2<f32>(x_418, x_418), vec2<f32>(x_420, x_420));
  let x_423 : f32 = u_xlat16;
  u_xlat16 = (x_423 + -0.5f);
  let x_426 : f32 = u_xlat23;
  u_xlat3.x = (-(x_426) + 1.0f);
  let x_432 : f32 = u_xlat3.x;
  let x_434 : f32 = u_xlat3.x;
  u_xlat10 = (x_432 * x_434);
  let x_436 : f32 = u_xlat10;
  let x_437 : f32 = u_xlat10;
  u_xlat10 = (x_436 * x_437);
  let x_440 : f32 = u_xlat3.x;
  let x_441 : f32 = u_xlat10;
  u_xlat3.x = (x_440 * x_441);
  let x_444 : f32 = u_xlat16;
  let x_446 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_444 * x_446) + 1.0f);
  let x_450 : f32 = u_xlat22;
  u_xlat10 = (-(abs(x_450)) + 1.0f);
  let x_455 : f32 = u_xlat10;
  let x_456 : f32 = u_xlat10;
  u_xlat17 = (x_455 * x_456);
  let x_458 : f32 = u_xlat17;
  let x_459 : f32 = u_xlat17;
  u_xlat17 = (x_458 * x_459);
  let x_461 : f32 = u_xlat10;
  let x_462 : f32 = u_xlat17;
  u_xlat10 = (x_461 * x_462);
  let x_464 : f32 = u_xlat16;
  let x_465 : f32 = u_xlat10;
  u_xlat16 = ((x_464 * x_465) + 1.0f);
  let x_468 : f32 = u_xlat16;
  let x_470 : f32 = u_xlat3.x;
  u_xlat16 = (x_468 * x_470);
  let x_472 : f32 = u_xlat23;
  let x_473 : f32 = u_xlat16;
  u_xlat16 = (x_472 * x_473);
  let x_475 : f32 = u_xlat21;
  let x_476 : f32 = u_xlat21;
  u_xlat21 = (x_475 * x_476);
  let x_478 : f32 = u_xlat21;
  u_xlat21 = max(x_478, 0.002f);
  let x_481 : f32 = u_xlat21;
  u_xlat3.x = (-(x_481) + 1.0f);
  let x_485 : f32 = u_xlat22;
  let x_488 : f32 = u_xlat3.x;
  let x_490 : f32 = u_xlat21;
  u_xlat10 = ((abs(x_485) * x_488) + x_490);
  let x_492 : f32 = u_xlat23;
  let x_494 : f32 = u_xlat3.x;
  let x_496 : f32 = u_xlat21;
  u_xlat3.x = ((x_492 * x_494) + x_496);
  let x_499 : f32 = u_xlat22;
  let x_502 : f32 = u_xlat3.x;
  u_xlat22 = (abs(x_499) * x_502);
  let x_504 : f32 = u_xlat23;
  let x_505 : f32 = u_xlat10;
  let x_507 : f32 = u_xlat22;
  u_xlat22 = ((x_504 * x_505) + x_507);
  let x_509 : f32 = u_xlat22;
  u_xlat22 = (x_509 + 0.00001f);
  let x_512 : f32 = u_xlat22;
  u_xlat22 = (0.5f / x_512);
  let x_514 : f32 = u_xlat21;
  let x_515 : f32 = u_xlat21;
  u_xlat21 = (x_514 * x_515);
  let x_518 : f32 = u_xlat2.x;
  let x_519 : f32 = u_xlat21;
  let x_522 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_518 * x_519) + -(x_522));
  let x_527 : f32 = u_xlat3.x;
  let x_529 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_527 * x_529) + 1.0f);
  let x_533 : f32 = u_xlat21;
  u_xlat21 = (x_533 * 0.318309873f);
  let x_537 : f32 = u_xlat2.x;
  let x_539 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_537 * x_539) + 0.0000001f);
  let x_544 : f32 = u_xlat21;
  let x_546 : f32 = u_xlat2.x;
  u_xlat21 = (x_544 / x_546);
  let x_548 : f32 = u_xlat21;
  let x_549 : f32 = u_xlat22;
  u_xlat21 = (x_548 * x_549);
  let x_551 : f32 = u_xlat23;
  let x_552 : f32 = u_xlat21;
  u_xlat21 = (x_551 * x_552);
  let x_554 : f32 = u_xlat21;
  u_xlat21 = (x_554 * 3.141592741f);
  let x_557 : f32 = u_xlat21;
  u_xlat21 = max(x_557, 0.0f);
  let x_559 : vec3<f32> = u_xlat0;
  let x_560 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_559, x_560);
  let x_562 : f32 = u_xlat22;
  u_xlatb22 = !((x_562 == 0.0f));
  let x_564 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_564);
  let x_566 : f32 = u_xlat21;
  let x_567 : f32 = u_xlat22;
  u_xlat21 = (x_566 * x_567);
  let x_569 : f32 = u_xlat16;
  let x_571 : vec3<f32> = u_xlat6;
  let x_572 : vec3<f32> = (vec3<f32>(x_569, x_569, x_569) * x_571);
  let x_573 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_572.x, x_573.y, x_572.y, x_572.z);
  let x_575 : vec3<f32> = u_xlat6;
  let x_576 : f32 = u_xlat21;
  u_xlat3 = (x_575 * vec3<f32>(x_576, x_576, x_576));
  let x_579 : f32 = u_xlat9;
  u_xlat21 = (-(x_579) + 1.0f);
  let x_582 : f32 = u_xlat21;
  let x_583 : f32 = u_xlat21;
  u_xlat22 = (x_582 * x_583);
  let x_585 : f32 = u_xlat22;
  let x_586 : f32 = u_xlat22;
  u_xlat22 = (x_585 * x_586);
  let x_588 : f32 = u_xlat21;
  let x_589 : f32 = u_xlat22;
  u_xlat21 = (x_588 * x_589);
  let x_591 : vec3<f32> = u_xlat0;
  let x_594 : vec3<f32> = (-(x_591) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_595 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_594.x, x_594.y, x_594.z, x_595.w);
  let x_597 : vec4<f32> = u_xlat4;
  let x_599 : f32 = u_xlat21;
  let x_602 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_597.x, x_597.y, x_597.z) * vec3<f32>(x_599, x_599, x_599)) + x_602);
  let x_604 : vec3<f32> = u_xlat0;
  let x_605 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_604 * x_605);
  let x_609 : vec3<f32> = u_xlat1;
  let x_610 : vec4<f32> = u_xlat2;
  let x_613 : vec3<f32> = u_xlat0;
  let x_614 : vec3<f32> = ((x_609 * vec3<f32>(x_610.x, x_610.z, x_610.w)) + x_613);
  let x_615 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_614.x, x_614.y, x_614.z, x_615.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

