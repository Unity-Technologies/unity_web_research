struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  x_LightShadowData : vec4<f32>,
  unity_ShadowFadeCenterAndType : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_MatrixV : mat4x4<f32>,
  unity_SpecCube0_BoxMax : vec4<f32>,
  unity_SpecCube0_BoxMin : vec4<f32>,
  unity_SpecCube0_ProbePosition : vec4<f32>,
  unity_SpecCube0_HDR : vec4<f32>,
  unity_SpecCube1_BoxMax : vec4<f32>,
  unity_SpecCube1_BoxMin : vec4<f32>,
  unity_SpecCube1_ProbePosition : vec4<f32>,
  unity_SpecCube1_HDR : vec4<f32>,
  unity_ProbeVolumeParams : vec4<f32>,
  unity_ProbeVolumeWorldToObject : mat4x4<f32>,
  unity_ProbeVolumeSizeInv : vec3<f32>,
  @size(4)
  padding_1 : u32,
  unity_ProbeVolumeMin : vec3<f32>,
  @size(4)
  padding_2 : u32,
  x_LightColor0 : vec4<f32>,
  x_Glossiness : f32,
  x_Metallic : f32,
  x_Cutoff : f32,
  x_Cutoff2 : f32,
  x_EdgeSizeBot : f32,
  x_EdgeSizeTop : f32,
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_EdgeColor1 : vec4<f32>,
  x_EdgeColor2 : vec4<f32>,
  x_bounds : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat1 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_37 : PGlobals;

var<private> u_xlat48 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(15) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat49 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat50 : f32;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(13) var sampler_Noise : sampler;

var<private> u_xlat35 : f32;

var<private> u_xlat51 : f32;

var<private> u_xlatb51 : bool;

var<private> u_xlat20 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlat21 : f32;

var<private> u_xlat52 : f32;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(14) var sampler_Normal : sampler;

var<private> u_xlatb49 : bool;

var<private> u_xlatb50 : bool;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(10) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec3<f32>;

var<private> u_xlat12 : vec3<f32>;

var<private> u_xlatb13 : vec3<bool>;

@group(0) @binding(6) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlatb15 : vec3<bool>;

@group(0) @binding(7) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat17 : f32;

var<private> u_xlat33 : f32;

