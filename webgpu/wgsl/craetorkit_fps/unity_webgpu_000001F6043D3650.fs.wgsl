struct PGlobals {
  x_ProjectionParams : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogParams : vec4<f32>,
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
  x_BumpScale : f32,
  x_Metallic : f32,
  x_Glossiness : f32,
  @size(4)
  padding_2 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_33 : PGlobals;

@group(0) @binding(1) var x_BumpMap : texture_2d<f32>;

@group(0) @binding(6) var sampler_BumpMap : sampler;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

@group(0) @binding(3) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(4) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_LightTexture0 : texture_2d<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat1 : vec3<f32>;
  var u_xlat21 : f32;
  var u_xlat2 : vec4<f32>;
  var u_xlat9 : vec3<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlatb22 : bool;
  var u_xlat5 : vec4<f32>;
  var x_289 : vec3<f32>;
  var u_xlat22 : f32;
  var u_xlat23 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlat16 : f32;
  var u_xlat10 : f32;
  var u_xlat17 : f32;
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
  let x_86 : vec4<f32> = vs_TEXCOORD0;
  let x_88 : vec4<f32> = textureSample(x_BumpMap, sampler_BumpMap, vec2<f32>(x_86.x, x_86.y));
  let x_89 : vec3<f32> = vec3<f32>(x_88.x, x_88.y, x_88.w);
  let x_90 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_89.x, x_89.y, x_89.z, x_90.w);
  let x_95 : f32 = u_xlat2.z;
  let x_98 : f32 = u_xlat2.x;
  u_xlat2.x = (x_95 * x_98);
  let x_101 : vec4<f32> = u_xlat2;
  let x_108 : vec2<f32> = ((vec2<f32>(x_101.x, x_101.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_109 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_108.x, x_108.y, x_109.z, x_109.w);
  let x_111 : vec4<f32> = u_xlat2;
  let x_115 : f32 = x_33.x_BumpScale;
  let x_117 : vec2<f32> = (vec2<f32>(x_111.x, x_111.y) * vec2<f32>(x_115, x_115));
  let x_118 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_117.x, x_117.y, x_118.z, x_118.w);
  let x_120 : vec4<f32> = u_xlat2;
  let x_122 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec2<f32>(x_120.x, x_120.y), vec2<f32>(x_122.x, x_122.y));
  let x_125 : f32 = u_xlat21;
  u_xlat21 = min(x_125, 1.0f);
  let x_128 : f32 = u_xlat21;
  u_xlat21 = (-(x_128) + 1.0f);
  let x_131 : f32 = u_xlat21;
  u_xlat21 = sqrt(x_131);
  let x_134 : vec4<f32> = u_xlat2;
  let x_137 : vec4<f32> = vs_TEXCOORD3;
  u_xlat9 = (vec3<f32>(x_134.y, x_134.y, x_134.y) * vec3<f32>(x_137.x, x_137.y, x_137.z));
  let x_141 : vec4<f32> = vs_TEXCOORD2;
  let x_143 : vec4<f32> = u_xlat2;
  let x_146 : vec3<f32> = u_xlat9;
  let x_147 : vec3<f32> = ((vec3<f32>(x_141.x, x_141.y, x_141.z) * vec3<f32>(x_143.x, x_143.x, x_143.x)) + x_146);
  let x_148 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_147.x, x_147.y, x_147.z, x_148.w);
  let x_151 : vec4<f32> = vs_TEXCOORD4;
  let x_153 : f32 = u_xlat21;
  let x_156 : vec4<f32> = u_xlat2;
  let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153, x_153, x_153)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
  let x_159 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
  let x_161 : vec4<f32> = u_xlat2;
  let x_163 : vec4<f32> = u_xlat2;
  u_xlat21 = dot(vec3<f32>(x_161.x, x_161.y, x_161.z), vec3<f32>(x_163.x, x_163.y, x_163.z));
  let x_166 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_166);
  let x_168 : f32 = u_xlat21;
  let x_170 : vec4<f32> = u_xlat2;
  let x_172 : vec3<f32> = (vec3<f32>(x_168, x_168, x_168) * vec3<f32>(x_170.x, x_170.y, x_170.z));
  let x_173 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_172.x, x_172.y, x_172.z, x_173.w);
  let x_176 : vec4<f32> = vs_TEXCOORD1;
  let x_178 : vec4<f32> = vs_TEXCOORD1;
  u_xlat21 = dot(vec3<f32>(x_176.x, x_176.y, x_176.z), vec3<f32>(x_178.x, x_178.y, x_178.z));
  let x_181 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_181);
  let x_184 : f32 = u_xlat21;
  let x_186 : vec4<f32> = vs_TEXCOORD1;
  u_xlat3 = (vec3<f32>(x_184, x_184, x_184) * vec3<f32>(x_186.x, x_186.y, x_186.z));
  let x_192 : vec3<f32> = vs_TEXCOORD5;
  let x_197 : vec4<f32> = x_33.unity_WorldToLight[1i];
  let x_199 : vec2<f32> = (vec2<f32>(x_192.y, x_192.y) * vec2<f32>(x_197.x, x_197.y));
  let x_200 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_199.x, x_199.y, x_200.z);
  let x_204 : vec4<f32> = x_33.unity_WorldToLight[0i];
  let x_206 : vec3<f32> = vs_TEXCOORD5;
  let x_209 : vec3<f32> = u_xlat4;
  let x_211 : vec2<f32> = ((vec2<f32>(x_204.x, x_204.y) * vec2<f32>(x_206.x, x_206.x)) + vec2<f32>(x_209.x, x_209.y));
  let x_212 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_211.x, x_211.y, x_212.z);
  let x_216 : vec4<f32> = x_33.unity_WorldToLight[2i];
  let x_218 : vec3<f32> = vs_TEXCOORD5;
  let x_221 : vec3<f32> = u_xlat4;
  let x_223 : vec2<f32> = ((vec2<f32>(x_216.x, x_216.y) * vec2<f32>(x_218.z, x_218.z)) + vec2<f32>(x_221.x, x_221.y));
  let x_224 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_223.x, x_223.y, x_224.z);
  let x_226 : vec3<f32> = u_xlat4;
  let x_230 : vec4<f32> = x_33.unity_WorldToLight[3i];
  let x_232 : vec2<f32> = (vec2<f32>(x_226.x, x_226.y) + vec2<f32>(x_230.x, x_230.y));
  let x_233 : vec3<f32> = u_xlat4;
  u_xlat4 = vec3<f32>(x_232.x, x_232.y, x_233.z);
  let x_239 : f32 = x_33.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_239 == 1.0f);
  let x_241 : bool = u_xlatb22;
  if (x_241) {
    let x_246 : f32 = x_33.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_246 == 1.0f);
    let x_249 : vec3<f32> = vs_TEXCOORD5;
    let x_253 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[1i];
    let x_255 : vec3<f32> = (vec3<f32>(x_249.y, x_249.y, x_249.y) * vec3<f32>(x_253.x, x_253.y, x_253.z));
    let x_256 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_259 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[0i];
    let x_261 : vec3<f32> = vs_TEXCOORD5;
    let x_264 : vec4<f32> = u_xlat5;
    let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.x, x_261.x, x_261.x)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
    let x_267 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
    let x_270 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[2i];
    let x_272 : vec3<f32> = vs_TEXCOORD5;
    let x_275 : vec4<f32> = u_xlat5;
    let x_277 : vec3<f32> = ((vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(x_272.z, x_272.z, x_272.z)) + vec3<f32>(x_275.x, x_275.y, x_275.z));
    let x_278 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
    let x_280 : vec4<f32> = u_xlat5;
    let x_283 : vec4<f32> = x_33.unity_ProbeVolumeWorldToObject[3i];
    let x_285 : vec3<f32> = (vec3<f32>(x_280.x, x_280.y, x_280.z) + vec3<f32>(x_283.x, x_283.y, x_283.z));
    let x_286 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_285.x, x_285.y, x_285.z, x_286.w);
    let x_288 : bool = u_xlatb22;
    if (x_288) {
      let x_292 : vec4<f32> = u_xlat5;
      x_289 = vec3<f32>(x_292.x, x_292.y, x_292.z);
    } else {
      let x_295 : vec3<f32> = vs_TEXCOORD5;
      x_289 = x_295;
    }
    let x_296 : vec3<f32> = x_289;
    let x_297 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_296.x, x_296.y, x_296.z, x_297.w);
    let x_299 : vec4<f32> = u_xlat5;
    let x_304 : vec3<f32> = x_33.unity_ProbeVolumeMin;
    let x_306 : vec3<f32> = (vec3<f32>(x_299.x, x_299.y, x_299.z) + -(x_304));
    let x_307 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_306.x, x_306.y, x_306.z, x_307.w);
    let x_309 : vec4<f32> = u_xlat5;
    let x_313 : vec3<f32> = x_33.unity_ProbeVolumeSizeInv;
    let x_314 : vec3<f32> = (vec3<f32>(x_309.x, x_309.y, x_309.z) * x_313);
    let x_315 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_315.x, x_314.x, x_314.y, x_314.z);
    let x_319 : f32 = u_xlat5.y;
    u_xlat22 = ((x_319 * 0.25f) + 0.75f);
    let x_326 : f32 = x_33.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_326 * 0.5f) + 0.75f);
    let x_330 : f32 = u_xlat22;
    let x_331 : f32 = u_xlat23;
    u_xlat5.x = max(x_330, x_331);
    let x_342 : vec4<f32> = u_xlat5;
    let x_344 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_342.x, x_342.z, x_342.w));
    u_xlat5 = x_344;
  } else {
    u_xlat5.x = 1.0f;
    u_xlat5.y = 1.0f;
    u_xlat5.z = 1.0f;
    u_xlat5.w = 1.0f;
  }
  let x_351 : vec4<f32> = u_xlat5;
  let x_353 : vec4<f32> = x_33.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_351, x_353);
  let x_355 : f32 = u_xlat22;
  u_xlat22 = clamp(x_355, 0.0f, 1.0f);
  let x_363 : vec3<f32> = u_xlat4;
  let x_365 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_363.x, x_363.y));
  u_xlat23 = x_365.w;
  let x_367 : f32 = u_xlat22;
  let x_368 : f32 = u_xlat23;
  u_xlat22 = (x_367 * x_368);
  let x_370 : f32 = u_xlat22;
  let x_374 : vec4<f32> = x_33.x_LightColor0;
  u_xlat4 = (vec3<f32>(x_370, x_370, x_370) * vec3<f32>(x_374.x, x_374.y, x_374.z));
  let x_379 : f32 = x_33.x_Glossiness;
  u_xlat22 = (-(x_379) + 1.0f);
  let x_384 : f32 = vs_TEXCOORD2.w;
  u_xlat5.x = x_384;
  let x_387 : f32 = vs_TEXCOORD3.w;
  u_xlat5.y = x_387;
  let x_390 : f32 = vs_TEXCOORD4.w;
  u_xlat5.z = x_390;
  let x_393 : vec4<f32> = vs_TEXCOORD1;
  let x_396 : f32 = u_xlat21;
  let x_399 : vec4<f32> = u_xlat5;
  u_xlat6 = ((-(vec3<f32>(x_393.x, x_393.y, x_393.z)) * vec3<f32>(x_396, x_396, x_396)) + vec3<f32>(x_399.x, x_399.y, x_399.z));
  let x_402 : vec3<f32> = u_xlat6;
  let x_403 : vec3<f32> = u_xlat6;
  u_xlat21 = dot(x_402, x_403);
  let x_405 : f32 = u_xlat21;
  u_xlat21 = max(x_405, 0.001f);
  let x_408 : f32 = u_xlat21;
  u_xlat21 = inverseSqrt(x_408);
  let x_410 : f32 = u_xlat21;
  let x_412 : vec3<f32> = u_xlat6;
  u_xlat6 = (vec3<f32>(x_410, x_410, x_410) * x_412);
  let x_414 : vec4<f32> = u_xlat2;
  let x_416 : vec3<f32> = u_xlat3;
  u_xlat21 = dot(vec3<f32>(x_414.x, x_414.y, x_414.z), -(x_416));
  let x_419 : vec4<f32> = u_xlat2;
  let x_421 : vec4<f32> = u_xlat5;
  u_xlat23 = dot(vec3<f32>(x_419.x, x_419.y, x_419.z), vec3<f32>(x_421.x, x_421.y, x_421.z));
  let x_424 : f32 = u_xlat23;
  u_xlat23 = clamp(x_424, 0.0f, 1.0f);
  let x_426 : vec4<f32> = u_xlat2;
  let x_428 : vec3<f32> = u_xlat6;
  u_xlat2.x = dot(vec3<f32>(x_426.x, x_426.y, x_426.z), x_428);
  let x_432 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_432, 0.0f, 1.0f);
  let x_435 : vec4<f32> = u_xlat5;
  let x_437 : vec3<f32> = u_xlat6;
  u_xlat9.x = dot(vec3<f32>(x_435.x, x_435.y, x_435.z), x_437);
  let x_441 : f32 = u_xlat9.x;
  u_xlat9.x = clamp(x_441, 0.0f, 1.0f);
  let x_446 : f32 = u_xlat9.x;
  let x_448 : f32 = u_xlat9.x;
  u_xlat16 = (x_446 * x_448);
  let x_450 : f32 = u_xlat16;
  let x_452 : f32 = u_xlat22;
  u_xlat16 = dot(vec2<f32>(x_450, x_450), vec2<f32>(x_452, x_452));
  let x_455 : f32 = u_xlat16;
  u_xlat16 = (x_455 + -0.5f);
  let x_458 : f32 = u_xlat23;
  u_xlat3.x = (-(x_458) + 1.0f);
  let x_464 : f32 = u_xlat3.x;
  let x_466 : f32 = u_xlat3.x;
  u_xlat10 = (x_464 * x_466);
  let x_468 : f32 = u_xlat10;
  let x_469 : f32 = u_xlat10;
  u_xlat10 = (x_468 * x_469);
  let x_472 : f32 = u_xlat3.x;
  let x_473 : f32 = u_xlat10;
  u_xlat3.x = (x_472 * x_473);
  let x_476 : f32 = u_xlat16;
  let x_478 : f32 = u_xlat3.x;
  u_xlat3.x = ((x_476 * x_478) + 1.0f);
  let x_482 : f32 = u_xlat21;
  u_xlat10 = (-(abs(x_482)) + 1.0f);
  let x_487 : f32 = u_xlat10;
  let x_488 : f32 = u_xlat10;
  u_xlat17 = (x_487 * x_488);
  let x_490 : f32 = u_xlat17;
  let x_491 : f32 = u_xlat17;
  u_xlat17 = (x_490 * x_491);
  let x_493 : f32 = u_xlat10;
  let x_494 : f32 = u_xlat17;
  u_xlat10 = (x_493 * x_494);
  let x_496 : f32 = u_xlat16;
  let x_497 : f32 = u_xlat10;
  u_xlat16 = ((x_496 * x_497) + 1.0f);
  let x_500 : f32 = u_xlat16;
  let x_502 : f32 = u_xlat3.x;
  u_xlat16 = (x_500 * x_502);
  let x_504 : f32 = u_xlat23;
  let x_505 : f32 = u_xlat16;
  u_xlat16 = (x_504 * x_505);
  let x_507 : f32 = u_xlat22;
  let x_508 : f32 = u_xlat22;
  u_xlat22 = (x_507 * x_508);
  let x_510 : f32 = u_xlat22;
  u_xlat22 = max(x_510, 0.002f);
  let x_513 : f32 = u_xlat22;
  u_xlat3.x = (-(x_513) + 1.0f);
  let x_517 : f32 = u_xlat21;
  let x_520 : f32 = u_xlat3.x;
  let x_522 : f32 = u_xlat22;
  u_xlat10 = ((abs(x_517) * x_520) + x_522);
  let x_524 : f32 = u_xlat23;
  let x_526 : f32 = u_xlat3.x;
  let x_528 : f32 = u_xlat22;
  u_xlat3.x = ((x_524 * x_526) + x_528);
  let x_531 : f32 = u_xlat21;
  let x_534 : f32 = u_xlat3.x;
  u_xlat21 = (abs(x_531) * x_534);
  let x_536 : f32 = u_xlat23;
  let x_537 : f32 = u_xlat10;
  let x_539 : f32 = u_xlat21;
  u_xlat21 = ((x_536 * x_537) + x_539);
  let x_541 : f32 = u_xlat21;
  u_xlat21 = (x_541 + 0.00001f);
  let x_544 : f32 = u_xlat21;
  u_xlat21 = (0.5f / x_544);
  let x_546 : f32 = u_xlat22;
  let x_547 : f32 = u_xlat22;
  u_xlat22 = (x_546 * x_547);
  let x_550 : f32 = u_xlat2.x;
  let x_551 : f32 = u_xlat22;
  let x_554 : f32 = u_xlat2.x;
  u_xlat3.x = ((x_550 * x_551) + -(x_554));
  let x_559 : f32 = u_xlat3.x;
  let x_561 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_559 * x_561) + 1.0f);
  let x_565 : f32 = u_xlat22;
  u_xlat22 = (x_565 * 0.318309873f);
  let x_569 : f32 = u_xlat2.x;
  let x_571 : f32 = u_xlat2.x;
  u_xlat2.x = ((x_569 * x_571) + 0.0000001f);
  let x_576 : f32 = u_xlat22;
  let x_578 : f32 = u_xlat2.x;
  u_xlat22 = (x_576 / x_578);
  let x_580 : f32 = u_xlat21;
  let x_581 : f32 = u_xlat22;
  u_xlat21 = (x_580 * x_581);
  let x_583 : f32 = u_xlat23;
  let x_584 : f32 = u_xlat21;
  u_xlat21 = (x_583 * x_584);
  let x_586 : f32 = u_xlat21;
  u_xlat21 = (x_586 * 3.141592741f);
  let x_589 : f32 = u_xlat21;
  u_xlat21 = max(x_589, 0.0f);
  let x_591 : vec3<f32> = u_xlat0;
  let x_592 : vec3<f32> = u_xlat0;
  u_xlat22 = dot(x_591, x_592);
  let x_594 : f32 = u_xlat22;
  u_xlatb22 = !((x_594 == 0.0f));
  let x_596 : bool = u_xlatb22;
  u_xlat22 = select(0.0f, 1.0f, x_596);
  let x_598 : f32 = u_xlat21;
  let x_599 : f32 = u_xlat22;
  u_xlat21 = (x_598 * x_599);
  let x_601 : f32 = u_xlat16;
  let x_603 : vec3<f32> = u_xlat4;
  let x_604 : vec3<f32> = (vec3<f32>(x_601, x_601, x_601) * x_603);
  let x_605 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_604.x, x_605.y, x_604.y, x_604.z);
  let x_607 : vec3<f32> = u_xlat4;
  let x_608 : f32 = u_xlat21;
  u_xlat3 = (x_607 * vec3<f32>(x_608, x_608, x_608));
  let x_612 : f32 = u_xlat9.x;
  u_xlat21 = (-(x_612) + 1.0f);
  let x_615 : f32 = u_xlat21;
  let x_616 : f32 = u_xlat21;
  u_xlat22 = (x_615 * x_616);
  let x_618 : f32 = u_xlat22;
  let x_619 : f32 = u_xlat22;
  u_xlat22 = (x_618 * x_619);
  let x_621 : f32 = u_xlat21;
  let x_622 : f32 = u_xlat22;
  u_xlat21 = (x_621 * x_622);
  let x_624 : vec3<f32> = u_xlat0;
  u_xlat4 = (-(x_624) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_628 : vec3<f32> = u_xlat4;
  let x_629 : f32 = u_xlat21;
  let x_632 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_628 * vec3<f32>(x_629, x_629, x_629)) + x_632);
  let x_634 : vec3<f32> = u_xlat0;
  let x_635 : vec3<f32> = u_xlat3;
  u_xlat0 = (x_634 * x_635);
  let x_637 : vec3<f32> = u_xlat1;
  let x_638 : vec4<f32> = u_xlat2;
  let x_641 : vec3<f32> = u_xlat0;
  u_xlat0 = ((x_637 * vec3<f32>(x_638.x, x_638.z, x_638.w)) + x_641);
  let x_644 : f32 = vs_TEXCOORD1.w;
  let x_646 : f32 = x_33.x_ProjectionParams.y;
  u_xlat21 = (x_644 / x_646);
  let x_648 : f32 = u_xlat21;
  u_xlat21 = (-(x_648) + 1.0f);
  let x_651 : f32 = u_xlat21;
  let x_653 : f32 = x_33.x_ProjectionParams.z;
  u_xlat21 = (x_651 * x_653);
  let x_655 : f32 = u_xlat21;
  u_xlat21 = max(x_655, 0.0f);
  let x_657 : f32 = u_xlat21;
  let x_659 : f32 = x_33.unity_FogParams.x;
  u_xlat21 = (x_657 * x_659);
  let x_661 : f32 = u_xlat21;
  let x_662 : f32 = u_xlat21;
  u_xlat21 = (x_661 * -(x_662));
  let x_665 : f32 = u_xlat21;
  u_xlat21 = exp2(x_665);
  let x_669 : vec3<f32> = u_xlat0;
  let x_670 : f32 = u_xlat21;
  let x_672 : vec3<f32> = (x_669 * vec3<f32>(x_670, x_670, x_670));
  let x_673 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(5) vs_TEXCOORD5_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

