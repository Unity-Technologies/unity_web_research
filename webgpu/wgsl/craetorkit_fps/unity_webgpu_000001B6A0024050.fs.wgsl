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
}

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(1) @binding(0) var<uniform> x_18 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(7) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Specular : texture_2d<f32>;

@group(0) @binding(9) var sampler_Specular : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(8) var sampler_NormalMap : sampler;

@group(0) @binding(4) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(5) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTexture0 : texture_2d<f32>;

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
  var u_xlat4 : vec4<f32>;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat26 : f32;
  var u_xlatb26 : bool;
  var u_xlat7 : vec4<f32>;
  var x_238 : vec3<f32>;
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
  let x_71 : vec2<f32> = vs_TEXCOORD0;
  let x_72 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_71);
  u_xlat3 = x_72;
  let x_74 : vec4<f32> = u_xlat3;
  let x_77 : vec4<f32> = x_18.x_Color;
  u_xlat4 = (x_74 * x_77);
  let x_85 : vec2<f32> = vs_TEXCOORD0;
  let x_86 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_85);
  let x_87 : vec2<f32> = vec2<f32>(x_86.x, x_86.w);
  let x_88 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_87.x, x_87.y, x_88.z, x_88.w);
  let x_93 : f32 = u_xlat5.x;
  let x_97 : f32 = x_18.x_Metallic;
  u_xlat25 = (x_93 * x_97);
  let x_104 : vec2<f32> = vs_TEXCOORD0;
  let x_105 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_104);
  let x_106 : vec3<f32> = vec3<f32>(x_105.x, x_105.y, x_105.w);
  let x_107 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_106.x, x_107.y, x_106.y, x_106.z);
  let x_111 : f32 = u_xlat5.w;
  let x_113 : f32 = u_xlat5.x;
  u_xlat5.x = (x_111 * x_113);
  let x_117 : vec4<f32> = u_xlat5;
  let x_124 : vec2<f32> = ((vec2<f32>(x_117.x, x_117.z) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_125 : vec3<f32> = u_xlat6;
  u_xlat6 = vec3<f32>(x_124.x, x_124.y, x_125.z);
  let x_128 : vec3<f32> = u_xlat6;
  let x_130 : vec3<f32> = u_xlat6;
  u_xlat26 = dot(vec2<f32>(x_128.x, x_128.y), vec2<f32>(x_130.x, x_130.y));
  let x_133 : f32 = u_xlat26;
  u_xlat26 = min(x_133, 1.0f);
  let x_136 : f32 = u_xlat26;
  u_xlat26 = (-(x_136) + 1.0f);
  let x_139 : f32 = u_xlat26;
  u_xlat6.z = sqrt(x_139);
  let x_143 : vec3<f32> = vs_TEXCOORD4;
  let x_147 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_149 : vec3<f32> = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_147.x, x_147.y, x_147.z));
  let x_150 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_149.x, x_150.y, x_149.y, x_149.z);
  let x_153 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_155 : vec3<f32> = vs_TEXCOORD4;
  let x_158 : vec4<f32> = u_xlat5;
  let x_160 : vec3<f32> = ((vec3<f32>(x_153.x, x_153.y, x_153.z) * vec3<f32>(x_155.x, x_155.x, x_155.x)) + vec3<f32>(x_158.x, x_158.z, x_158.w));
  let x_161 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_160.x, x_161.y, x_160.y, x_160.z);
  let x_165 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_167 : vec3<f32> = vs_TEXCOORD4;
  let x_170 : vec4<f32> = u_xlat5;
  let x_172 : vec3<f32> = ((vec3<f32>(x_165.x, x_165.y, x_165.z) * vec3<f32>(x_167.z, x_167.z, x_167.z)) + vec3<f32>(x_170.x, x_170.z, x_170.w));
  let x_173 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_172.x, x_173.y, x_172.y, x_172.z);
  let x_175 : vec4<f32> = u_xlat5;
  let x_179 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_181 : vec3<f32> = (vec3<f32>(x_175.x, x_175.z, x_175.w) + vec3<f32>(x_179.x, x_179.y, x_179.z));
  let x_182 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_181.x, x_182.y, x_181.y, x_181.z);
  let x_188 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb26 = (x_188 == 1.0f);
  let x_190 : bool = u_xlatb26;
  if (x_190) {
    let x_195 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb26 = (x_195 == 1.0f);
    let x_198 : vec3<f32> = vs_TEXCOORD4;
    let x_202 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_204 : vec3<f32> = (vec3<f32>(x_198.y, x_198.y, x_198.y) * vec3<f32>(x_202.x, x_202.y, x_202.z));
    let x_205 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
    let x_208 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_210 : vec3<f32> = vs_TEXCOORD4;
    let x_213 : vec4<f32> = u_xlat7;
    let x_215 : vec3<f32> = ((vec3<f32>(x_208.x, x_208.y, x_208.z) * vec3<f32>(x_210.x, x_210.x, x_210.x)) + vec3<f32>(x_213.x, x_213.y, x_213.z));
    let x_216 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_215.x, x_215.y, x_215.z, x_216.w);
    let x_219 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_221 : vec3<f32> = vs_TEXCOORD4;
    let x_224 : vec4<f32> = u_xlat7;
    let x_226 : vec3<f32> = ((vec3<f32>(x_219.x, x_219.y, x_219.z) * vec3<f32>(x_221.z, x_221.z, x_221.z)) + vec3<f32>(x_224.x, x_224.y, x_224.z));
    let x_227 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_226.x, x_226.y, x_226.z, x_227.w);
    let x_229 : vec4<f32> = u_xlat7;
    let x_232 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_234 : vec3<f32> = (vec3<f32>(x_229.x, x_229.y, x_229.z) + vec3<f32>(x_232.x, x_232.y, x_232.z));
    let x_235 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_234.x, x_234.y, x_234.z, x_235.w);
    let x_237 : bool = u_xlatb26;
    if (x_237) {
      let x_241 : vec4<f32> = u_xlat7;
      x_238 = vec3<f32>(x_241.x, x_241.y, x_241.z);
    } else {
      let x_244 : vec3<f32> = vs_TEXCOORD4;
      x_238 = x_244;
    }
    let x_245 : vec3<f32> = x_238;
    let x_246 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_245.x, x_245.y, x_245.z, x_246.w);
    let x_248 : vec4<f32> = u_xlat7;
    let x_252 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_254 : vec3<f32> = (vec3<f32>(x_248.x, x_248.y, x_248.z) + -(x_252));
    let x_255 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_254.x, x_254.y, x_254.z, x_255.w);
    let x_257 : vec4<f32> = u_xlat7;
    let x_261 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_262 : vec3<f32> = (vec3<f32>(x_257.x, x_257.y, x_257.z) * x_261);
    let x_263 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_263.x, x_262.x, x_262.y, x_262.z);
    let x_266 : f32 = u_xlat7.y;
    u_xlat26 = ((x_266 * 0.25f) + 0.75f);
    let x_273 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat27 = ((x_273 * 0.5f) + 0.75f);
    let x_277 : f32 = u_xlat26;
    let x_278 : f32 = u_xlat27;
    u_xlat7.x = max(x_277, x_278);
    let x_289 : vec4<f32> = u_xlat7;
    let x_291 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_289.x, x_289.z, x_289.w));
    u_xlat7 = x_291;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_297 : vec4<f32> = u_xlat7;
  let x_299 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat26 = dot(x_297, x_299);
  let x_301 : f32 = u_xlat26;
  u_xlat26 = clamp(x_301, 0.0f, 1.0f);
  let x_304 : vec4<f32> = u_xlat5;
  let x_306 : vec4<f32> = u_xlat5;
  u_xlat27 = dot(vec3<f32>(x_304.x, x_304.z, x_304.w), vec3<f32>(x_306.x, x_306.z, x_306.w));
  let x_314 : f32 = u_xlat27;
  let x_316 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec2<f32>(x_314, x_314));
  u_xlat27 = x_316.x;
  let x_318 : f32 = u_xlat26;
  let x_319 : f32 = u_xlat27;
  u_xlat26 = (x_318 * x_319);
  let x_322 : vec3<f32> = vs_TEXCOORD1;
  let x_323 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_322, x_323);
  let x_327 : vec3<f32> = vs_TEXCOORD2;
  let x_328 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_327, x_328);
  let x_332 : vec3<f32> = vs_TEXCOORD3;
  let x_333 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_332, x_333);
  let x_336 : vec4<f32> = u_xlat7;
  let x_338 : vec4<f32> = u_xlat7;
  u_xlat27 = dot(vec3<f32>(x_336.x, x_336.y, x_336.z), vec3<f32>(x_338.x, x_338.y, x_338.z));
  let x_341 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_341);
  let x_343 : f32 = u_xlat27;
  let x_345 : vec4<f32> = u_xlat7;
  let x_347 : vec3<f32> = (vec3<f32>(x_343, x_343, x_343) * vec3<f32>(x_345.x, x_345.y, x_345.z));
  let x_348 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_347.x, x_348.y, x_347.y, x_347.z);
  let x_350 : f32 = u_xlat26;
  let x_354 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_350, x_350, x_350) * vec3<f32>(x_354.x, x_354.y, x_354.z));
  let x_357 : vec4<f32> = u_xlat3;
  let x_360 : vec4<f32> = x_18.x_Color;
  let x_365 : vec3<f32> = ((vec3<f32>(x_357.x, x_357.y, x_357.z) * vec3<f32>(x_360.x, x_360.y, x_360.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_366 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_365.x, x_365.y, x_365.z, x_366.w);
  let x_368 : f32 = u_xlat25;
  let x_370 : vec4<f32> = u_xlat3;
  let x_375 : vec3<f32> = ((vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_370.x, x_370.y, x_370.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_376 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_375.x, x_375.y, x_375.z, x_376.w);
  let x_378 : f32 = u_xlat25;
  u_xlat25 = ((-(x_378) * 0.959999979f) + 0.959999979f);
  let x_383 : f32 = u_xlat25;
  let x_385 : vec4<f32> = u_xlat4;
  let x_387 : vec3<f32> = (vec3<f32>(x_383, x_383, x_383) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_387.x, x_387.y, x_387.z, x_388.w);
  let x_391 : f32 = u_xlat5.y;
  let x_395 : f32 = x_18.x_Glossiness;
  u_xlat25 = ((-(x_391) * x_395) + 1.0f);
  let x_398 : vec3<f32> = u_xlat0;
  let x_399 : f32 = u_xlat24;
  let x_402 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_398 * vec3<f32>(x_399, x_399, x_399)) + x_402);
  let x_404 : vec3<f32> = u_xlat0;
  let x_405 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_404, x_405);
  let x_407 : f32 = u_xlat24;
  u_xlat24 = max(x_407, 0.001f);
  let x_410 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_410);
  let x_412 : f32 = u_xlat24;
  let x_414 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_412, x_412, x_412) * x_414);
  let x_416 : vec4<f32> = u_xlat5;
  let x_418 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_416.x, x_416.z, x_416.w), x_418);
  let x_420 : vec4<f32> = u_xlat5;
  let x_422 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_420.x, x_420.z, x_420.w), x_422);
  let x_426 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_426, 0.0f, 1.0f);
  let x_430 : vec4<f32> = u_xlat5;
  let x_432 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(vec3<f32>(x_430.x, x_430.z, x_430.w), x_432);
  let x_434 : f32 = u_xlat10;
  u_xlat10 = clamp(x_434, 0.0f, 1.0f);
  let x_436 : vec3<f32> = u_xlat1;
  let x_437 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_436, x_437);
  let x_441 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_441, 0.0f, 1.0f);
  let x_446 : f32 = u_xlat0.x;
  let x_448 : f32 = u_xlat0.x;
  u_xlat8.x = (x_446 * x_448);
  let x_451 : vec3<f32> = u_xlat8;
  let x_453 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_451.x, x_451.x), vec2<f32>(x_453, x_453));
  let x_458 : f32 = u_xlat8.x;
  u_xlat8.x = (x_458 + -0.5f);
  let x_464 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_464) + 1.0f);
  let x_467 : f32 = u_xlat16;
  let x_468 : f32 = u_xlat16;
  u_xlat1.x = (x_467 * x_468);
  let x_472 : f32 = u_xlat1.x;
  let x_474 : f32 = u_xlat1.x;
  u_xlat1.x = (x_472 * x_474);
  let x_477 : f32 = u_xlat16;
  let x_479 : f32 = u_xlat1.x;
  u_xlat16 = (x_477 * x_479);
  let x_482 : f32 = u_xlat8.x;
  let x_483 : f32 = u_xlat16;
  u_xlat16 = ((x_482 * x_483) + 1.0f);
  let x_486 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_486)) + 1.0f);
  let x_493 : f32 = u_xlat1.x;
  let x_495 : f32 = u_xlat1.x;
  u_xlat9 = (x_493 * x_495);
  let x_497 : f32 = u_xlat9;
  let x_498 : f32 = u_xlat9;
  u_xlat9 = (x_497 * x_498);
  let x_501 : f32 = u_xlat1.x;
  let x_502 : f32 = u_xlat9;
  u_xlat1.x = (x_501 * x_502);
  let x_506 : f32 = u_xlat8.x;
  let x_508 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_506 * x_508) + 1.0f);
  let x_513 : f32 = u_xlat8.x;
  let x_514 : f32 = u_xlat16;
  u_xlat8.x = (x_513 * x_514);
  let x_517 : f32 = u_xlat25;
  let x_518 : f32 = u_xlat25;
  u_xlat16 = (x_517 * x_518);
  let x_520 : f32 = u_xlat16;
  u_xlat16 = max(x_520, 0.002f);
  let x_523 : f32 = u_xlat16;
  u_xlat1.x = (-(x_523) + 1.0f);
  let x_527 : f32 = u_xlat24;
  let x_530 : f32 = u_xlat1.x;
  let x_532 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_527) * x_530) + x_532);
  let x_535 : f32 = u_xlat2.x;
  let x_537 : f32 = u_xlat1.x;
  let x_539 : f32 = u_xlat16;
  u_xlat1.x = ((x_535 * x_537) + x_539);
  let x_542 : f32 = u_xlat24;
  let x_545 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_542) * x_545);
  let x_548 : f32 = u_xlat2.x;
  let x_549 : f32 = u_xlat9;
  let x_551 : f32 = u_xlat24;
  u_xlat24 = ((x_548 * x_549) + x_551);
  let x_553 : f32 = u_xlat24;
  u_xlat24 = (x_553 + 0.00001f);
  let x_556 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_556);
  let x_558 : f32 = u_xlat16;
  let x_559 : f32 = u_xlat16;
  u_xlat16 = (x_558 * x_559);
  let x_561 : f32 = u_xlat10;
  let x_562 : f32 = u_xlat16;
  let x_564 : f32 = u_xlat10;
  u_xlat1.x = ((x_561 * x_562) + -(x_564));
  let x_569 : f32 = u_xlat1.x;
  let x_570 : f32 = u_xlat10;
  u_xlat1.x = ((x_569 * x_570) + 1.0f);
  let x_574 : f32 = u_xlat16;
  u_xlat16 = (x_574 * 0.318309873f);
  let x_578 : f32 = u_xlat1.x;
  let x_580 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_578 * x_580) + 0.0000001f);
  let x_585 : f32 = u_xlat16;
  let x_587 : f32 = u_xlat1.x;
  u_xlat16 = (x_585 / x_587);
  let x_589 : f32 = u_xlat16;
  let x_590 : f32 = u_xlat24;
  u_xlat8.y = (x_589 * x_590);
  let x_593 : vec3<f32> = u_xlat2;
  let x_595 : vec3<f32> = u_xlat8;
  let x_597 : vec2<f32> = (vec2<f32>(x_593.x, x_593.x) * vec2<f32>(x_595.x, x_595.y));
  let x_598 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_597.x, x_597.y, x_598.z);
  let x_601 : f32 = u_xlat8.y;
  u_xlat16 = (x_601 * 3.141592741f);
  let x_604 : f32 = u_xlat16;
  u_xlat16 = max(x_604, 0.0f);
  let x_606 : vec4<f32> = u_xlat3;
  let x_608 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_606.x, x_606.y, x_606.z), vec3<f32>(x_608.x, x_608.y, x_608.z));
  let x_612 : f32 = u_xlat24;
  u_xlatb24 = !((x_612 == 0.0f));
  let x_614 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_614);
  let x_616 : f32 = u_xlat24;
  let x_617 : f32 = u_xlat16;
  u_xlat16 = (x_616 * x_617);
  let x_619 : vec3<f32> = u_xlat8;
  let x_621 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_619.x, x_619.x, x_619.x) * x_621);
  let x_623 : vec3<f32> = u_xlat6;
  let x_624 : f32 = u_xlat16;
  u_xlat8 = (x_623 * vec3<f32>(x_624, x_624, x_624));
  let x_628 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_628) + 1.0f);
  let x_633 : f32 = u_xlat0.x;
  let x_635 : f32 = u_xlat0.x;
  u_xlat25 = (x_633 * x_635);
  let x_637 : f32 = u_xlat25;
  let x_638 : f32 = u_xlat25;
  u_xlat25 = (x_637 * x_638);
  let x_641 : f32 = u_xlat0.x;
  let x_642 : f32 = u_xlat25;
  u_xlat0.x = (x_641 * x_642);
  let x_645 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_645.x, x_645.y, x_645.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_650 : vec3<f32> = u_xlat2;
  let x_651 : vec3<f32> = u_xlat0;
  let x_654 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_650 * vec3<f32>(x_651.x, x_651.x, x_651.x)) + vec3<f32>(x_654.x, x_654.y, x_654.z));
  let x_657 : vec3<f32> = u_xlat8;
  let x_658 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_657 * x_658);
  let x_662 : vec4<f32> = u_xlat4;
  let x_664 : vec3<f32> = u_xlat1;
  let x_666 : vec3<f32> = u_xlat0;
  let x_667 : vec3<f32> = ((vec3<f32>(x_662.x, x_662.y, x_662.z) * x_664) + x_666);
  let x_668 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_667.x, x_667.y, x_667.z, x_668.w);
  let x_671 : f32 = u_xlat4.w;
  SV_Target0.w = x_671;
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

