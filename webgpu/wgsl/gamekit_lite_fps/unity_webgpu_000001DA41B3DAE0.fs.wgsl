struct PGlobals {
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
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
  x_EmissionColor : vec4<f32>,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat21 : f32;

var<private> u_xlat22 : f32;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb22 : bool;

var<private> u_xlat3 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat23 : f32;

@group(0) @binding(6) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(8) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(2) var x_OcclusionMap : texture_2d<f32>;

@group(0) @binding(11) var sampler_OcclusionMap : sampler;

var<private> u_xlat4 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(7) var samplerunity_SpecCube0 : sampler;

var<private> u_xlat6 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

@group(0) @binding(3) var unity_NHxRoughness : texture_2d<f32>;

@group(0) @binding(9) var samplerunity_NHxRoughness : sampler;

@group(0) @binding(4) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_EmissionMap : sampler;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_183 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec4<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_23.x, x_23.y));
  u_xlat0 = x_25;
  let x_32 : f32 = u_xlat0.w;
  let x_42 : f32 = x_37.x_Color.w;
  SV_Target0.w = (x_32 * x_42);
  let x_48 : vec4<f32> = u_xlat0;
  let x_52 : vec4<f32> = x_37.x_Color;
  u_xlat1 = (vec3<f32>(x_48.x, x_48.y, x_48.z) * vec3<f32>(x_52.x, x_52.y, x_52.z));
  let x_56 : vec4<f32> = x_37.x_Color;
  let x_58 : vec4<f32> = u_xlat0;
  let x_63 : vec3<f32> = ((vec3<f32>(x_56.x, x_56.y, x_56.z) * vec3<f32>(x_58.x, x_58.y, x_58.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_64 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_63.x, x_63.y, x_63.z, x_64.w);
  let x_68 : f32 = x_37.x_Metallic;
  let x_70 : f32 = x_37.x_Metallic;
  let x_72 : f32 = x_37.x_Metallic;
  let x_73 : vec3<f32> = vec3<f32>(x_68, x_70, x_72);
  let x_78 : vec4<f32> = u_xlat0;
  let x_83 : vec3<f32> = ((vec3<f32>(x_73.x, x_73.y, x_73.z) * vec3<f32>(x_78.x, x_78.y, x_78.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_84 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_83.x, x_83.y, x_83.z, x_84.w);
  let x_88 : f32 = x_37.x_Metallic;
  u_xlat21 = ((-(x_88) * 0.959999979f) + 0.959999979f);
  let x_95 : vec4<f32> = vs_TEXCOORD4;
  let x_97 : vec4<f32> = vs_TEXCOORD4;
  u_xlat22 = dot(vec3<f32>(x_95.x, x_95.y, x_95.z), vec3<f32>(x_97.x, x_97.y, x_97.z));
  let x_100 : f32 = u_xlat22;
  u_xlat22 = inverseSqrt(x_100);
  let x_103 : f32 = u_xlat22;
  let x_105 : vec4<f32> = vs_TEXCOORD4;
  u_xlat2 = (vec3<f32>(x_103, x_103, x_103) * vec3<f32>(x_105.x, x_105.y, x_105.z));
  let x_114 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb22 = (x_114 == 1.0f);
  let x_117 : bool = u_xlatb22;
  if (x_117) {
    let x_122 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb22 = (x_122 == 1.0f);
    let x_126 : vec4<f32> = vs_TEXCOORD3;
    let x_131 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_133 : vec3<f32> = (vec3<f32>(x_126.w, x_126.w, x_126.w) * vec3<f32>(x_131.x, x_131.y, x_131.z));
    let x_134 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_133.x, x_133.y, x_133.z, x_134.w);
    let x_138 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_141 : vec4<f32> = vs_TEXCOORD2;
    let x_144 : vec4<f32> = u_xlat3;
    let x_146 : vec3<f32> = ((vec3<f32>(x_138.x, x_138.y, x_138.z) * vec3<f32>(x_141.w, x_141.w, x_141.w)) + vec3<f32>(x_144.x, x_144.y, x_144.z));
    let x_147 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
    let x_151 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_153 : vec4<f32> = vs_TEXCOORD4;
    let x_156 : vec4<f32> = u_xlat3;
    let x_158 : vec3<f32> = ((vec3<f32>(x_151.x, x_151.y, x_151.z) * vec3<f32>(x_153.w, x_153.w, x_153.w)) + vec3<f32>(x_156.x, x_156.y, x_156.z));
    let x_159 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_158.x, x_158.y, x_158.z, x_159.w);
    let x_161 : vec4<f32> = u_xlat3;
    let x_164 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_166 : vec3<f32> = (vec3<f32>(x_161.x, x_161.y, x_161.z) + vec3<f32>(x_164.x, x_164.y, x_164.z));
    let x_167 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_166.x, x_166.y, x_166.z, x_167.w);
    let x_172 : f32 = vs_TEXCOORD2.w;
    u_xlat11.x = x_172;
    let x_175 : f32 = vs_TEXCOORD3.w;
    u_xlat11.y = x_175;
    let x_178 : f32 = vs_TEXCOORD4.w;
    u_xlat11.z = x_178;
    let x_181 : bool = u_xlatb22;
    if (x_181) {
      let x_186 : vec4<f32> = u_xlat3;
      x_183 = vec3<f32>(x_186.x, x_186.y, x_186.z);
    } else {
      let x_189 : vec3<f32> = u_xlat11;
      x_183 = x_189;
    }
    let x_190 : vec3<f32> = x_183;
    let x_191 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_190.x, x_190.y, x_190.z, x_191.w);
    let x_193 : vec4<f32> = u_xlat3;
    let x_198 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_200 : vec3<f32> = (vec3<f32>(x_193.x, x_193.y, x_193.z) + -(x_198));
    let x_201 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_200.x, x_200.y, x_200.z, x_201.w);
    let x_203 : vec4<f32> = u_xlat3;
    let x_207 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_208 : vec3<f32> = (vec3<f32>(x_203.x, x_203.y, x_203.z) * x_207);
    let x_209 : vec4<f32> = u_xlat3;
    u_xlat3 = vec4<f32>(x_209.x, x_208.x, x_208.y, x_208.z);
    let x_212 : f32 = u_xlat3.y;
    u_xlat22 = ((x_212 * 0.25f) + 0.75f);
    let x_219 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat23 = ((x_219 * 0.5f) + 0.75f);
    let x_223 : f32 = u_xlat22;
    let x_224 : f32 = u_xlat23;
    u_xlat3.x = max(x_223, x_224);
    let x_235 : vec4<f32> = u_xlat3;
    let x_237 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_235.x, x_235.z, x_235.w));
    u_xlat3 = x_237;
  } else {
    u_xlat3.x = 1.0f;
    u_xlat3.y = 1.0f;
    u_xlat3.z = 1.0f;
    u_xlat3.w = 1.0f;
  }
  let x_243 : vec4<f32> = u_xlat3;
  let x_245 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat22 = dot(x_243, x_245);
  let x_247 : f32 = u_xlat22;
  u_xlat22 = clamp(x_247, 0.0f, 1.0f);
  let x_255 : vec4<f32> = vs_TEXCOORD0;
  let x_257 : vec4<f32> = textureSample(x_OcclusionMap, sampler_OcclusionMap, vec2<f32>(x_255.x, x_255.y));
  u_xlat23 = x_257.y;
  let x_261 : f32 = x_37.x_Glossiness;
  let x_263 : f32 = x_37.x_Glossiness;
  let x_264 : vec2<f32> = vec2<f32>(x_261, x_263);
  let x_270 : vec2<f32> = (-(vec2<f32>(x_264.x, x_264.y)) + vec2<f32>(1.0f, 1.0f));
  let x_271 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_270.x, x_271.y, x_271.z, x_270.y);
  let x_275 : vec4<f32> = vs_TEXCOORD1;
  let x_277 : vec3<f32> = u_xlat2;
  u_xlat4.x = dot(vec3<f32>(x_275.x, x_275.y, x_275.z), x_277);
  let x_281 : f32 = u_xlat4.x;
  let x_283 : f32 = u_xlat4.x;
  u_xlat4.x = (x_281 + x_283);
  let x_286 : vec3<f32> = u_xlat2;
  let x_287 : vec4<f32> = u_xlat4;
  let x_291 : vec4<f32> = vs_TEXCOORD1;
  let x_293 : vec3<f32> = ((x_286 * -(vec3<f32>(x_287.x, x_287.x, x_287.x))) + vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_294 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_293.x, x_293.y, x_293.z, x_294.w);
  let x_297 : f32 = u_xlat22;
  let x_301 : vec4<f32> = x_37.x_LightColor0;
  u_xlat5 = (vec3<f32>(x_297, x_297, x_297) * vec3<f32>(x_301.x, x_301.y, x_301.z));
  let x_305 : f32 = u_xlat3.x;
  u_xlat22 = ((-(x_305) * 0.699999988f) + 1.700000048f);
  let x_311 : f32 = u_xlat22;
  let x_313 : f32 = u_xlat3.x;
  u_xlat22 = (x_311 * x_313);
  let x_315 : f32 = u_xlat22;
  u_xlat22 = (x_315 * 6.0f);
  let x_326 : vec4<f32> = u_xlat4;
  let x_328 : f32 = u_xlat22;
  let x_329 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_326.x, x_326.y, x_326.z), x_328);
  u_xlat4 = x_329;
  let x_331 : f32 = u_xlat4.w;
  u_xlat22 = (x_331 + -1.0f);
  let x_335 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_336 : f32 = u_xlat22;
  u_xlat22 = ((x_335 * x_336) + 1.0f);
  let x_339 : f32 = u_xlat22;
  u_xlat22 = log2(x_339);
  let x_341 : f32 = u_xlat22;
  let x_343 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat22 = (x_341 * x_343);
  let x_345 : f32 = u_xlat22;
  u_xlat22 = exp2(x_345);
  let x_347 : f32 = u_xlat22;
  let x_349 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat22 = (x_347 * x_349);
  let x_351 : vec4<f32> = u_xlat4;
  let x_353 : f32 = u_xlat22;
  let x_355 : vec3<f32> = (vec3<f32>(x_351.x, x_351.y, x_351.z) * vec3<f32>(x_353, x_353, x_353));
  let x_356 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_355.x, x_355.y, x_355.z, x_356.w);
  let x_358 : f32 = u_xlat23;
  let x_360 : vec4<f32> = u_xlat4;
  let x_362 : vec3<f32> = (vec3<f32>(x_358, x_358, x_358) * vec3<f32>(x_360.x, x_360.y, x_360.z));
  let x_363 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_362.x, x_362.y, x_362.z, x_363.w);
  let x_365 : vec4<f32> = vs_TEXCOORD1;
  let x_368 : vec3<f32> = u_xlat2;
  u_xlat22 = dot(-(vec3<f32>(x_365.x, x_365.y, x_365.z)), x_368);
  let x_370 : f32 = u_xlat22;
  let x_371 : f32 = u_xlat22;
  u_xlat23 = (x_370 + x_371);
  let x_374 : vec3<f32> = u_xlat2;
  let x_375 : f32 = u_xlat23;
  let x_379 : vec4<f32> = vs_TEXCOORD1;
  u_xlat6 = ((x_374 * -(vec3<f32>(x_375, x_375, x_375))) + -(vec3<f32>(x_379.x, x_379.y, x_379.z)));
  let x_383 : vec3<f32> = u_xlat2;
  let x_385 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(x_383, vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_390 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_390, 0.0f, 1.0f);
  let x_393 : f32 = u_xlat22;
  u_xlat22 = x_393;
  let x_394 : f32 = u_xlat22;
  u_xlat22 = clamp(x_394, 0.0f, 1.0f);
  let x_396 : vec3<f32> = u_xlat6;
  let x_398 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat6.x = dot(x_396, vec3<f32>(x_398.x, x_398.y, x_398.z));
  let x_402 : f32 = u_xlat22;
  u_xlat6.y = (-(x_402) + 1.0f);
  let x_407 : vec3<f32> = u_xlat6;
  let x_409 : vec3<f32> = u_xlat6;
  let x_411 : vec2<f32> = (vec2<f32>(x_407.x, x_407.y) * vec2<f32>(x_409.x, x_409.y));
  let x_412 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_411.x, x_411.y, x_412.z);
  let x_414 : vec3<f32> = u_xlat9;
  let x_416 : vec3<f32> = u_xlat9;
  let x_418 : vec2<f32> = (vec2<f32>(x_414.x, x_414.y) * vec2<f32>(x_416.x, x_416.y));
  let x_419 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_419.x, x_418.x, x_418.y, x_419.w);
  let x_421 : f32 = u_xlat21;
  let x_424 : f32 = x_37.x_Glossiness;
  u_xlat22 = (-(x_421) + x_424);
  let x_426 : f32 = u_xlat22;
  u_xlat22 = (x_426 + 1.0f);
  let x_428 : f32 = u_xlat22;
  u_xlat22 = clamp(x_428, 0.0f, 1.0f);
  let x_435 : vec4<f32> = u_xlat3;
  let x_437 : vec4<f32> = textureSample(unity_NHxRoughness, samplerunity_NHxRoughness, vec2<f32>(x_435.y, x_435.w));
  u_xlat9.x = x_437.x;
  let x_441 : f32 = u_xlat9.x;
  u_xlat9.x = (x_441 * 16.0f);
  let x_445 : vec4<f32> = u_xlat0;
  let x_447 : vec3<f32> = u_xlat9;
  u_xlat9 = (vec3<f32>(x_445.x, x_445.y, x_445.z) * vec3<f32>(x_447.x, x_447.x, x_447.x));
  let x_450 : vec3<f32> = u_xlat1;
  let x_451 : f32 = u_xlat21;
  let x_454 : vec3<f32> = u_xlat9;
  u_xlat1 = ((x_450 * vec3<f32>(x_451, x_451, x_451)) + x_454);
  let x_456 : vec3<f32> = u_xlat2;
  let x_458 : vec3<f32> = u_xlat5;
  u_xlat2 = (vec3<f32>(x_456.x, x_456.x, x_456.x) * x_458);
  let x_460 : vec4<f32> = u_xlat0;
  let x_463 : f32 = u_xlat22;
  let x_465 : vec3<f32> = (-(vec3<f32>(x_460.x, x_460.y, x_460.z)) + vec3<f32>(x_463, x_463, x_463));
  let x_466 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_465.x, x_465.y, x_466.z, x_465.z);
  let x_468 : vec4<f32> = u_xlat3;
  let x_470 : vec4<f32> = u_xlat3;
  let x_473 : vec4<f32> = u_xlat0;
  let x_475 : vec3<f32> = ((vec3<f32>(x_468.z, x_468.z, x_468.z) * vec3<f32>(x_470.x, x_470.y, x_470.w)) + vec3<f32>(x_473.x, x_473.y, x_473.z));
  let x_476 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_475.x, x_475.y, x_475.z, x_476.w);
  let x_478 : vec4<f32> = u_xlat0;
  let x_480 : vec4<f32> = u_xlat4;
  let x_482 : vec3<f32> = (vec3<f32>(x_478.x, x_478.y, x_478.z) * vec3<f32>(x_480.x, x_480.y, x_480.z));
  let x_483 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_482.x, x_482.y, x_482.z, x_483.w);
  let x_485 : vec3<f32> = u_xlat1;
  let x_486 : vec3<f32> = u_xlat2;
  let x_488 : vec4<f32> = u_xlat0;
  let x_490 : vec3<f32> = ((x_485 * x_486) + vec3<f32>(x_488.x, x_488.y, x_488.z));
  let x_491 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_490.x, x_490.y, x_490.z, x_491.w);
  let x_498 : vec4<f32> = vs_TEXCOORD0;
  let x_500 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, vec2<f32>(x_498.x, x_498.y));
  u_xlat1 = vec3<f32>(x_500.x, x_500.y, x_500.z);
  let x_502 : vec3<f32> = u_xlat1;
  let x_505 : vec4<f32> = x_37.x_EmissionColor;
  let x_508 : vec4<f32> = u_xlat0;
  let x_510 : vec3<f32> = ((x_502 * vec3<f32>(x_505.x, x_505.y, x_505.z)) + vec3<f32>(x_508.x, x_508.y, x_508.z));
  let x_511 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_510.x, x_510.y, x_510.z, x_511.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

