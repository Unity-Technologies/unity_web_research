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

var<private> vs_TEXCOORD6 : f32;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat24 : f32;
  var u_xlat1 : vec3<f32>;
  var u_xlat2 : vec3<f32>;
  var u_xlat25 : f32;
  var u_xlat26 : f32;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat27 : f32;
  var u_xlat6 : vec3<f32>;
  var u_xlatb25 : bool;
  var u_xlat7 : vec4<f32>;
  var x_279 : vec3<f32>;
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
  let x_69 : vec2<f32> = vs_TEXCOORD0;
  let x_70 : vec4<f32> = textureSample(x_DissolveNoise, sampler_DissolveNoise, x_69);
  u_xlat25 = x_70.x;
  let x_78 : f32 = x_18.x_EdgeSize;
  let x_81 : f32 = x_18.x_Cutoff;
  u_xlat26 = (x_78 + x_81);
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
  u_xlat27 = (x_111 * x_114);
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
  let x_168 : f32 = u_xlat26;
  let x_170 : f32 = u_xlat25;
  u_xlat25 = ((-(x_166) * x_168) + x_170);
  let x_175 : f32 = u_xlat25;
  u_xlatb25 = (x_175 < 0.0f);
  let x_178 : bool = u_xlatb25;
  if (((select(0i, 1i, x_178) * -1i) != 0i)) {
    discard;
  }
  let x_187 : vec3<f32> = vs_TEXCOORD4;
  let x_191 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_193 : vec3<f32> = (vec3<f32>(x_187.y, x_187.y, x_187.y) * vec3<f32>(x_191.x, x_191.y, x_191.z));
  let x_194 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_193.x, x_194.y, x_193.y, x_193.z);
  let x_197 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_199 : vec3<f32> = vs_TEXCOORD4;
  let x_202 : vec4<f32> = u_xlat5;
  let x_204 : vec3<f32> = ((vec3<f32>(x_197.x, x_197.y, x_197.z) * vec3<f32>(x_199.x, x_199.x, x_199.x)) + vec3<f32>(x_202.x, x_202.z, x_202.w));
  let x_205 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_204.x, x_205.y, x_204.y, x_204.z);
  let x_208 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_210 : vec3<f32> = vs_TEXCOORD4;
  let x_213 : vec4<f32> = u_xlat5;
  let x_215 : vec3<f32> = ((vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210.z, x_210.z, x_210.z)) + vec3<f32>(x_213.x, x_213.z, x_213.w));
  let x_216 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_215.x, x_216.y, x_215.y, x_215.z);
  let x_218 : vec4<f32> = u_xlat5;
  let x_222 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_224 : vec3<f32> = (vec3<f32>(x_218.x, x_218.z, x_218.w) + vec3<f32>(x_222.x, x_222.y, x_222.z));
  let x_225 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_224.x, x_225.y, x_224.y, x_224.z);
  let x_229 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb25 = (x_229 == 1.0f);
  let x_231 : bool = u_xlatb25;
  if (x_231) {
    let x_236 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb25 = (x_236 == 1.0f);
    let x_239 : vec3<f32> = vs_TEXCOORD4;
    let x_243 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_245 : vec3<f32> = (vec3<f32>(x_239.y, x_239.y, x_239.y) * vec3<f32>(x_243.x, x_243.y, x_243.z));
    let x_246 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
    let x_249 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_251 : vec3<f32> = vs_TEXCOORD4;
    let x_254 : vec4<f32> = u_xlat7;
    let x_256 : vec3<f32> = ((vec3<f32>(x_249.x, x_249.y, x_249.z) * vec3<f32>(x_251.x, x_251.x, x_251.x)) + vec3<f32>(x_254.x, x_254.y, x_254.z));
    let x_257 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_256.x, x_256.y, x_256.z, x_257.w);
    let x_260 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_262 : vec3<f32> = vs_TEXCOORD4;
    let x_265 : vec4<f32> = u_xlat7;
    let x_267 : vec3<f32> = ((vec3<f32>(x_260.x, x_260.y, x_260.z) * vec3<f32>(x_262.z, x_262.z, x_262.z)) + vec3<f32>(x_265.x, x_265.y, x_265.z));
    let x_268 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_267.x, x_267.y, x_267.z, x_268.w);
    let x_270 : vec4<f32> = u_xlat7;
    let x_273 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_275 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.z) + vec3<f32>(x_273.x, x_273.y, x_273.z));
    let x_276 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_275.x, x_275.y, x_275.z, x_276.w);
    let x_278 : bool = u_xlatb25;
    if (x_278) {
      let x_282 : vec4<f32> = u_xlat7;
      x_279 = vec3<f32>(x_282.x, x_282.y, x_282.z);
    } else {
      let x_285 : vec3<f32> = vs_TEXCOORD4;
      x_279 = x_285;
    }
    let x_286 : vec3<f32> = x_279;
    let x_287 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_286.x, x_286.y, x_286.z, x_287.w);
    let x_289 : vec4<f32> = u_xlat7;
    let x_293 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_295 : vec3<f32> = (vec3<f32>(x_289.x, x_289.y, x_289.z) + -(x_293));
    let x_296 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_295.x, x_295.y, x_295.z, x_296.w);
    let x_298 : vec4<f32> = u_xlat7;
    let x_302 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_303 : vec3<f32> = (vec3<f32>(x_298.x, x_298.y, x_298.z) * x_302);
    let x_304 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_304.x, x_303.x, x_303.y, x_303.z);
    let x_307 : f32 = u_xlat7.y;
    u_xlat25 = ((x_307 * 0.25f) + 0.75f);
    let x_313 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat26 = ((x_313 * 0.5f) + 0.75f);
    let x_317 : f32 = u_xlat25;
    let x_318 : f32 = u_xlat26;
    u_xlat7.x = max(x_317, x_318);
    let x_329 : vec4<f32> = u_xlat7;
    let x_331 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_329.x, x_329.z, x_329.w));
    u_xlat7 = x_331;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat25 = dot(x_337, x_339);
  let x_341 : f32 = u_xlat25;
  u_xlat25 = clamp(x_341, 0.0f, 1.0f);
  let x_343 : vec4<f32> = u_xlat5;
  let x_345 : vec4<f32> = u_xlat5;
  u_xlat26 = dot(vec3<f32>(x_343.x, x_343.z, x_343.w), vec3<f32>(x_345.x, x_345.z, x_345.w));
  let x_353 : f32 = u_xlat26;
  let x_355 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_353, x_353));
  u_xlat26 = x_355.x;
  let x_357 : f32 = u_xlat25;
  let x_358 : f32 = u_xlat26;
  u_xlat25 = (x_357 * x_358);
  let x_361 : vec3<f32> = vs_TEXCOORD1;
  let x_362 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_361, x_362);
  let x_366 : vec3<f32> = vs_TEXCOORD2;
  let x_367 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_366, x_367);
  let x_371 : vec3<f32> = vs_TEXCOORD3;
  let x_372 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_371, x_372);
  let x_375 : vec4<f32> = u_xlat7;
  let x_377 : vec4<f32> = u_xlat7;
  u_xlat26 = dot(vec3<f32>(x_375.x, x_375.y, x_375.z), vec3<f32>(x_377.x, x_377.y, x_377.z));
  let x_380 : f32 = u_xlat26;
  u_xlat26 = inverseSqrt(x_380);
  let x_382 : f32 = u_xlat26;
  let x_384 : vec4<f32> = u_xlat7;
  let x_386 : vec3<f32> = (vec3<f32>(x_382, x_382, x_382) * vec3<f32>(x_384.x, x_384.y, x_384.z));
  let x_387 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_386.x, x_387.y, x_386.y, x_386.z);
  let x_389 : f32 = u_xlat25;
  let x_393 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_389, x_389, x_389) * vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat3;
  let x_399 : vec4<f32> = x_18.x_Color;
  let x_404 : vec3<f32> = ((vec3<f32>(x_396.x, x_396.y, x_396.z) * vec3<f32>(x_399.x, x_399.y, x_399.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_405 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_407 : f32 = u_xlat27;
  let x_409 : vec4<f32> = u_xlat3;
  let x_414 : vec3<f32> = ((vec3<f32>(x_407, x_407, x_407) * vec3<f32>(x_409.x, x_409.y, x_409.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_415 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_414.x, x_414.y, x_414.z, x_415.w);
  let x_417 : f32 = u_xlat27;
  u_xlat25 = ((-(x_417) * 0.959999979f) + 0.959999979f);
  let x_422 : f32 = u_xlat25;
  let x_424 : vec4<f32> = u_xlat4;
  let x_426 : vec3<f32> = (vec3<f32>(x_422, x_422, x_422) * vec3<f32>(x_424.x, x_424.y, x_424.z));
  let x_427 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_426.x, x_426.y, x_426.z, x_427.w);
  let x_430 : f32 = u_xlat5.y;
  let x_434 : f32 = x_18.x_Glossiness;
  u_xlat25 = ((-(x_430) * x_434) + 1.0f);
  let x_437 : vec3<f32> = u_xlat0;
  let x_438 : f32 = u_xlat24;
  let x_441 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_437 * vec3<f32>(x_438, x_438, x_438)) + x_441);
  let x_443 : vec3<f32> = u_xlat0;
  let x_444 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_443, x_444);
  let x_446 : f32 = u_xlat24;
  u_xlat24 = max(x_446, 0.001f);
  let x_449 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_449);
  let x_451 : f32 = u_xlat24;
  let x_453 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_451, x_451, x_451) * x_453);
  let x_455 : vec4<f32> = u_xlat5;
  let x_457 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_455.x, x_455.z, x_455.w), x_457);
  let x_459 : vec4<f32> = u_xlat5;
  let x_461 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_459.x, x_459.z, x_459.w), x_461);
  let x_465 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_465, 0.0f, 1.0f);
  let x_469 : vec4<f32> = u_xlat5;
  let x_471 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(vec3<f32>(x_469.x, x_469.z, x_469.w), x_471);
  let x_473 : f32 = u_xlat10;
  u_xlat10 = clamp(x_473, 0.0f, 1.0f);
  let x_475 : vec3<f32> = u_xlat1;
  let x_476 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_475, x_476);
  let x_480 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_480, 0.0f, 1.0f);
  let x_485 : f32 = u_xlat0.x;
  let x_487 : f32 = u_xlat0.x;
  u_xlat8.x = (x_485 * x_487);
  let x_490 : vec3<f32> = u_xlat8;
  let x_492 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_490.x, x_490.x), vec2<f32>(x_492, x_492));
  let x_497 : f32 = u_xlat8.x;
  u_xlat8.x = (x_497 + -0.5f);
  let x_503 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_503) + 1.0f);
  let x_506 : f32 = u_xlat16;
  let x_507 : f32 = u_xlat16;
  u_xlat1.x = (x_506 * x_507);
  let x_511 : f32 = u_xlat1.x;
  let x_513 : f32 = u_xlat1.x;
  u_xlat1.x = (x_511 * x_513);
  let x_516 : f32 = u_xlat16;
  let x_518 : f32 = u_xlat1.x;
  u_xlat16 = (x_516 * x_518);
  let x_521 : f32 = u_xlat8.x;
  let x_522 : f32 = u_xlat16;
  u_xlat16 = ((x_521 * x_522) + 1.0f);
  let x_525 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_525)) + 1.0f);
  let x_532 : f32 = u_xlat1.x;
  let x_534 : f32 = u_xlat1.x;
  u_xlat9 = (x_532 * x_534);
  let x_536 : f32 = u_xlat9;
  let x_537 : f32 = u_xlat9;
  u_xlat9 = (x_536 * x_537);
  let x_540 : f32 = u_xlat1.x;
  let x_541 : f32 = u_xlat9;
  u_xlat1.x = (x_540 * x_541);
  let x_545 : f32 = u_xlat8.x;
  let x_547 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_545 * x_547) + 1.0f);
  let x_552 : f32 = u_xlat8.x;
  let x_553 : f32 = u_xlat16;
  u_xlat8.x = (x_552 * x_553);
  let x_556 : f32 = u_xlat25;
  let x_557 : f32 = u_xlat25;
  u_xlat16 = (x_556 * x_557);
  let x_559 : f32 = u_xlat16;
  u_xlat16 = max(x_559, 0.002f);
  let x_562 : f32 = u_xlat16;
  u_xlat1.x = (-(x_562) + 1.0f);
  let x_566 : f32 = u_xlat24;
  let x_569 : f32 = u_xlat1.x;
  let x_571 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_566) * x_569) + x_571);
  let x_574 : f32 = u_xlat2.x;
  let x_576 : f32 = u_xlat1.x;
  let x_578 : f32 = u_xlat16;
  u_xlat1.x = ((x_574 * x_576) + x_578);
  let x_581 : f32 = u_xlat24;
  let x_584 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_581) * x_584);
  let x_587 : f32 = u_xlat2.x;
  let x_588 : f32 = u_xlat9;
  let x_590 : f32 = u_xlat24;
  u_xlat24 = ((x_587 * x_588) + x_590);
  let x_592 : f32 = u_xlat24;
  u_xlat24 = (x_592 + 0.00001f);
  let x_595 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_595);
  let x_597 : f32 = u_xlat16;
  let x_598 : f32 = u_xlat16;
  u_xlat16 = (x_597 * x_598);
  let x_600 : f32 = u_xlat10;
  let x_601 : f32 = u_xlat16;
  let x_603 : f32 = u_xlat10;
  u_xlat1.x = ((x_600 * x_601) + -(x_603));
  let x_608 : f32 = u_xlat1.x;
  let x_609 : f32 = u_xlat10;
  u_xlat1.x = ((x_608 * x_609) + 1.0f);
  let x_613 : f32 = u_xlat16;
  u_xlat16 = (x_613 * 0.318309873f);
  let x_617 : f32 = u_xlat1.x;
  let x_619 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_617 * x_619) + 0.0000001f);
  let x_624 : f32 = u_xlat16;
  let x_626 : f32 = u_xlat1.x;
  u_xlat16 = (x_624 / x_626);
  let x_628 : f32 = u_xlat16;
  let x_629 : f32 = u_xlat24;
  u_xlat8.y = (x_628 * x_629);
  let x_632 : vec3<f32> = u_xlat2;
  let x_634 : vec3<f32> = u_xlat8;
  let x_636 : vec2<f32> = (vec2<f32>(x_632.x, x_632.x) * vec2<f32>(x_634.x, x_634.y));
  let x_637 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_636.x, x_636.y, x_637.z);
  let x_640 : f32 = u_xlat8.y;
  u_xlat16 = (x_640 * 3.141592741f);
  let x_643 : f32 = u_xlat16;
  u_xlat16 = max(x_643, 0.0f);
  let x_645 : vec4<f32> = u_xlat3;
  let x_647 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_645.x, x_645.y, x_645.z), vec3<f32>(x_647.x, x_647.y, x_647.z));
  let x_651 : f32 = u_xlat24;
  u_xlatb24 = !((x_651 == 0.0f));
  let x_653 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_653);
  let x_655 : f32 = u_xlat24;
  let x_656 : f32 = u_xlat16;
  u_xlat16 = (x_655 * x_656);
  let x_658 : vec3<f32> = u_xlat8;
  let x_660 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_658.x, x_658.x, x_658.x) * x_660);
  let x_662 : vec3<f32> = u_xlat6;
  let x_663 : f32 = u_xlat16;
  u_xlat8 = (x_662 * vec3<f32>(x_663, x_663, x_663));
  let x_667 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_667) + 1.0f);
  let x_672 : f32 = u_xlat0.x;
  let x_674 : f32 = u_xlat0.x;
  u_xlat25 = (x_672 * x_674);
  let x_676 : f32 = u_xlat25;
  let x_677 : f32 = u_xlat25;
  u_xlat25 = (x_676 * x_677);
  let x_680 : f32 = u_xlat0.x;
  let x_681 : f32 = u_xlat25;
  u_xlat0.x = (x_680 * x_681);
  let x_684 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_684.x, x_684.y, x_684.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_689 : vec3<f32> = u_xlat2;
  let x_690 : vec3<f32> = u_xlat0;
  let x_693 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_689 * vec3<f32>(x_690.x, x_690.x, x_690.x)) + vec3<f32>(x_693.x, x_693.y, x_693.z));
  let x_696 : vec3<f32> = u_xlat8;
  let x_697 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_696 * x_697);
  let x_699 : vec4<f32> = u_xlat4;
  let x_701 : vec3<f32> = u_xlat1;
  let x_703 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_699.x, x_699.y, x_699.z) * x_701) + x_703);
  let x_707 : f32 = vs_TEXCOORD6;
  let x_709 : f32 = x_18.x_ProjectionParams.y;
  u_xlat24 = (x_707 / x_709);
  let x_711 : f32 = u_xlat24;
  u_xlat24 = (-(x_711) + 1.0f);
  let x_714 : f32 = u_xlat24;
  let x_716 : f32 = x_18.x_ProjectionParams.z;
  u_xlat24 = (x_714 * x_716);
  let x_718 : f32 = u_xlat24;
  u_xlat24 = max(x_718, 0.0f);
  let x_720 : f32 = u_xlat24;
  let x_723 : f32 = x_18.unity_FogParams.x;
  u_xlat24 = (x_720 * x_723);
  let x_725 : f32 = u_xlat24;
  let x_726 : f32 = u_xlat24;
  u_xlat24 = (x_725 * -(x_726));
  let x_729 : f32 = u_xlat24;
  u_xlat24 = exp2(x_729);
  let x_733 : vec3<f32> = u_xlat0;
  let x_734 : f32 = u_xlat24;
  let x_736 : vec3<f32> = (x_733 * vec3<f32>(x_734, x_734, x_734));
  let x_737 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_736.x, x_736.y, x_736.z, x_737.w);
  let x_740 : f32 = u_xlat4.w;
  SV_Target0.w = x_740;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(5) vs_TEXCOORD4_param : vec3<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD1_param : vec3<f32>, @location(3) vs_TEXCOORD2_param : vec3<f32>, @location(4) vs_TEXCOORD3_param : vec3<f32>, @location(1) vs_TEXCOORD6_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