var<private> u_xlat34 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_521 : vec3<f32>;
  var hlslcc_movcTemp : vec3<f32>;
  var x_736 : f32;
  var x_748 : f32;
  var x_760 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_907 : f32;
  var x_919 : f32;
  var x_931 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_17;
  let x_23 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_23;
  let x_28 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_28;
  let x_32 : vec3<f32> = u_xlat0;
  let x_42 : vec3<f32> = x_37.x_WorldSpaceCameraPos;
  u_xlat1 = (-(x_32) + x_42);
  let x_45 : vec3<f32> = u_xlat1;
  let x_46 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat48;
  let x_54 : vec3<f32> = u_xlat1;
  let x_55 : vec3<f32> = (vec3<f32>(x_52, x_52, x_52) * x_54);
  let x_56 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_55.x, x_55.y, x_55.z, x_56.w);
  let x_72 : vec2<f32> = vs_TEXCOORD0;
  let x_73 : vec4<f32> = textureSample(x_MetallicSmooth, sampler_MetallicSmooth, x_72);
  let x_74 : vec2<f32> = vec2<f32>(x_73.x, x_73.w);
  let x_75 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_74.x, x_74.y, x_75.z);
  let x_78 : vec3<f32> = u_xlat0;
  let x_84 : vec4<f32> = x_37.unity_ObjectToWorld[3i];
  u_xlat4 = (vec4<f32>(x_78.z, x_78.y, x_78.x, x_78.y) + -(vec4<f32>(x_84.z, x_84.y, x_84.x, x_84.y)));
  let x_89 : vec4<f32> = u_xlat4;
  let x_94 : vec3<f32> = (vec3<f32>(x_89.w, x_89.x, x_89.z) * vec3<f32>(6.0f, 0.200000003f, 0.200000003f));
  let x_95 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_94.x, x_94.y, x_95.z, x_94.z);
  let x_101 : f32 = x_37.x_Cutoff;
  let x_103 : f32 = x_37.x_Cutoff;
  u_xlat49 = (x_101 + x_103);
  let x_107 : f32 = u_xlat4.w;
  let x_110 : f32 = u_xlat49;
  u_xlat6.x = ((x_107 * 2.0f) + x_110);
  let x_114 : f32 = u_xlat4.y;
  let x_118 : f32 = x_37.x_Cutoff;
  u_xlat6.z = ((x_114 * 4.0f) + x_118);
  let x_123 : f32 = x_37.x_bounds.y;
  u_xlat49 = (x_123 + 0.200000003f);
  let x_125 : vec4<f32> = u_xlat5;
  let x_126 : vec2<f32> = vec2<f32>(x_125.y, x_125.w);
  let x_127 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_127.x, x_126.x, x_127.z, x_126.y);
  let x_135 : vec4<f32> = u_xlat6;
  let x_137 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_135.x, x_135.y));
  u_xlat50 = x_137.x;
  let x_143 : vec4<f32> = u_xlat6;
  let x_145 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_143.z, x_143.w));
  u_xlat35 = x_145.x;
  let x_147 : f32 = u_xlat50;
  let x_149 : f32 = u_xlat35;
  u_xlat50 = dot(vec2<f32>(x_147, x_147), vec2<f32>(x_149, x_149));
  u_xlat5.y = 0.0f;
  let x_157 : vec4<f32> = u_xlat5;
  let x_159 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_157.x, x_157.y));
  u_xlat35 = x_159.x;
  let x_162 : f32 = u_xlat49;
  u_xlat51 = (x_162 * 0.5f);
  let x_166 : f32 = x_37.x_Cutoff;
  let x_167 : f32 = u_xlat49;
  let x_169 : f32 = u_xlat51;
  u_xlat49 = ((x_166 * x_167) + -(x_169));
  let x_176 : f32 = u_xlat4.w;
  let x_177 : f32 = u_xlat49;
  u_xlatb51 = (x_176 >= x_177);
  let x_179 : bool = u_xlatb51;
  u_xlat4.x = select(0.0f, 1.0f, x_179);
  let x_184 : f32 = u_xlat49;
  let x_187 : f32 = x_37.x_EdgeSizeBot;
  u_xlat20 = (x_184 + -(x_187));
  let x_191 : f32 = u_xlat49;
  let x_192 : f32 = u_xlat20;
  u_xlat36 = (x_191 + -(x_192));
  let x_195 : f32 = u_xlat20;
  let x_198 : f32 = u_xlat4.w;
  u_xlat20 = (-(x_195) + x_198);
  let x_200 : f32 = u_xlat36;
  u_xlat36 = (1.0f / x_200);
  let x_202 : f32 = u_xlat36;
  let x_203 : f32 = u_xlat20;
  u_xlat20 = (x_202 * x_203);
  let x_205 : f32 = u_xlat20;
  u_xlat20 = clamp(x_205, 0.0f, 1.0f);
  let x_207 : f32 = u_xlat20;
  u_xlat36 = ((x_207 * -2.0f) + 3.0f);
  let x_212 : f32 = u_xlat20;
  let x_213 : f32 = u_xlat20;
  u_xlat20 = (x_212 * x_213);
  let x_215 : f32 = u_xlat20;
  let x_216 : f32 = u_xlat36;
  u_xlat5.x = (x_215 * x_216);
  let x_220 : f32 = u_xlat49;
  let x_223 : f32 = x_37.x_EdgeSizeTop;
  u_xlat21 = (x_220 + x_223);
  let x_225 : f32 = u_xlat49;
  let x_226 : f32 = u_xlat21;
  u_xlat49 = (x_225 + -(x_226));
  let x_231 : f32 = u_xlat4.w;
  let x_232 : f32 = u_xlat21;
  u_xlat52 = (x_231 + -(x_232));
  let x_235 : f32 = u_xlat49;
  u_xlat49 = (1.0f / x_235);
  let x_237 : f32 = u_xlat49;
  let x_238 : f32 = u_xlat52;
  u_xlat49 = (x_237 * x_238);
  let x_240 : f32 = u_xlat49;
  u_xlat49 = clamp(x_240, 0.0f, 1.0f);
  let x_242 : f32 = u_xlat49;
  u_xlat52 = ((x_242 * -2.0f) + 3.0f);
  let x_245 : f32 = u_xlat49;
  let x_246 : f32 = u_xlat49;
  u_xlat49 = (x_245 * x_246);
  let x_248 : f32 = u_xlat49;
  let x_249 : f32 = u_xlat52;
  u_xlat49 = (x_248 * x_249);
  let x_251 : vec4<f32> = u_xlat5;
  let x_255 : vec4<f32> = x_37.x_EdgeColor1;
  let x_257 : vec3<f32> = (vec3<f32>(x_251.x, x_251.x, x_251.x) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : bool = u_xlatb51;
  u_xlat51 = select(1.0f, 0.0f, x_260);
  let x_262 : f32 = u_xlat51;
  let x_264 : vec4<f32> = u_xlat5;
  let x_266 : vec3<f32> = (vec3<f32>(x_262, x_262, x_262) * vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec4<f32> = x_37.x_EdgeColor1;
  let x_274 : vec4<f32> = x_37.x_EdgeColor2;
  let x_277 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.z) + -(vec3<f32>(x_274.x, x_274.y, x_274.z)));
  let x_278 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : f32 = u_xlat49;
  let x_282 : vec4<f32> = u_xlat6;
  let x_286 : vec4<f32> = x_37.x_EdgeColor2;
  let x_288 : vec3<f32> = ((vec3<f32>(x_280, x_280, x_280) * vec3<f32>(x_282.x, x_282.y, x_282.z)) + vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_297 : vec2<f32> = vs_TEXCOORD0;
  let x_298 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_297);
  u_xlat7 = vec3<f32>(x_298.x, x_298.y, x_298.z);
  let x_301 : vec3<f32> = u_xlat7;
  let x_304 : vec4<f32> = x_37.x_Color;
  u_xlat8 = (x_301 * vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_308 : vec4<f32> = u_xlat5;
  u_xlat9 = (vec3<f32>(x_308.x, x_308.y, x_308.z) * vec3<f32>(0.5f, 0.5f, 0.5f));
  let x_312 : vec4<f32> = u_xlat5;
  let x_314 : f32 = u_xlat35;
  let x_317 : vec3<f32> = u_xlat9;
  let x_318 : vec3<f32> = ((vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314, x_314, x_314)) + x_317);
  let x_319 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_318.x, x_318.y, x_318.z, x_319.w);
  let x_321 : vec4<f32> = u_xlat6;
  let x_323 : vec4<f32> = u_xlat4;
  let x_326 : vec4<f32> = u_xlat5;
  let x_328 : vec3<f32> = ((vec3<f32>(x_321.x, x_321.y, x_321.z) * vec3<f32>(x_323.x, x_323.x, x_323.x)) + vec3<f32>(x_326.x, x_326.y, x_326.z));
  let x_329 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_328.x, x_328.y, x_328.z, x_329.w);
  let x_336 : vec2<f32> = vs_TEXCOORD0;
  let x_337 : vec4<f32> = textureSample(x_Normal, sampler_Normal, x_336);
  let x_338 : vec3<f32> = vec3<f32>(x_337.x, x_337.y, x_337.w);
  let x_339 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_338.x, x_338.y, x_338.z, x_339.w);
  let x_342 : f32 = u_xlat6.z;
  let x_344 : f32 = u_xlat6.x;
  u_xlat6.x = (x_342 * x_344);
  let x_347 : vec4<f32> = u_xlat6;
  let x_353 : vec2<f32> = ((vec2<f32>(x_347.x, x_347.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_354 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_353.x, x_353.y, x_354.z, x_354.w);
  let x_356 : vec4<f32> = u_xlat6;
  let x_358 : vec4<f32> = u_xlat6;
  u_xlat35 = dot(vec2<f32>(x_356.x, x_356.y), vec2<f32>(x_358.x, x_358.y));
  let x_361 : f32 = u_xlat35;
  u_xlat35 = min(x_361, 1.0f);
  let x_363 : f32 = u_xlat35;
  u_xlat35 = (-(x_363) + 1.0f);
  let x_366 : f32 = u_xlat35;
  u_xlat6.z = sqrt(x_366);
  let x_369 : vec3<f32> = u_xlat3;
  let x_373 : f32 = x_37.x_Metallic;
  let x_376 : f32 = x_37.x_Glossiness;
  let x_378 : vec2<f32> = (vec2<f32>(x_369.x, x_369.y) * vec2<f32>(x_373, x_376));
  let x_379 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_381 : f32 = u_xlat36;
  let x_383 : f32 = u_xlat20;
  u_xlat35 = ((-(x_381) * x_383) + 1.0f);
  let x_386 : f32 = u_xlat35;
  let x_388 : f32 = u_xlat3.x;
  u_xlat3.x = (x_386 * x_388);
  let x_391 : f32 = u_xlat50;
  let x_392 : f32 = u_xlat49;
  let x_394 : f32 = u_xlat51;
  u_xlat49 = ((x_391 * x_392) + x_394);
  let x_396 : f32 = u_xlat49;
  let x_398 : f32 = x_37.x_Cutoff;
  u_xlat49 = (x_396 + -(x_398));
  let x_401 : f32 = u_xlat49;
  let x_404 : f32 = x_37.x_Cutoff2;
  u_xlat49 = (x_401 + -(x_404));
  let x_408 : f32 = u_xlat49;
  u_xlatb49 = (x_408 < 0.0f);
  let x_410 : bool = u_xlatb49;
  if (((select(0i, 1i, x_410) * -1i) != 0i)) {
    discard;
  }
  let x_421 : f32 = x_37.unity_MatrixV[0i].z;
  u_xlat4.x = x_421;
  let x_424 : f32 = x_37.unity_MatrixV[1i].z;
  u_xlat4.y = x_424;
  let x_428 : f32 = x_37.unity_MatrixV[2i].z;
  u_xlat4.z = x_428;
  let x_430 : vec3<f32> = u_xlat1;
  let x_431 : vec4<f32> = u_xlat4;
  u_xlat49 = dot(x_430, vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec3<f32> = u_xlat0;
  let x_437 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_440 : vec3<f32> = (x_434 + -(vec3<f32>(x_437.x, x_437.y, x_437.z)));
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat4;
  let x_445 : vec4<f32> = u_xlat4;
  u_xlat50 = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : f32 = u_xlat50;
  u_xlat50 = sqrt(x_448);
  let x_450 : f32 = u_xlat49;
  let x_452 : f32 = u_xlat50;
  u_xlat50 = (-(x_450) + x_452);
  let x_455 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_456 : f32 = u_xlat50;
  let x_458 : f32 = u_xlat49;
  u_xlat49 = ((x_455 * x_456) + x_458);
  let x_460 : f32 = u_xlat49;
  let x_462 : f32 = x_37.x_LightShadowData.z;
  let x_465 : f32 = x_37.x_LightShadowData.w;
  u_xlat49 = ((x_460 * x_462) + x_465);
  let x_467 : f32 = u_xlat49;
  u_xlat49 = clamp(x_467, 0.0f, 1.0f);
  let x_472 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb50 = (x_472 == 1.0f);
  let x_474 : bool = u_xlatb50;
  if (x_474) {
    let x_478 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb50 = (x_478 == 1.0f);
    let x_480 : vec4<f32> = vs_TEXCOORD2;
    let x_484 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_486 : vec3<f32> = (vec3<f32>(x_480.w, x_480.w, x_480.w) * vec3<f32>(x_484.x, x_484.y, x_484.z));
    let x_487 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_486.x, x_486.y, x_486.z, x_487.w);
    let x_490 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_492 : vec4<f32> = vs_TEXCOORD1;
    let x_495 : vec4<f32> = u_xlat4;
    let x_497 : vec3<f32> = ((vec3<f32>(x_490.x, x_490.y, x_490.z) * vec3<f32>(x_492.w, x_492.w, x_492.w)) + vec3<f32>(x_495.x, x_495.y, x_495.z));
    let x_498 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_497.x, x_497.y, x_497.z, x_498.w);
    let x_501 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_503 : vec4<f32> = vs_TEXCOORD3;
    let x_506 : vec4<f32> = u_xlat4;
    let x_508 : vec3<f32> = ((vec3<f32>(x_501.x, x_501.y, x_501.z) * vec3<f32>(x_503.w, x_503.w, x_503.w)) + vec3<f32>(x_506.x, x_506.y, x_506.z));
    let x_509 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_508.x, x_508.y, x_508.z, x_509.w);
    let x_511 : vec4<f32> = u_xlat4;
    let x_514 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_516 : vec3<f32> = (vec3<f32>(x_511.x, x_511.y, x_511.z) + vec3<f32>(x_514.x, x_514.y, x_514.z));
    let x_517 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_516.x, x_516.y, x_516.z, x_517.w);
    let x_519 : bool = u_xlatb50;
    if (x_519) {
      let x_524 : vec4<f32> = u_xlat4;
      x_521 = vec3<f32>(x_524.x, x_524.y, x_524.z);
    } else {
      let x_527 : vec3<f32> = u_xlat0;
      x_521 = x_527;
    }
    let x_528 : vec3<f32> = x_521;
    let x_529 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_528.x, x_528.y, x_528.z, x_529.w);
    let x_531 : vec4<f32> = u_xlat4;
    let x_535 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_537 : vec3<f32> = (vec3<f32>(x_531.x, x_531.y, x_531.z) + -(x_535));
    let x_538 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_537.x, x_537.y, x_537.z, x_538.w);
    let x_540 : vec4<f32> = u_xlat4;
    let x_544 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_545 : vec3<f32> = (vec3<f32>(x_540.x, x_540.y, x_540.z) * x_544);
    let x_546 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_546.x, x_545.x, x_545.y, x_545.z);
    let x_549 : f32 = u_xlat4.y;
    u_xlat50 = ((x_549 * 0.25f) + 0.75f);
    let x_555 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat51 = ((x_555 * 0.5f) + 0.75f);
    let x_558 : f32 = u_xlat50;
    let x_559 : f32 = u_xlat51;
    u_xlat4.x = max(x_558, x_559);
    let x_570 : vec4<f32> = u_xlat4;
    let x_572 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_570.x, x_570.z, x_570.w));
    u_xlat4 = x_572;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_578 : vec4<f32> = u_xlat4;
  let x_580 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat50 = dot(x_578, x_580);
  let x_582 : f32 = u_xlat50;
  u_xlat50 = clamp(x_582, 0.0f, 1.0f);
  let x_585 : vec4<f32> = vs_TEXCOORD6;
  let x_587 : vec4<f32> = vs_TEXCOORD6;
  let x_589 : vec2<f32> = (vec2<f32>(x_585.x, x_585.y) / vec2<f32>(x_587.w, x_587.w));
  let x_590 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_589.x, x_589.y, x_590.z, x_590.w);
  let x_597 : vec4<f32> = u_xlat4;
  let x_599 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_597.x, x_597.y));
  u_xlat51 = x_599.x;
  let x_601 : f32 = u_xlat50;
  let x_602 : f32 = u_xlat51;
  u_xlat50 = (x_601 + -(x_602));
  let x_605 : f32 = u_xlat49;
  let x_606 : f32 = u_xlat50;
  let x_608 : f32 = u_xlat51;
  u_xlat49 = ((x_605 * x_606) + x_608);
  let x_610 : vec4<f32> = vs_TEXCOORD1;
  let x_612 : vec4<f32> = u_xlat6;
  u_xlat4.x = dot(vec3<f32>(x_610.x, x_610.y, x_610.z), vec3<f32>(x_612.x, x_612.y, x_612.z));
  let x_616 : vec4<f32> = vs_TEXCOORD2;
  let x_618 : vec4<f32> = u_xlat6;
  u_xlat4.y = dot(vec3<f32>(x_616.x, x_616.y, x_616.z), vec3<f32>(x_618.x, x_618.y, x_618.z));
  let x_622 : vec4<f32> = vs_TEXCOORD3;
  let x_624 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_622.x, x_622.y, x_622.z), vec3<f32>(x_624.x, x_624.y, x_624.z));
  let x_628 : vec4<f32> = u_xlat4;
  let x_630 : vec4<f32> = u_xlat4;
  u_xlat50 = dot(vec3<f32>(x_628.x, x_628.y, x_628.z), vec3<f32>(x_630.x, x_630.y, x_630.z));
  let x_633 : f32 = u_xlat50;
  u_xlat50 = inverseSqrt(x_633);
  let x_635 : f32 = u_xlat50;
  let x_637 : vec4<f32> = u_xlat4;
  let x_639 : vec3<f32> = (vec3<f32>(x_635, x_635, x_635) * vec3<f32>(x_637.x, x_637.y, x_637.z));
  let x_640 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_639.x, x_639.y, x_639.z, x_640.w);
  let x_643 : f32 = u_xlat3.y;
  let x_645 : f32 = u_xlat35;
  u_xlat50 = ((-(x_643) * x_645) + 1.0f);
  let x_648 : vec4<f32> = u_xlat2;
  let x_651 : vec4<f32> = u_xlat4;
  u_xlat51 = dot(-(vec3<f32>(x_648.x, x_648.y, x_648.z)), vec3<f32>(x_651.x, x_651.y, x_651.z));
  let x_654 : f32 = u_xlat51;
  let x_655 : f32 = u_xlat51;
  u_xlat51 = (x_654 + x_655);
  let x_657 : vec4<f32> = u_xlat4;
  let x_659 : f32 = u_xlat51;
  let x_663 : vec4<f32> = u_xlat2;
  let x_666 : vec3<f32> = ((vec3<f32>(x_657.x, x_657.y, x_657.z) * -(vec3<f32>(x_659, x_659, x_659))) + -(vec3<f32>(x_663.x, x_663.y, x_663.z)));
  let x_667 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_666.x, x_666.y, x_666.z, x_667.w);
  let x_669 : f32 = u_xlat49;
  let x_673 : vec4<f32> = x_37.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_669, x_669, x_669) * vec3<f32>(x_673.x, x_673.y, x_673.z));
  let x_678 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb49 = (0.0f < x_678);
  let x_680 : bool = u_xlatb49;
  if (x_680) {
    let x_683 : vec4<f32> = u_xlat6;
    let x_685 : vec4<f32> = u_xlat6;
    u_xlat49 = dot(vec3<f32>(x_683.x, x_683.y, x_683.z), vec3<f32>(x_685.x, x_685.y, x_685.z));
    let x_688 : f32 = u_xlat49;
    u_xlat49 = inverseSqrt(x_688);
    let x_691 : f32 = u_xlat49;
    let x_693 : vec4<f32> = u_xlat6;
    let x_695 : vec3<f32> = (vec3<f32>(x_691, x_691, x_691) * vec3<f32>(x_693.x, x_693.y, x_693.z));
    let x_696 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
    let x_699 : vec3<f32> = u_xlat0;
    let x_703 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    u_xlat11 = (-(x_699) + vec3<f32>(x_703.x, x_703.y, x_703.z));
    let x_706 : vec3<f32> = u_xlat11;
    let x_707 : vec4<f32> = u_xlat10;
    u_xlat11 = (x_706 / vec3<f32>(x_707.x, x_707.y, x_707.z));
    let x_711 : vec3<f32> = u_xlat0;
    let x_715 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat12 = (-(x_711) + vec3<f32>(x_715.x, x_715.y, x_715.z));
    let x_718 : vec3<f32> = u_xlat12;
    let x_719 : vec4<f32> = u_xlat10;
    u_xlat12 = (x_718 / vec3<f32>(x_719.x, x_719.y, x_719.z));
    let x_726 : vec4<f32> = u_xlat10;
    let x_729 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_726.x, x_726.y, x_726.z, x_726.x));
    u_xlatb13 = vec3<bool>(x_729.x, x_729.y, x_729.z);
    let x_732 : vec3<f32> = u_xlat11;
    hlslcc_movcTemp = x_732;
    let x_734 : bool = u_xlatb13.x;
    if (x_734) {
      let x_740 : f32 = u_xlat11.x;
      x_736 = x_740;
    } else {
      let x_743 : f32 = u_xlat12.x;
      x_736 = x_743;
    }
    let x_744 : f32 = x_736;
    hlslcc_movcTemp.x = x_744;
    let x_747 : bool = u_xlatb13.y;
    if (x_747) {
      let x_752 : f32 = u_xlat11.y;
      x_748 = x_752;
    } else {
      let x_755 : f32 = u_xlat12.y;
      x_748 = x_755;
    }
    let x_756 : f32 = x_748;
    hlslcc_movcTemp.y = x_756;
    let x_759 : bool = u_xlatb13.z;
    if (x_759) {
      let x_764 : f32 = u_xlat11.z;
      x_760 = x_764;
    } else {
      let x_767 : f32 = u_xlat12.z;
      x_760 = x_767;
    }
    let x_768 : f32 = x_760;
    hlslcc_movcTemp.z = x_768;
    let x_770 : vec3<f32> = hlslcc_movcTemp;
    u_xlat11 = x_770;
    let x_772 : f32 = u_xlat11.y;
    let x_774 : f32 = u_xlat11.x;
    u_xlat49 = min(x_772, x_774);
    let x_777 : f32 = u_xlat11.z;
    let x_778 : f32 = u_xlat49;
    u_xlat49 = min(x_777, x_778);
    let x_780 : vec3<f32> = u_xlat0;
    let x_782 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    u_xlat11 = (x_780 + -(vec3<f32>(x_782.x, x_782.y, x_782.z)));
    let x_786 : vec4<f32> = u_xlat10;
    let x_788 : f32 = u_xlat49;
    let x_791 : vec3<f32> = u_xlat11;
    let x_792 : vec3<f32> = ((vec3<f32>(x_786.x, x_786.y, x_786.z) * vec3<f32>(x_788, x_788, x_788)) + x_791);
    let x_793 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_792.x, x_792.y, x_792.z, x_793.w);
  } else {
    let x_796 : vec4<f32> = u_xlat6;
    let x_797 : vec3<f32> = vec3<f32>(x_796.x, x_796.y, x_796.z);
    let x_798 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_797.x, x_797.y, x_797.z, x_798.w);
  }
  let x_800 : f32 = u_xlat50;
  u_xlat49 = ((-(x_800) * 0.699999988f) + 1.700000048f);
  let x_806 : f32 = u_xlat49;
  let x_807 : f32 = u_xlat50;
  u_xlat49 = (x_806 * x_807);
  let x_809 : f32 = u_xlat49;
  u_xlat49 = (x_809 * 6.0f);
  let x_819 : vec4<f32> = u_xlat10;
  let x_821 : f32 = u_xlat49;
  let x_822 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_819.x, x_819.y, x_819.z), x_821);
  u_xlat10 = x_822;
  let x_824 : f32 = u_xlat10.w;
  u_xlat51 = (x_824 + -1.0f);
  let x_828 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_829 : f32 = u_xlat51;
  u_xlat51 = ((x_828 * x_829) + 1.0f);
  let x_832 : f32 = u_xlat51;
  u_xlat51 = log2(x_832);
  let x_834 : f32 = u_xlat51;
  let x_836 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat51 = (x_834 * x_836);
  let x_838 : f32 = u_xlat51;
  u_xlat51 = exp2(x_838);
  let x_840 : f32 = u_xlat51;
  let x_842 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat51 = (x_840 * x_842);
  let x_844 : vec4<f32> = u_xlat10;
  let x_846 : f32 = u_xlat51;
  u_xlat11 = (vec3<f32>(x_844.x, x_844.y, x_844.z) * vec3<f32>(x_846, x_846, x_846));
  let x_851 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb52 = (x_851 < 0.999989986f);
  let x_854 : bool = u_xlatb52;
  if (x_854) {
    let x_859 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb52 = (0.0f < x_859);
    let x_861 : bool = u_xlatb52;
    if (x_861) {
      let x_864 : vec4<f32> = u_xlat6;
      let x_866 : vec4<f32> = u_xlat6;
      u_xlat52 = dot(vec3<f32>(x_864.x, x_864.y, x_864.z), vec3<f32>(x_866.x, x_866.y, x_866.z));
      let x_869 : f32 = u_xlat52;
      u_xlat52 = inverseSqrt(x_869);
      let x_871 : f32 = u_xlat52;
      let x_873 : vec4<f32> = u_xlat6;
      u_xlat12 = (vec3<f32>(x_871, x_871, x_871) * vec3<f32>(x_873.x, x_873.y, x_873.z));
      let x_877 : vec3<f32> = u_xlat0;
      let x_881 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat13 = (-(x_877) + vec3<f32>(x_881.x, x_881.y, x_881.z));
      let x_884 : vec3<f32> = u_xlat13;
      let x_885 : vec3<f32> = u_xlat12;
      u_xlat13 = (x_884 / x_885);
      let x_888 : vec3<f32> = u_xlat0;
      let x_892 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat14 = (-(x_888) + vec3<f32>(x_892.x, x_892.y, x_892.z));
      let x_895 : vec3<f32> = u_xlat14;
      let x_896 : vec3<f32> = u_xlat12;
      u_xlat14 = (x_895 / x_896);
      let x_899 : vec3<f32> = u_xlat12;
      let x_901 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_899.x, x_899.y, x_899.z, x_899.x));
      u_xlatb15 = vec3<bool>(x_901.x, x_901.y, x_901.z);
      let x_904 : vec3<f32> = u_xlat13;
      hlslcc_movcTemp_1 = x_904;
      let x_906 : bool = u_xlatb15.x;
      if (x_906) {
        let x_911 : f32 = u_xlat13.x;
        x_907 = x_911;
      } else {
        let x_914 : f32 = u_xlat14.x;
        x_907 = x_914;
      }
      let x_915 : f32 = x_907;
      hlslcc_movcTemp_1.x = x_915;
      let x_918 : bool = u_xlatb15.y;
      if (x_918) {
        let x_923 : f32 = u_xlat13.y;
        x_919 = x_923;
      } else {
        let x_926 : f32 = u_xlat14.y;
        x_919 = x_926;
      }
      let x_927 : f32 = x_919;
      hlslcc_movcTemp_1.y = x_927;
      let x_930 : bool = u_xlatb15.z;
      if (x_930) {
        let x_935 : f32 = u_xlat13.z;
        x_931 = x_935;
      } else {
        let x_938 : f32 = u_xlat14.z;
        x_931 = x_938;
      }
      let x_939 : f32 = x_931;
      hlslcc_movcTemp_1.z = x_939;
      let x_941 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat13 = x_941;
      let x_943 : f32 = u_xlat13.y;
      let x_945 : f32 = u_xlat13.x;
      u_xlat52 = min(x_943, x_945);
      let x_948 : f32 = u_xlat13.z;
      let x_949 : f32 = u_xlat52;
      u_xlat52 = min(x_948, x_949);
      let x_951 : vec3<f32> = u_xlat0;
      let x_953 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_951 + -(vec3<f32>(x_953.x, x_953.y, x_953.z)));
      let x_957 : vec3<f32> = u_xlat12;
      let x_958 : f32 = u_xlat52;
      let x_961 : vec3<f32> = u_xlat0;
      let x_962 : vec3<f32> = ((x_957 * vec3<f32>(x_958, x_958, x_958)) + x_961);
      let x_963 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_962.x, x_962.y, x_962.z, x_963.w);
    }
    let x_969 : vec4<f32> = u_xlat6;
    let x_971 : f32 = u_xlat49;
    let x_972 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_969.x, x_969.y, x_969.z), x_971);
    u_xlat6 = x_972;
    let x_974 : f32 = u_xlat6.w;
    u_xlat0.x = (x_974 + -1.0f);
    let x_979 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_981 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_979 * x_981) + 1.0f);
    let x_986 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_986);
    let x_990 : f32 = u_xlat0.x;
    let x_992 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_990 * x_992);
    let x_996 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_996);
    let x_1000 : f32 = u_xlat0.x;
    let x_1002 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_1000 * x_1002);
    let x_1005 : vec4<f32> = u_xlat6;
    let x_1007 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_1005.x, x_1005.y, x_1005.z) * vec3<f32>(x_1007.x, x_1007.x, x_1007.x));
    let x_1010 : f32 = u_xlat51;
    let x_1012 : vec4<f32> = u_xlat10;
    let x_1015 : vec3<f32> = u_xlat0;
    let x_1017 : vec3<f32> = ((vec3<f32>(x_1010, x_1010, x_1010) * vec3<f32>(x_1012.x, x_1012.y, x_1012.z)) + -(x_1015));
    let x_1018 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1017.x, x_1017.y, x_1017.z, x_1018.w);
    let x_1021 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_1023 : vec4<f32> = u_xlat6;
    let x_1026 : vec3<f32> = u_xlat0;
    u_xlat11 = ((vec3<f32>(x_1021.w, x_1021.w, x_1021.w) * vec3<f32>(x_1023.x, x_1023.y, x_1023.z)) + x_1026);
  }
  let x_1028 : vec3<f32> = u_xlat7;
  let x_1030 : vec4<f32> = x_37.x_Color;
  u_xlat0 = ((x_1028 * vec3<f32>(x_1030.x, x_1030.y, x_1030.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1036 : vec3<f32> = u_xlat3;
  let x_1038 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1036.x, x_1036.x, x_1036.x) * x_1038) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1044 : f32 = u_xlat3.x;
  u_xlat49 = ((-(x_1044) * 0.959999979f) + 0.959999979f);
  let x_1049 : f32 = u_xlat49;
  let x_1051 : vec3<f32> = u_xlat8;
  let x_1052 : vec3<f32> = (vec3<f32>(x_1049, x_1049, x_1049) * x_1051);
  let x_1053 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1052.x, x_1052.y, x_1052.z, x_1053.w);
  let x_1055 : vec3<f32> = u_xlat1;
  let x_1056 : f32 = u_xlat48;
  let x_1060 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1055 * vec3<f32>(x_1056, x_1056, x_1056)) + vec3<f32>(x_1060.x, x_1060.y, x_1060.z));
  let x_1063 : vec3<f32> = u_xlat1;
  let x_1064 : vec3<f32> = u_xlat1;
  u_xlat48 = dot(x_1063, x_1064);
  let x_1066 : f32 = u_xlat48;
  u_xlat48 = max(x_1066, 0.001f);
  let x_1069 : f32 = u_xlat48;
  u_xlat48 = inverseSqrt(x_1069);
  let x_1071 : f32 = u_xlat48;
  let x_1073 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1071, x_1071, x_1071) * x_1073);
  let x_1075 : vec4<f32> = u_xlat4;
  let x_1077 : vec4<f32> = u_xlat2;
  u_xlat48 = dot(vec3<f32>(x_1075.x, x_1075.y, x_1075.z), vec3<f32>(x_1077.x, x_1077.y, x_1077.z));
  let x_1080 : vec4<f32> = u_xlat4;
  let x_1083 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1080.x, x_1080.y, x_1080.z), vec3<f32>(x_1083.x, x_1083.y, x_1083.z));
  let x_1088 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1088, 0.0f, 1.0f);
  let x_1092 : vec4<f32> = u_xlat4;
  let x_1094 : vec3<f32> = u_xlat1;
  u_xlat18 = dot(vec3<f32>(x_1092.x, x_1092.y, x_1092.z), x_1094);
  let x_1096 : f32 = u_xlat18;
  u_xlat18 = clamp(x_1096, 0.0f, 1.0f);
  let x_1099 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_1101 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1099.x, x_1099.y, x_1099.z), x_1101);
  let x_1105 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1105, 0.0f, 1.0f);
  let x_1110 : f32 = u_xlat1.x;
  let x_1112 : f32 = u_xlat1.x;
  u_xlat17 = (x_1110 * x_1112);
  let x_1114 : f32 = u_xlat17;
  let x_1116 : f32 = u_xlat50;
  u_xlat17 = dot(vec2<f32>(x_1114, x_1114), vec2<f32>(x_1116, x_1116));
  let x_1119 : f32 = u_xlat17;
  u_xlat17 = (x_1119 + -0.5f);
  let x_1124 : f32 = u_xlat2.x;
  u_xlat33 = (-(x_1124) + 1.0f);
  let x_1128 : f32 = u_xlat33;
  let x_1129 : f32 = u_xlat33;
  u_xlat34 = (x_1128 * x_1129);
  let x_1131 : f32 = u_xlat34;
  let x_1132 : f32 = u_xlat34;
  u_xlat34 = (x_1131 * x_1132);
  let x_1134 : f32 = u_xlat33;
  let x_1135 : f32 = u_xlat34;
  u_xlat33 = (x_1134 * x_1135);
  let x_1137 : f32 = u_xlat17;
  let x_1138 : f32 = u_xlat33;
  u_xlat33 = ((x_1137 * x_1138) + 1.0f);
  let x_1141 : f32 = u_xlat48;
  u_xlat34 = (-(abs(x_1141)) + 1.0f);
  let x_1145 : f32 = u_xlat34;
  let x_1146 : f32 = u_xlat34;
  u_xlat3.x = (x_1145 * x_1146);
  let x_1150 : f32 = u_xlat3.x;
  let x_1152 : f32 = u_xlat3.x;
  u_xlat3.x = (x_1150 * x_1152);
  let x_1155 : f32 = u_xlat34;
  let x_1157 : f32 = u_xlat3.x;
  u_xlat34 = (x_1155 * x_1157);
  let x_1159 : f32 = u_xlat17;
  let x_1160 : f32 = u_xlat34;
  u_xlat17 = ((x_1159 * x_1160) + 1.0f);
  let x_1163 : f32 = u_xlat17;
  let x_1164 : f32 = u_xlat33;
  u_xlat17 = (x_1163 * x_1164);
  let x_1167 : f32 = u_xlat2.x;
  let x_1168 : f32 = u_xlat17;
  u_xlat17 = (x_1167 * x_1168);
  let x_1170 : f32 = u_xlat50;
  let x_1171 : f32 = u_xlat50;
  u_xlat33 = (x_1170 * x_1171);
  let x_1173 : f32 = u_xlat33;
  u_xlat33 = max(x_1173, 0.002f);
  let x_1176 : f32 = u_xlat33;
  u_xlat50 = (-(x_1176) + 1.0f);
  let x_1179 : f32 = u_xlat48;
  let x_1181 : f32 = u_xlat50;
  let x_1183 : f32 = u_xlat33;
  u_xlat3.x = ((abs(x_1179) * x_1181) + x_1183);
  let x_1187 : f32 = u_xlat2.x;
  let x_1188 : f32 = u_xlat50;
  let x_1190 : f32 = u_xlat33;
  u_xlat50 = ((x_1187 * x_1188) + x_1190);
  let x_1192 : f32 = u_xlat48;
  let x_1194 : f32 = u_xlat50;
  u_xlat48 = (abs(x_1192) * x_1194);
  let x_1197 : f32 = u_xlat2.x;
  let x_1199 : f32 = u_xlat3.x;
  let x_1201 : f32 = u_xlat48;
  u_xlat48 = ((x_1197 * x_1199) + x_1201);
  let x_1203 : f32 = u_xlat48;
  u_xlat48 = (x_1203 + 0.00001f);
  let x_1206 : f32 = u_xlat48;
  u_xlat48 = (0.5f / x_1206);
  let x_1208 : f32 = u_xlat33;
  let x_1209 : f32 = u_xlat33;
  u_xlat50 = (x_1208 * x_1209);
  let x_1211 : f32 = u_xlat18;
  let x_1212 : f32 = u_xlat50;
  let x_1214 : f32 = u_xlat18;
  u_xlat3.x = ((x_1211 * x_1212) + -(x_1214));
  let x_1219 : f32 = u_xlat3.x;
  let x_1220 : f32 = u_xlat18;
  u_xlat18 = ((x_1219 * x_1220) + 1.0f);
  let x_1223 : f32 = u_xlat50;
  u_xlat50 = (x_1223 * 0.318309873f);
  let x_1226 : f32 = u_xlat18;
  let x_1227 : f32 = u_xlat18;
  u_xlat18 = ((x_1226 * x_1227) + 0.0000001f);
  let x_1231 : f32 = u_xlat50;
  let x_1232 : f32 = u_xlat18;
  u_xlat18 = (x_1231 / x_1232);
  let x_1234 : f32 = u_xlat48;
  let x_1235 : f32 = u_xlat18;
  u_xlat48 = (x_1234 * x_1235);
  let x_1238 : f32 = u_xlat2.x;
  let x_1239 : f32 = u_xlat48;
  u_xlat48 = (x_1238 * x_1239);
  let x_1241 : f32 = u_xlat48;
  u_xlat48 = (x_1241 * 3.141592741f);
  let x_1244 : f32 = u_xlat48;
  u_xlat48 = max(x_1244, 0.0f);
  let x_1246 : f32 = u_xlat33;
  let x_1247 : f32 = u_xlat33;
  u_xlat33 = ((x_1246 * x_1247) + 1.0f);
  let x_1250 : f32 = u_xlat33;
  u_xlat33 = (1.0f / x_1250);
  let x_1252 : vec3<f32> = u_xlat0;
  let x_1253 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1252, x_1253);
  let x_1258 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1258 == 0.0f));
  let x_1260 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1260);
  let x_1263 : f32 = u_xlat48;
  let x_1265 : f32 = u_xlat2.x;
  u_xlat48 = (x_1263 * x_1265);
  let x_1268 : f32 = u_xlat3.y;
  let x_1269 : f32 = u_xlat35;
  let x_1271 : f32 = u_xlat49;
  u_xlat49 = ((x_1268 * x_1269) + -(x_1271));
  let x_1274 : f32 = u_xlat49;
  u_xlat49 = (x_1274 + 1.0f);
  let x_1276 : f32 = u_xlat49;
  u_xlat49 = clamp(x_1276, 0.0f, 1.0f);
  let x_1278 : f32 = u_xlat17;
  let x_1280 : vec3<f32> = u_xlat9;
  let x_1281 : vec3<f32> = (vec3<f32>(x_1278, x_1278, x_1278) * x_1280);
  let x_1282 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1281.x, x_1281.y, x_1282.z, x_1281.z);
  let x_1284 : vec3<f32> = u_xlat9;
  let x_1285 : f32 = u_xlat48;
  u_xlat3 = (x_1284 * vec3<f32>(x_1285, x_1285, x_1285));
  let x_1289 : f32 = u_xlat1.x;
  u_xlat48 = (-(x_1289) + 1.0f);
  let x_1292 : f32 = u_xlat48;
  let x_1293 : f32 = u_xlat48;
  u_xlat1.x = (x_1292 * x_1293);
  let x_1297 : f32 = u_xlat1.x;
  let x_1299 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1297 * x_1299);
  let x_1302 : f32 = u_xlat48;
  let x_1304 : f32 = u_xlat1.x;
  u_xlat48 = (x_1302 * x_1304);
  let x_1306 : vec3<f32> = u_xlat0;
  let x_1309 : vec3<f32> = (-(x_1306) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1310 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1309.x, x_1309.y, x_1309.z, x_1310.w);
  let x_1312 : vec4<f32> = u_xlat4;
  let x_1314 : f32 = u_xlat48;
  let x_1317 : vec3<f32> = u_xlat0;
  let x_1318 : vec3<f32> = ((vec3<f32>(x_1312.x, x_1312.y, x_1312.z) * vec3<f32>(x_1314, x_1314, x_1314)) + x_1317);
  let x_1319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
  let x_1321 : vec3<f32> = u_xlat3;
  let x_1322 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1321 * vec3<f32>(x_1322.x, x_1322.y, x_1322.z));
  let x_1325 : vec4<f32> = u_xlat6;
  let x_1327 : vec4<f32> = u_xlat2;
  let x_1330 : vec3<f32> = u_xlat3;
  let x_1331 : vec3<f32> = ((vec3<f32>(x_1325.x, x_1325.y, x_1325.z) * vec3<f32>(x_1327.x, x_1327.y, x_1327.w)) + x_1330);
  let x_1332 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1331.x, x_1331.y, x_1332.z, x_1331.z);
  let x_1334 : vec3<f32> = u_xlat11;
  let x_1335 : f32 = u_xlat33;
  u_xlat1 = (x_1334 * vec3<f32>(x_1335, x_1335, x_1335));
  let x_1338 : vec3<f32> = u_xlat0;
  let x_1340 : f32 = u_xlat49;
  u_xlat3 = (-(x_1338) + vec3<f32>(x_1340, x_1340, x_1340));
  let x_1343 : f32 = u_xlat34;
  let x_1345 : vec3<f32> = u_xlat3;
  let x_1347 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1343, x_1343, x_1343) * x_1345) + x_1347);
  let x_1349 : vec3<f32> = u_xlat1;
  let x_1350 : vec3<f32> = u_xlat0;
  let x_1352 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1349 * x_1350) + vec3<f32>(x_1352.x, x_1352.y, x_1352.w));
  let x_1357 : vec4<f32> = u_xlat5;
  let x_1359 : vec3<f32> = u_xlat0;
  let x_1360 : vec3<f32> = (vec3<f32>(x_1357.x, x_1357.y, x_1357.z) + x_1359);
  let x_1361 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1360.x, x_1360.y, x_1360.z, x_1361.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD6_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

