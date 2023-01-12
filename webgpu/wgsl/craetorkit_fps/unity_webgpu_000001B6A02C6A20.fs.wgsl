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

var<private> vs_TEXCOORD6 : f32;

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
  var x_264 : vec3<f32>;
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
  let x_188 : vec3<f32> = vs_TEXCOORD4;
  let x_192 : vec4<f32> = x_18.unity_WorldToLight[1i];
  u_xlat7 = (vec4<f32>(x_188.y, x_188.y, x_188.y, x_188.y) * x_192);
  let x_195 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_196 : vec3<f32> = vs_TEXCOORD4;
  let x_199 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_195 * vec4<f32>(x_196.x, x_196.x, x_196.x, x_196.x)) + x_199);
  let x_202 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_203 : vec3<f32> = vs_TEXCOORD4;
  let x_206 : vec4<f32> = u_xlat7;
  u_xlat7 = ((x_202 * vec4<f32>(x_203.z, x_203.z, x_203.z, x_203.z)) + x_206);
  let x_208 : vec4<f32> = u_xlat7;
  let x_211 : vec4<f32> = x_18.unity_WorldToLight[3i];
  u_xlat7 = (x_208 + x_211);
  let x_215 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb28 = (x_215 == 1.0f);
  let x_217 : bool = u_xlatb28;
  if (x_217) {
    let x_222 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb28 = (x_222 == 1.0f);
    let x_224 : vec3<f32> = vs_TEXCOORD4;
    let x_228 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_230 : vec3<f32> = (vec3<f32>(x_224.y, x_224.y, x_224.y) * vec3<f32>(x_228.x, x_228.y, x_228.z));
    let x_231 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_230.x, x_231.y, x_230.y, x_230.z);
    let x_234 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_236 : vec3<f32> = vs_TEXCOORD4;
    let x_239 : vec4<f32> = u_xlat5;
    let x_241 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.x, x_236.x, x_236.x)) + vec3<f32>(x_239.x, x_239.z, x_239.w));
    let x_242 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_241.x, x_242.y, x_241.y, x_241.z);
    let x_245 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_247 : vec3<f32> = vs_TEXCOORD4;
    let x_250 : vec4<f32> = u_xlat5;
    let x_252 : vec3<f32> = ((vec3<f32>(x_245.x, x_245.y, x_245.z) * vec3<f32>(x_247.z, x_247.z, x_247.z)) + vec3<f32>(x_250.x, x_250.z, x_250.w));
    let x_253 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_252.x, x_253.y, x_252.y, x_252.z);
    let x_255 : vec4<f32> = u_xlat5;
    let x_258 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_260 : vec3<f32> = (vec3<f32>(x_255.x, x_255.z, x_255.w) + vec3<f32>(x_258.x, x_258.y, x_258.z));
    let x_261 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_260.x, x_261.y, x_260.y, x_260.z);
    let x_263 : bool = u_xlatb28;
    if (x_263) {
      let x_267 : vec4<f32> = u_xlat5;
      x_264 = vec3<f32>(x_267.x, x_267.z, x_267.w);
    } else {
      let x_270 : vec3<f32> = vs_TEXCOORD4;
      x_264 = x_270;
    }
    let x_271 : vec3<f32> = x_264;
    let x_272 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_271.x, x_272.y, x_271.y, x_271.z);
    let x_274 : vec4<f32> = u_xlat5;
    let x_278 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_280 : vec3<f32> = (vec3<f32>(x_274.x, x_274.z, x_274.w) + -(x_278));
    let x_281 : vec4<f32> = u_xlat5;
    u_xlat5 = vec4<f32>(x_280.x, x_281.y, x_280.y, x_280.z);
    let x_284 : vec4<f32> = u_xlat5;
    let x_288 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_289 : vec3<f32> = (vec3<f32>(x_284.x, x_284.z, x_284.w) * x_288);
    let x_290 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_290.x, x_289.x, x_289.y, x_289.z);
    let x_293 : f32 = u_xlat8.y;
    u_xlat28 = ((x_293 * 0.25f) + 0.75f);
    let x_299 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat29 = ((x_299 * 0.5f) + 0.75f);
    let x_303 : f32 = u_xlat28;
    let x_304 : f32 = u_xlat29;
    u_xlat8.x = max(x_303, x_304);
    let x_315 : vec4<f32> = u_xlat8;
    let x_317 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_315.x, x_315.z, x_315.w));
    u_xlat8 = x_317;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_323 : vec4<f32> = u_xlat8;
  let x_325 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat28 = dot(x_323, x_325);
  let x_327 : f32 = u_xlat28;
  u_xlat28 = clamp(x_327, 0.0f, 1.0f);
  let x_331 : f32 = u_xlat7.z;
  u_xlatb29 = (0.0f < x_331);
  let x_333 : bool = u_xlatb29;
  u_xlat29 = select(0.0f, 1.0f, x_333);
  let x_335 : vec4<f32> = u_xlat7;
  let x_337 : vec4<f32> = u_xlat7;
  let x_339 : vec2<f32> = (vec2<f32>(x_335.x, x_335.y) / vec2<f32>(x_337.w, x_337.w));
  let x_340 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_339.x, x_340.y, x_339.y, x_340.w);
  let x_342 : vec4<f32> = u_xlat5;
  let x_345 : vec2<f32> = (vec2<f32>(x_342.x, x_342.z) + vec2<f32>(0.5f, 0.5f));
  let x_346 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_345.x, x_346.y, x_345.y, x_346.w);
  let x_353 : vec4<f32> = u_xlat5;
  let x_355 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_353.x, x_353.z));
  u_xlat5.x = x_355.w;
  let x_358 : f32 = u_xlat29;
  let x_360 : f32 = u_xlat5.x;
  u_xlat29 = (x_358 * x_360);
  let x_362 : vec4<f32> = u_xlat7;
  let x_364 : vec4<f32> = u_xlat7;
  u_xlat5.x = dot(vec3<f32>(x_362.x, x_362.y, x_362.z), vec3<f32>(x_364.x, x_364.y, x_364.z));
  let x_373 : vec4<f32> = u_xlat5;
  let x_375 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_373.x, x_373.x));
  u_xlat5.x = x_375.x;
  let x_378 : f32 = u_xlat29;
  let x_380 : f32 = u_xlat5.x;
  u_xlat29 = (x_378 * x_380);
  let x_382 : f32 = u_xlat28;
  let x_383 : f32 = u_xlat29;
  u_xlat28 = (x_382 * x_383);
  let x_386 : vec3<f32> = vs_TEXCOORD1;
  let x_387 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_386, x_387);
  let x_391 : vec3<f32> = vs_TEXCOORD2;
  let x_392 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_391, x_392);
  let x_396 : vec3<f32> = vs_TEXCOORD3;
  let x_397 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_396, x_397);
  let x_400 : vec4<f32> = u_xlat7;
  let x_402 : vec4<f32> = u_xlat7;
  u_xlat29 = dot(vec3<f32>(x_400.x, x_400.y, x_400.z), vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : f32 = u_xlat29;
  u_xlat29 = inverseSqrt(x_405);
  let x_407 : f32 = u_xlat29;
  let x_409 : vec4<f32> = u_xlat7;
  let x_411 : vec3<f32> = (vec3<f32>(x_407, x_407, x_407) * vec3<f32>(x_409.x, x_409.y, x_409.z));
  let x_412 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_411.x, x_412.y, x_411.y, x_411.z);
  let x_414 : f32 = u_xlat28;
  let x_418 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_414, x_414, x_414) * vec3<f32>(x_418.x, x_418.y, x_418.z));
  let x_421 : vec4<f32> = u_xlat3;
  let x_424 : vec4<f32> = x_18.x_Color;
  let x_429 : vec3<f32> = ((vec3<f32>(x_421.x, x_421.y, x_421.z) * vec3<f32>(x_424.x, x_424.y, x_424.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_430 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_429.x, x_429.y, x_429.z, x_430.w);
  let x_432 : f32 = u_xlat30;
  let x_434 : vec4<f32> = u_xlat3;
  let x_439 : vec3<f32> = ((vec3<f32>(x_432, x_432, x_432) * vec3<f32>(x_434.x, x_434.y, x_434.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_440 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_439.x, x_439.y, x_439.z, x_440.w);
  let x_442 : f32 = u_xlat30;
  u_xlat28 = ((-(x_442) * 0.959999979f) + 0.959999979f);
  let x_447 : f32 = u_xlat28;
  let x_449 : vec4<f32> = u_xlat4;
  let x_451 : vec3<f32> = (vec3<f32>(x_447, x_447, x_447) * vec3<f32>(x_449.x, x_449.y, x_449.z));
  let x_452 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_451.x, x_451.y, x_451.z, x_452.w);
  let x_455 : f32 = u_xlat5.y;
  let x_459 : f32 = x_18.x_Glossiness;
  u_xlat28 = ((-(x_455) * x_459) + 1.0f);
  let x_462 : vec3<f32> = u_xlat0;
  let x_463 : f32 = u_xlat27;
  let x_466 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_462 * vec3<f32>(x_463, x_463, x_463)) + x_466);
  let x_468 : vec3<f32> = u_xlat0;
  let x_469 : vec3<f32> = u_xlat0;
  u_xlat27 = dot(x_468, x_469);
  let x_471 : f32 = u_xlat27;
  u_xlat27 = max(x_471, 0.001f);
  let x_474 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_474);
  let x_476 : f32 = u_xlat27;
  let x_478 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_476, x_476, x_476) * x_478);
  let x_480 : vec4<f32> = u_xlat5;
  let x_482 : vec3<f32> = u_xlat2;
  u_xlat27 = dot(vec3<f32>(x_480.x, x_480.z, x_480.w), x_482);
  let x_484 : vec4<f32> = u_xlat5;
  let x_486 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_484.x, x_484.z, x_484.w), x_486);
  let x_490 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_490, 0.0f, 1.0f);
  let x_494 : vec4<f32> = u_xlat5;
  let x_496 : vec3<f32> = u_xlat0;
  u_xlat11 = dot(vec3<f32>(x_494.x, x_494.z, x_494.w), x_496);
  let x_498 : f32 = u_xlat11;
  u_xlat11 = clamp(x_498, 0.0f, 1.0f);
  let x_500 : vec3<f32> = u_xlat1;
  let x_501 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_500, x_501);
  let x_505 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_505, 0.0f, 1.0f);
  let x_510 : f32 = u_xlat0.x;
  let x_512 : f32 = u_xlat0.x;
  u_xlat9.x = (x_510 * x_512);
  let x_515 : vec3<f32> = u_xlat9;
  let x_517 : f32 = u_xlat28;
  u_xlat9.x = dot(vec2<f32>(x_515.x, x_515.x), vec2<f32>(x_517, x_517));
  let x_522 : f32 = u_xlat9.x;
  u_xlat9.x = (x_522 + -0.5f);
  let x_528 : f32 = u_xlat2.x;
  u_xlat18 = (-(x_528) + 1.0f);
  let x_531 : f32 = u_xlat18;
  let x_532 : f32 = u_xlat18;
  u_xlat1.x = (x_531 * x_532);
  let x_536 : f32 = u_xlat1.x;
  let x_538 : f32 = u_xlat1.x;
  u_xlat1.x = (x_536 * x_538);
  let x_541 : f32 = u_xlat18;
  let x_543 : f32 = u_xlat1.x;
  u_xlat18 = (x_541 * x_543);
  let x_546 : f32 = u_xlat9.x;
  let x_547 : f32 = u_xlat18;
  u_xlat18 = ((x_546 * x_547) + 1.0f);
  let x_550 : f32 = u_xlat27;
  u_xlat1.x = (-(abs(x_550)) + 1.0f);
  let x_557 : f32 = u_xlat1.x;
  let x_559 : f32 = u_xlat1.x;
  u_xlat10 = (x_557 * x_559);
  let x_561 : f32 = u_xlat10;
  let x_562 : f32 = u_xlat10;
  u_xlat10 = (x_561 * x_562);
  let x_565 : f32 = u_xlat1.x;
  let x_566 : f32 = u_xlat10;
  u_xlat1.x = (x_565 * x_566);
  let x_570 : f32 = u_xlat9.x;
  let x_572 : f32 = u_xlat1.x;
  u_xlat9.x = ((x_570 * x_572) + 1.0f);
  let x_577 : f32 = u_xlat9.x;
  let x_578 : f32 = u_xlat18;
  u_xlat9.x = (x_577 * x_578);
  let x_581 : f32 = u_xlat28;
  let x_582 : f32 = u_xlat28;
  u_xlat18 = (x_581 * x_582);
  let x_584 : f32 = u_xlat18;
  u_xlat18 = max(x_584, 0.002f);
  let x_587 : f32 = u_xlat18;
  u_xlat1.x = (-(x_587) + 1.0f);
  let x_591 : f32 = u_xlat27;
  let x_594 : f32 = u_xlat1.x;
  let x_596 : f32 = u_xlat18;
  u_xlat10 = ((abs(x_591) * x_594) + x_596);
  let x_599 : f32 = u_xlat2.x;
  let x_601 : f32 = u_xlat1.x;
  let x_603 : f32 = u_xlat18;
  u_xlat1.x = ((x_599 * x_601) + x_603);
  let x_606 : f32 = u_xlat27;
  let x_609 : f32 = u_xlat1.x;
  u_xlat27 = (abs(x_606) * x_609);
  let x_612 : f32 = u_xlat2.x;
  let x_613 : f32 = u_xlat10;
  let x_615 : f32 = u_xlat27;
  u_xlat27 = ((x_612 * x_613) + x_615);
  let x_617 : f32 = u_xlat27;
  u_xlat27 = (x_617 + 0.00001f);
  let x_620 : f32 = u_xlat27;
  u_xlat27 = (0.5f / x_620);
  let x_622 : f32 = u_xlat18;
  let x_623 : f32 = u_xlat18;
  u_xlat18 = (x_622 * x_623);
  let x_625 : f32 = u_xlat11;
  let x_626 : f32 = u_xlat18;
  let x_628 : f32 = u_xlat11;
  u_xlat1.x = ((x_625 * x_626) + -(x_628));
  let x_633 : f32 = u_xlat1.x;
  let x_634 : f32 = u_xlat11;
  u_xlat1.x = ((x_633 * x_634) + 1.0f);
  let x_638 : f32 = u_xlat18;
  u_xlat18 = (x_638 * 0.318309873f);
  let x_642 : f32 = u_xlat1.x;
  let x_644 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_642 * x_644) + 0.0000001f);
  let x_649 : f32 = u_xlat18;
  let x_651 : f32 = u_xlat1.x;
  u_xlat18 = (x_649 / x_651);
  let x_653 : f32 = u_xlat18;
  let x_654 : f32 = u_xlat27;
  u_xlat9.y = (x_653 * x_654);
  let x_657 : vec3<f32> = u_xlat2;
  let x_659 : vec3<f32> = u_xlat9;
  let x_661 : vec2<f32> = (vec2<f32>(x_657.x, x_657.x) * vec2<f32>(x_659.x, x_659.y));
  let x_662 : vec3<f32> = u_xlat9;
  u_xlat9 = vec3<f32>(x_661.x, x_661.y, x_662.z);
  let x_665 : f32 = u_xlat9.y;
  u_xlat18 = (x_665 * 3.141592741f);
  let x_668 : f32 = u_xlat18;
  u_xlat18 = max(x_668, 0.0f);
  let x_670 : vec4<f32> = u_xlat3;
  let x_672 : vec4<f32> = u_xlat3;
  u_xlat27 = dot(vec3<f32>(x_670.x, x_670.y, x_670.z), vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_676 : f32 = u_xlat27;
  u_xlatb27 = !((x_676 == 0.0f));
  let x_678 : bool = u_xlatb27;
  u_xlat27 = select(0.0f, 1.0f, x_678);
  let x_680 : f32 = u_xlat27;
  let x_681 : f32 = u_xlat18;
  u_xlat18 = (x_680 * x_681);
  let x_683 : vec3<f32> = u_xlat9;
  let x_685 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_683.x, x_683.x, x_683.x) * x_685);
  let x_687 : vec3<f32> = u_xlat6;
  let x_688 : f32 = u_xlat18;
  u_xlat9 = (x_687 * vec3<f32>(x_688, x_688, x_688));
  let x_692 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_692) + 1.0f);
  let x_697 : f32 = u_xlat0.x;
  let x_699 : f32 = u_xlat0.x;
  u_xlat28 = (x_697 * x_699);
  let x_701 : f32 = u_xlat28;
  let x_702 : f32 = u_xlat28;
  u_xlat28 = (x_701 * x_702);
  let x_705 : f32 = u_xlat0.x;
  let x_706 : f32 = u_xlat28;
  u_xlat0.x = (x_705 * x_706);
  let x_709 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_709.x, x_709.y, x_709.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_714 : vec3<f32> = u_xlat2;
  let x_715 : vec3<f32> = u_xlat0;
  let x_718 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_714 * vec3<f32>(x_715.x, x_715.x, x_715.x)) + vec3<f32>(x_718.x, x_718.y, x_718.z));
  let x_721 : vec3<f32> = u_xlat9;
  let x_722 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_721 * x_722);
  let x_724 : vec4<f32> = u_xlat4;
  let x_726 : vec3<f32> = u_xlat1;
  let x_728 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_724.x, x_724.y, x_724.z) * x_726) + x_728);
  let x_732 : f32 = vs_TEXCOORD6;
  let x_734 : f32 = x_18.x_ProjectionParams.y;
  u_xlat27 = (x_732 / x_734);
  let x_736 : f32 = u_xlat27;
  u_xlat27 = (-(x_736) + 1.0f);
  let x_739 : f32 = u_xlat27;
  let x_741 : f32 = x_18.x_ProjectionParams.z;
  u_xlat27 = (x_739 * x_741);
  let x_743 : f32 = u_xlat27;
  u_xlat27 = max(x_743, 0.0f);
  let x_745 : f32 = u_xlat27;
  let x_748 : f32 = x_18.unity_FogParams.x;
  u_xlat27 = (x_745 * x_748);
  let x_750 : f32 = u_xlat27;
  let x_751 : f32 = u_xlat27;
  u_xlat27 = (x_750 * -(x_751));
  let x_754 : f32 = u_xlat27;
  u_xlat27 = exp2(x_754);
  let x_758 : vec3<f32> = u_xlat0;
  let x_759 : f32 = u_xlat27;
  let x_761 : vec3<f32> = (x_758 * vec3<f32>(x_759, x_759, x_759));
  let x_762 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_761.x, x_761.y, x_761.z, x_762.w);
  let x_765 : f32 = u_xlat4.w;
  SV_Target0.w = x_765;
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

