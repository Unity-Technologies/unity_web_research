struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
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

var<private> u_xlat51 : f32;

var<private> u_xlat2 : vec4<f32>;

var<private> u_xlat3 : vec3<f32>;

@group(0) @binding(1) var x_MetallicSmooth : texture_2d<f32>;

@group(0) @binding(15) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat53 : f32;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(13) var sampler_Noise : sampler;

var<private> u_xlat37 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlatb54 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat55 : f32;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(12) var sampler_MainTex : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(14) var sampler_Normal : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlatb53 : bool;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(10) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD6 : vec4<f32>;

@group(0) @binding(5) var x_ShadowMapTexture : texture_2d<f32>;

@group(0) @binding(11) var sampler_ShadowMapTexture : sampler;

var<private> u_xlat56 : f32;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb14 : vec3<bool>;

@group(0) @binding(6) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb55 : bool;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb16 : vec3<bool>;

@group(0) @binding(7) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_522 : vec3<f32>;
  var x_728 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_912 : f32;
  var x_924 : f32;
  var x_936 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_1088 : f32;
  var x_1100 : f32;
  var x_1112 : f32;
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
  u_xlat51 = dot(x_45, x_46);
  let x_48 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_48);
  let x_52 : f32 = u_xlat51;
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
  u_xlat52 = (x_101 + x_103);
  let x_107 : f32 = u_xlat4.w;
  let x_110 : f32 = u_xlat52;
  u_xlat6.x = ((x_107 * 2.0f) + x_110);
  let x_114 : f32 = u_xlat4.y;
  let x_118 : f32 = x_37.x_Cutoff;
  u_xlat6.z = ((x_114 * 4.0f) + x_118);
  let x_123 : f32 = x_37.x_bounds.y;
  u_xlat52 = (x_123 + 0.200000003f);
  let x_125 : vec4<f32> = u_xlat5;
  let x_126 : vec2<f32> = vec2<f32>(x_125.y, x_125.w);
  let x_127 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_127.x, x_126.x, x_127.z, x_126.y);
  let x_135 : vec4<f32> = u_xlat6;
  let x_137 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_135.x, x_135.y));
  u_xlat53 = x_137.x;
  let x_143 : vec4<f32> = u_xlat6;
  let x_145 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_143.z, x_143.w));
  u_xlat37 = x_145.x;
  let x_147 : f32 = u_xlat53;
  let x_149 : f32 = u_xlat37;
  u_xlat53 = dot(vec2<f32>(x_147, x_147), vec2<f32>(x_149, x_149));
  u_xlat5.y = 0.0f;
  let x_157 : vec4<f32> = u_xlat5;
  let x_159 : vec4<f32> = textureSample(x_Noise, sampler_Noise, vec2<f32>(x_157.x, x_157.y));
  u_xlat37 = x_159.x;
  let x_162 : f32 = u_xlat52;
  u_xlat54 = (x_162 * 0.5f);
  let x_166 : f32 = x_37.x_Cutoff;
  let x_167 : f32 = u_xlat52;
  let x_169 : f32 = u_xlat54;
  u_xlat52 = ((x_166 * x_167) + -(x_169));
  let x_176 : f32 = u_xlat4.w;
  let x_177 : f32 = u_xlat52;
  u_xlatb54 = (x_176 >= x_177);
  let x_179 : bool = u_xlatb54;
  u_xlat4.x = select(0.0f, 1.0f, x_179);
  let x_184 : f32 = u_xlat52;
  let x_187 : f32 = x_37.x_EdgeSizeBot;
  u_xlat21 = (x_184 + -(x_187));
  let x_191 : f32 = u_xlat52;
  let x_192 : f32 = u_xlat21;
  u_xlat38 = (x_191 + -(x_192));
  let x_195 : f32 = u_xlat21;
  let x_198 : f32 = u_xlat4.w;
  u_xlat21 = (-(x_195) + x_198);
  let x_200 : f32 = u_xlat38;
  u_xlat38 = (1.0f / x_200);
  let x_202 : f32 = u_xlat38;
  let x_203 : f32 = u_xlat21;
  u_xlat21 = (x_202 * x_203);
  let x_205 : f32 = u_xlat21;
  u_xlat21 = clamp(x_205, 0.0f, 1.0f);
  let x_207 : f32 = u_xlat21;
  u_xlat38 = ((x_207 * -2.0f) + 3.0f);
  let x_212 : f32 = u_xlat21;
  let x_213 : f32 = u_xlat21;
  u_xlat21 = (x_212 * x_213);
  let x_215 : f32 = u_xlat21;
  let x_216 : f32 = u_xlat38;
  u_xlat5.x = (x_215 * x_216);
  let x_220 : f32 = u_xlat52;
  let x_223 : f32 = x_37.x_EdgeSizeTop;
  u_xlat22 = (x_220 + x_223);
  let x_225 : f32 = u_xlat52;
  let x_226 : f32 = u_xlat22;
  u_xlat52 = (x_225 + -(x_226));
  let x_231 : f32 = u_xlat4.w;
  let x_232 : f32 = u_xlat22;
  u_xlat55 = (x_231 + -(x_232));
  let x_235 : f32 = u_xlat52;
  u_xlat52 = (1.0f / x_235);
  let x_237 : f32 = u_xlat52;
  let x_238 : f32 = u_xlat55;
  u_xlat52 = (x_237 * x_238);
  let x_240 : f32 = u_xlat52;
  u_xlat52 = clamp(x_240, 0.0f, 1.0f);
  let x_242 : f32 = u_xlat52;
  u_xlat55 = ((x_242 * -2.0f) + 3.0f);
  let x_245 : f32 = u_xlat52;
  let x_246 : f32 = u_xlat52;
  u_xlat52 = (x_245 * x_246);
  let x_248 : f32 = u_xlat52;
  let x_249 : f32 = u_xlat55;
  u_xlat52 = (x_248 * x_249);
  let x_251 : vec4<f32> = u_xlat5;
  let x_255 : vec4<f32> = x_37.x_EdgeColor1;
  let x_257 : vec3<f32> = (vec3<f32>(x_251.x, x_251.x, x_251.x) * vec3<f32>(x_255.x, x_255.y, x_255.z));
  let x_258 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_260 : bool = u_xlatb54;
  u_xlat54 = select(1.0f, 0.0f, x_260);
  let x_262 : f32 = u_xlat54;
  let x_264 : vec4<f32> = u_xlat5;
  let x_266 : vec3<f32> = (vec3<f32>(x_262, x_262, x_262) * vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec4<f32> = x_37.x_EdgeColor1;
  let x_274 : vec4<f32> = x_37.x_EdgeColor2;
  let x_277 : vec3<f32> = (vec3<f32>(x_270.x, x_270.y, x_270.z) + -(vec3<f32>(x_274.x, x_274.y, x_274.z)));
  let x_278 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : f32 = u_xlat52;
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
  let x_314 : f32 = u_xlat37;
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
  u_xlat37 = dot(vec2<f32>(x_356.x, x_356.y), vec2<f32>(x_358.x, x_358.y));
  let x_361 : f32 = u_xlat37;
  u_xlat37 = min(x_361, 1.0f);
  let x_363 : f32 = u_xlat37;
  u_xlat37 = (-(x_363) + 1.0f);
  let x_366 : f32 = u_xlat37;
  u_xlat6.z = sqrt(x_366);
  let x_369 : vec3<f32> = u_xlat3;
  let x_373 : f32 = x_37.x_Metallic;
  let x_376 : f32 = x_37.x_Glossiness;
  let x_378 : vec2<f32> = (vec2<f32>(x_369.x, x_369.y) * vec2<f32>(x_373, x_376));
  let x_379 : vec3<f32> = u_xlat3;
  u_xlat3 = vec3<f32>(x_378.x, x_378.y, x_379.z);
  let x_381 : f32 = u_xlat38;
  let x_383 : f32 = u_xlat21;
  u_xlat37 = ((-(x_381) * x_383) + 1.0f);
  let x_386 : f32 = u_xlat37;
  let x_388 : f32 = u_xlat3.x;
  u_xlat3.x = (x_386 * x_388);
  let x_391 : f32 = u_xlat53;
  let x_392 : f32 = u_xlat52;
  let x_394 : f32 = u_xlat54;
  u_xlat52 = ((x_391 * x_392) + x_394);
  let x_396 : f32 = u_xlat52;
  let x_398 : f32 = x_37.x_Cutoff;
  u_xlat52 = (x_396 + -(x_398));
  let x_401 : f32 = u_xlat52;
  let x_404 : f32 = x_37.x_Cutoff2;
  u_xlat52 = (x_401 + -(x_404));
  let x_408 : f32 = u_xlat52;
  u_xlatb52 = (x_408 < 0.0f);
  let x_410 : bool = u_xlatb52;
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
  u_xlat52 = dot(x_430, vec3<f32>(x_431.x, x_431.y, x_431.z));
  let x_434 : vec3<f32> = u_xlat0;
  let x_437 : vec4<f32> = x_37.unity_ShadowFadeCenterAndType;
  let x_440 : vec3<f32> = (x_434 + -(vec3<f32>(x_437.x, x_437.y, x_437.z)));
  let x_441 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_440.x, x_440.y, x_440.z, x_441.w);
  let x_443 : vec4<f32> = u_xlat4;
  let x_445 : vec4<f32> = u_xlat4;
  u_xlat53 = dot(vec3<f32>(x_443.x, x_443.y, x_443.z), vec3<f32>(x_445.x, x_445.y, x_445.z));
  let x_448 : f32 = u_xlat53;
  u_xlat53 = sqrt(x_448);
  let x_450 : f32 = u_xlat52;
  let x_452 : f32 = u_xlat53;
  u_xlat53 = (-(x_450) + x_452);
  let x_455 : f32 = x_37.unity_ShadowFadeCenterAndType.w;
  let x_456 : f32 = u_xlat53;
  let x_458 : f32 = u_xlat52;
  u_xlat52 = ((x_455 * x_456) + x_458);
  let x_460 : f32 = u_xlat52;
  let x_463 : f32 = x_37.x_LightShadowData.z;
  let x_466 : f32 = x_37.x_LightShadowData.w;
  u_xlat52 = ((x_460 * x_463) + x_466);
  let x_468 : f32 = u_xlat52;
  u_xlat52 = clamp(x_468, 0.0f, 1.0f);
  let x_473 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb53 = (x_473 == 1.0f);
  let x_475 : bool = u_xlatb53;
  if (x_475) {
    let x_479 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb54 = (x_479 == 1.0f);
    let x_481 : vec4<f32> = vs_TEXCOORD2;
    let x_485 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_487 : vec3<f32> = (vec3<f32>(x_481.w, x_481.w, x_481.w) * vec3<f32>(x_485.x, x_485.y, x_485.z));
    let x_488 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_487.x, x_487.y, x_487.z, x_488.w);
    let x_491 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_493 : vec4<f32> = vs_TEXCOORD1;
    let x_496 : vec4<f32> = u_xlat4;
    let x_498 : vec3<f32> = ((vec3<f32>(x_491.x, x_491.y, x_491.z) * vec3<f32>(x_493.w, x_493.w, x_493.w)) + vec3<f32>(x_496.x, x_496.y, x_496.z));
    let x_499 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_498.x, x_498.y, x_498.z, x_499.w);
    let x_502 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_504 : vec4<f32> = vs_TEXCOORD3;
    let x_507 : vec4<f32> = u_xlat4;
    let x_509 : vec3<f32> = ((vec3<f32>(x_502.x, x_502.y, x_502.z) * vec3<f32>(x_504.w, x_504.w, x_504.w)) + vec3<f32>(x_507.x, x_507.y, x_507.z));
    let x_510 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_509.x, x_509.y, x_509.z, x_510.w);
    let x_512 : vec4<f32> = u_xlat4;
    let x_515 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_517 : vec3<f32> = (vec3<f32>(x_512.x, x_512.y, x_512.z) + vec3<f32>(x_515.x, x_515.y, x_515.z));
    let x_518 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_517.x, x_517.y, x_517.z, x_518.w);
    let x_520 : bool = u_xlatb54;
    if (x_520) {
      let x_525 : vec4<f32> = u_xlat4;
      x_522 = vec3<f32>(x_525.x, x_525.y, x_525.z);
    } else {
      let x_528 : vec3<f32> = u_xlat0;
      x_522 = x_528;
    }
    let x_529 : vec3<f32> = x_522;
    let x_530 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_529.x, x_529.y, x_529.z, x_530.w);
    let x_532 : vec4<f32> = u_xlat4;
    let x_536 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_538 : vec3<f32> = (vec3<f32>(x_532.x, x_532.y, x_532.z) + -(x_536));
    let x_539 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_538.x, x_538.y, x_538.z, x_539.w);
    let x_541 : vec4<f32> = u_xlat4;
    let x_545 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_546 : vec3<f32> = (vec3<f32>(x_541.x, x_541.y, x_541.z) * x_545);
    let x_547 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_547.x, x_546.x, x_546.y, x_546.z);
    let x_550 : f32 = u_xlat4.y;
    u_xlat54 = ((x_550 * 0.25f) + 0.75f);
    let x_556 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat21 = ((x_556 * 0.5f) + 0.75f);
    let x_559 : f32 = u_xlat54;
    let x_560 : f32 = u_xlat21;
    u_xlat4.x = max(x_559, x_560);
    let x_571 : vec4<f32> = u_xlat4;
    let x_573 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_571.x, x_571.z, x_571.w));
    u_xlat4 = x_573;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_579 : vec4<f32> = u_xlat4;
  let x_582 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat54 = dot(x_579, x_582);
  let x_584 : f32 = u_xlat54;
  u_xlat54 = clamp(x_584, 0.0f, 1.0f);
  let x_587 : vec4<f32> = vs_TEXCOORD6;
  let x_589 : vec4<f32> = vs_TEXCOORD6;
  let x_591 : vec2<f32> = (vec2<f32>(x_587.x, x_587.y) / vec2<f32>(x_589.w, x_589.w));
  let x_592 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_591.x, x_591.y, x_592.z, x_592.w);
  let x_599 : vec4<f32> = u_xlat4;
  let x_601 : vec4<f32> = textureSample(x_ShadowMapTexture, sampler_ShadowMapTexture, vec2<f32>(x_599.x, x_599.y));
  u_xlat4.x = x_601.x;
  let x_604 : f32 = u_xlat54;
  let x_606 : f32 = u_xlat4.x;
  u_xlat54 = (x_604 + -(x_606));
  let x_609 : f32 = u_xlat52;
  let x_610 : f32 = u_xlat54;
  let x_613 : f32 = u_xlat4.x;
  u_xlat52 = ((x_609 * x_610) + x_613);
  let x_615 : vec4<f32> = vs_TEXCOORD1;
  let x_617 : vec4<f32> = u_xlat6;
  u_xlat4.x = dot(vec3<f32>(x_615.x, x_615.y, x_615.z), vec3<f32>(x_617.x, x_617.y, x_617.z));
  let x_621 : vec4<f32> = vs_TEXCOORD2;
  let x_623 : vec4<f32> = u_xlat6;
  u_xlat4.y = dot(vec3<f32>(x_621.x, x_621.y, x_621.z), vec3<f32>(x_623.x, x_623.y, x_623.z));
  let x_627 : vec4<f32> = vs_TEXCOORD3;
  let x_629 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_627.x, x_627.y, x_627.z), vec3<f32>(x_629.x, x_629.y, x_629.z));
  let x_633 : vec4<f32> = u_xlat4;
  let x_635 : vec4<f32> = u_xlat4;
  u_xlat54 = dot(vec3<f32>(x_633.x, x_633.y, x_633.z), vec3<f32>(x_635.x, x_635.y, x_635.z));
  let x_638 : f32 = u_xlat54;
  u_xlat54 = inverseSqrt(x_638);
  let x_640 : f32 = u_xlat54;
  let x_642 : vec4<f32> = u_xlat4;
  let x_644 : vec3<f32> = (vec3<f32>(x_640, x_640, x_640) * vec3<f32>(x_642.x, x_642.y, x_642.z));
  let x_645 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_644.x, x_644.y, x_644.z, x_645.w);
  let x_648 : f32 = u_xlat3.y;
  let x_650 : f32 = u_xlat37;
  u_xlat54 = ((-(x_648) * x_650) + 1.0f);
  let x_654 : vec4<f32> = u_xlat2;
  let x_657 : vec4<f32> = u_xlat4;
  u_xlat56 = dot(-(vec3<f32>(x_654.x, x_654.y, x_654.z)), vec3<f32>(x_657.x, x_657.y, x_657.z));
  let x_660 : f32 = u_xlat56;
  let x_661 : f32 = u_xlat56;
  u_xlat56 = (x_660 + x_661);
  let x_663 : vec4<f32> = u_xlat4;
  let x_665 : f32 = u_xlat56;
  let x_669 : vec4<f32> = u_xlat2;
  let x_672 : vec3<f32> = ((vec3<f32>(x_663.x, x_663.y, x_663.z) * -(vec3<f32>(x_665, x_665, x_665))) + -(vec3<f32>(x_669.x, x_669.y, x_669.z)));
  let x_673 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_672.x, x_672.y, x_672.z, x_673.w);
  let x_675 : f32 = u_xlat52;
  let x_679 : vec4<f32> = x_37.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_675, x_675, x_675) * vec3<f32>(x_679.x, x_679.y, x_679.z));
  let x_682 : bool = u_xlatb53;
  if (x_682) {
    let x_686 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb52 = (x_686 == 1.0f);
    let x_689 : vec4<f32> = vs_TEXCOORD2;
    let x_692 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_694 : vec3<f32> = (vec3<f32>(x_689.w, x_689.w, x_689.w) * vec3<f32>(x_692.x, x_692.y, x_692.z));
    let x_695 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_694.x, x_694.y, x_694.z, x_695.w);
    let x_698 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_700 : vec4<f32> = vs_TEXCOORD1;
    let x_703 : vec4<f32> = u_xlat10;
    let x_705 : vec3<f32> = ((vec3<f32>(x_698.x, x_698.y, x_698.z) * vec3<f32>(x_700.w, x_700.w, x_700.w)) + vec3<f32>(x_703.x, x_703.y, x_703.z));
    let x_706 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_705.x, x_705.y, x_705.z, x_706.w);
    let x_709 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_711 : vec4<f32> = vs_TEXCOORD3;
    let x_714 : vec4<f32> = u_xlat10;
    let x_716 : vec3<f32> = ((vec3<f32>(x_709.x, x_709.y, x_709.z) * vec3<f32>(x_711.w, x_711.w, x_711.w)) + vec3<f32>(x_714.x, x_714.y, x_714.z));
    let x_717 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_716.x, x_716.y, x_716.z, x_717.w);
    let x_719 : vec4<f32> = u_xlat10;
    let x_722 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_724 : vec3<f32> = (vec3<f32>(x_719.x, x_719.y, x_719.z) + vec3<f32>(x_722.x, x_722.y, x_722.z));
    let x_725 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_724.x, x_724.y, x_724.z, x_725.w);
    let x_727 : bool = u_xlatb52;
    if (x_727) {
      let x_731 : vec4<f32> = u_xlat10;
      x_728 = vec3<f32>(x_731.x, x_731.y, x_731.z);
    } else {
      let x_734 : vec3<f32> = u_xlat0;
      x_728 = x_734;
    }
    let x_735 : vec3<f32> = x_728;
    let x_736 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_735.x, x_735.y, x_735.z, x_736.w);
    let x_738 : vec4<f32> = u_xlat10;
    let x_741 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_743 : vec3<f32> = (vec3<f32>(x_738.x, x_738.y, x_738.z) + -(x_741));
    let x_744 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_743.x, x_743.y, x_743.z, x_744.w);
    let x_746 : vec4<f32> = u_xlat10;
    let x_749 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_750 : vec3<f32> = (vec3<f32>(x_746.x, x_746.y, x_746.z) * x_749);
    let x_751 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_751.x, x_750.x, x_750.y, x_750.z);
    let x_754 : f32 = u_xlat10.y;
    u_xlat52 = (x_754 * 0.25f);
    let x_757 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat53 = (x_757 * 0.5f);
    let x_760 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat56 = ((-(x_760) * 0.5f) + 0.25f);
    let x_764 : f32 = u_xlat52;
    let x_765 : f32 = u_xlat53;
    u_xlat52 = max(x_764, x_765);
    let x_767 : f32 = u_xlat56;
    let x_768 : f32 = u_xlat52;
    u_xlat10.x = min(x_767, x_768);
    let x_775 : vec4<f32> = u_xlat10;
    let x_777 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_775.x, x_775.z, x_775.w));
    u_xlat11 = x_777;
    let x_779 : vec4<f32> = u_xlat10;
    let x_782 : vec3<f32> = (vec3<f32>(x_779.x, x_779.z, x_779.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_783 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_782.x, x_782.y, x_782.z, x_783.w);
    let x_788 : vec4<f32> = u_xlat12;
    let x_790 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_788.x, x_788.y, x_788.z));
    u_xlat12 = x_790;
    let x_791 : vec4<f32> = u_xlat10;
    let x_794 : vec3<f32> = (vec3<f32>(x_791.x, x_791.z, x_791.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_795 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_794.x, x_794.y, x_794.z, x_795.w);
    let x_800 : vec4<f32> = u_xlat10;
    let x_802 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_800.x, x_800.y, x_800.z));
    u_xlat10 = x_802;
    u_xlat4.w = 1.0f;
    let x_804 : vec4<f32> = u_xlat11;
    let x_805 : vec4<f32> = u_xlat4;
    u_xlat11.x = dot(x_804, x_805);
    let x_808 : vec4<f32> = u_xlat12;
    let x_809 : vec4<f32> = u_xlat4;
    u_xlat11.y = dot(x_808, x_809);
    let x_812 : vec4<f32> = u_xlat10;
    let x_813 : vec4<f32> = u_xlat4;
    u_xlat11.z = dot(x_812, x_813);
  } else {
    u_xlat4.w = 1.0f;
    let x_819 : vec4<f32> = x_37.unity_SHAr;
    let x_820 : vec4<f32> = u_xlat4;
    u_xlat11.x = dot(x_819, x_820);
    let x_824 : vec4<f32> = x_37.unity_SHAg;
    let x_825 : vec4<f32> = u_xlat4;
    u_xlat11.y = dot(x_824, x_825);
    let x_830 : vec4<f32> = x_37.unity_SHAb;
    let x_831 : vec4<f32> = u_xlat4;
    u_xlat11.z = dot(x_830, x_831);
  }
  let x_834 : vec4<f32> = u_xlat11;
  let x_838 : vec3<f32> = vs_TEXCOORD4;
  let x_839 : vec3<f32> = (vec3<f32>(x_834.x, x_834.y, x_834.z) + x_838);
  let x_840 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_839.x, x_839.y, x_839.z, x_840.w);
  let x_842 : vec4<f32> = u_xlat10;
  let x_845 : vec3<f32> = max(vec3<f32>(x_842.x, x_842.y, x_842.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_846 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_845.x, x_845.y, x_845.z, x_846.w);
  let x_850 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb52 = (0.0f < x_850);
  let x_852 : bool = u_xlatb52;
  if (x_852) {
    let x_855 : vec4<f32> = u_xlat6;
    let x_857 : vec4<f32> = u_xlat6;
    u_xlat52 = dot(vec3<f32>(x_855.x, x_855.y, x_855.z), vec3<f32>(x_857.x, x_857.y, x_857.z));
    let x_860 : f32 = u_xlat52;
    u_xlat52 = inverseSqrt(x_860);
    let x_862 : f32 = u_xlat52;
    let x_864 : vec4<f32> = u_xlat6;
    let x_866 : vec3<f32> = (vec3<f32>(x_862, x_862, x_862) * vec3<f32>(x_864.x, x_864.y, x_864.z));
    let x_867 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
    let x_869 : vec3<f32> = u_xlat0;
    let x_873 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_875 : vec3<f32> = (-(x_869) + vec3<f32>(x_873.x, x_873.y, x_873.z));
    let x_876 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
    let x_878 : vec4<f32> = u_xlat12;
    let x_880 : vec4<f32> = u_xlat11;
    let x_882 : vec3<f32> = (vec3<f32>(x_878.x, x_878.y, x_878.z) / vec3<f32>(x_880.x, x_880.y, x_880.z));
    let x_883 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
    let x_886 : vec3<f32> = u_xlat0;
    let x_890 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat13 = (-(x_886) + vec3<f32>(x_890.x, x_890.y, x_890.z));
    let x_893 : vec3<f32> = u_xlat13;
    let x_894 : vec4<f32> = u_xlat11;
    u_xlat13 = (x_893 / vec3<f32>(x_894.x, x_894.y, x_894.z));
    let x_901 : vec4<f32> = u_xlat11;
    let x_904 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_901.x, x_901.y, x_901.z, x_901.x));
    u_xlatb14 = vec3<bool>(x_904.x, x_904.y, x_904.z);
    let x_908 : vec4<f32> = u_xlat12;
    hlslcc_movcTemp = x_908;
    let x_910 : bool = u_xlatb14.x;
    if (x_910) {
      let x_916 : f32 = u_xlat12.x;
      x_912 = x_916;
    } else {
      let x_919 : f32 = u_xlat13.x;
      x_912 = x_919;
    }
    let x_920 : f32 = x_912;
    hlslcc_movcTemp.x = x_920;
    let x_923 : bool = u_xlatb14.y;
    if (x_923) {
      let x_928 : f32 = u_xlat12.y;
      x_924 = x_928;
    } else {
      let x_931 : f32 = u_xlat13.y;
      x_924 = x_931;
    }
    let x_932 : f32 = x_924;
    hlslcc_movcTemp.y = x_932;
    let x_935 : bool = u_xlatb14.z;
    if (x_935) {
      let x_940 : f32 = u_xlat12.z;
      x_936 = x_940;
    } else {
      let x_943 : f32 = u_xlat13.z;
      x_936 = x_943;
    }
    let x_944 : f32 = x_936;
    hlslcc_movcTemp.z = x_944;
    let x_946 : vec4<f32> = hlslcc_movcTemp;
    u_xlat12 = x_946;
    let x_948 : f32 = u_xlat12.y;
    let x_950 : f32 = u_xlat12.x;
    u_xlat52 = min(x_948, x_950);
    let x_953 : f32 = u_xlat12.z;
    let x_954 : f32 = u_xlat52;
    u_xlat52 = min(x_953, x_954);
    let x_956 : vec3<f32> = u_xlat0;
    let x_958 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_961 : vec3<f32> = (x_956 + -(vec3<f32>(x_958.x, x_958.y, x_958.z)));
    let x_962 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_961.x, x_961.y, x_961.z, x_962.w);
    let x_964 : vec4<f32> = u_xlat11;
    let x_966 : f32 = u_xlat52;
    let x_969 : vec4<f32> = u_xlat12;
    let x_971 : vec3<f32> = ((vec3<f32>(x_964.x, x_964.y, x_964.z) * vec3<f32>(x_966, x_966, x_966)) + vec3<f32>(x_969.x, x_969.y, x_969.z));
    let x_972 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_971.x, x_971.y, x_971.z, x_972.w);
  } else {
    let x_975 : vec4<f32> = u_xlat6;
    let x_976 : vec3<f32> = vec3<f32>(x_975.x, x_975.y, x_975.z);
    let x_977 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_976.x, x_976.y, x_976.z, x_977.w);
  }
  let x_979 : f32 = u_xlat54;
  u_xlat52 = ((-(x_979) * 0.699999988f) + 1.700000048f);
  let x_985 : f32 = u_xlat52;
  let x_986 : f32 = u_xlat54;
  u_xlat52 = (x_985 * x_986);
  let x_988 : f32 = u_xlat52;
  u_xlat52 = (x_988 * 6.0f);
  let x_998 : vec4<f32> = u_xlat11;
  let x_1000 : f32 = u_xlat52;
  let x_1001 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_998.x, x_998.y, x_998.z), x_1000);
  u_xlat11 = x_1001;
  let x_1003 : f32 = u_xlat11.w;
  u_xlat53 = (x_1003 + -1.0f);
  let x_1007 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_1008 : f32 = u_xlat53;
  u_xlat53 = ((x_1007 * x_1008) + 1.0f);
  let x_1011 : f32 = u_xlat53;
  u_xlat53 = log2(x_1011);
  let x_1013 : f32 = u_xlat53;
  let x_1015 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat53 = (x_1013 * x_1015);
  let x_1017 : f32 = u_xlat53;
  u_xlat53 = exp2(x_1017);
  let x_1019 : f32 = u_xlat53;
  let x_1021 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat53 = (x_1019 * x_1021);
  let x_1023 : vec4<f32> = u_xlat11;
  let x_1025 : f32 = u_xlat53;
  let x_1027 : vec3<f32> = (vec3<f32>(x_1023.x, x_1023.y, x_1023.z) * vec3<f32>(x_1025, x_1025, x_1025));
  let x_1028 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_1027.x, x_1027.y, x_1027.z, x_1028.w);
  let x_1032 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb55 = (x_1032 < 0.999989986f);
  let x_1035 : bool = u_xlatb55;
  if (x_1035) {
    let x_1040 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb55 = (0.0f < x_1040);
    let x_1042 : bool = u_xlatb55;
    if (x_1042) {
      let x_1045 : vec4<f32> = u_xlat6;
      let x_1047 : vec4<f32> = u_xlat6;
      u_xlat55 = dot(vec3<f32>(x_1045.x, x_1045.y, x_1045.z), vec3<f32>(x_1047.x, x_1047.y, x_1047.z));
      let x_1050 : f32 = u_xlat55;
      u_xlat55 = inverseSqrt(x_1050);
      let x_1052 : f32 = u_xlat55;
      let x_1054 : vec4<f32> = u_xlat6;
      u_xlat13 = (vec3<f32>(x_1052, x_1052, x_1052) * vec3<f32>(x_1054.x, x_1054.y, x_1054.z));
      let x_1058 : vec3<f32> = u_xlat0;
      let x_1062 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat14 = (-(x_1058) + vec3<f32>(x_1062.x, x_1062.y, x_1062.z));
      let x_1065 : vec3<f32> = u_xlat14;
      let x_1066 : vec3<f32> = u_xlat13;
      u_xlat14 = (x_1065 / x_1066);
      let x_1069 : vec3<f32> = u_xlat0;
      let x_1073 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat15 = (-(x_1069) + vec3<f32>(x_1073.x, x_1073.y, x_1073.z));
      let x_1076 : vec3<f32> = u_xlat15;
      let x_1077 : vec3<f32> = u_xlat13;
      u_xlat15 = (x_1076 / x_1077);
      let x_1080 : vec3<f32> = u_xlat13;
      let x_1082 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_1080.x, x_1080.y, x_1080.z, x_1080.x));
      u_xlatb16 = vec3<bool>(x_1082.x, x_1082.y, x_1082.z);
      let x_1085 : vec3<f32> = u_xlat14;
      hlslcc_movcTemp_1 = x_1085;
      let x_1087 : bool = u_xlatb16.x;
      if (x_1087) {
        let x_1092 : f32 = u_xlat14.x;
        x_1088 = x_1092;
      } else {
        let x_1095 : f32 = u_xlat15.x;
        x_1088 = x_1095;
      }
      let x_1096 : f32 = x_1088;
      hlslcc_movcTemp_1.x = x_1096;
      let x_1099 : bool = u_xlatb16.y;
      if (x_1099) {
        let x_1104 : f32 = u_xlat14.y;
        x_1100 = x_1104;
      } else {
        let x_1107 : f32 = u_xlat15.y;
        x_1100 = x_1107;
      }
      let x_1108 : f32 = x_1100;
      hlslcc_movcTemp_1.y = x_1108;
      let x_1111 : bool = u_xlatb16.z;
      if (x_1111) {
        let x_1116 : f32 = u_xlat14.z;
        x_1112 = x_1116;
      } else {
        let x_1119 : f32 = u_xlat15.z;
        x_1112 = x_1119;
      }
      let x_1120 : f32 = x_1112;
      hlslcc_movcTemp_1.z = x_1120;
      let x_1122 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat14 = x_1122;
      let x_1124 : f32 = u_xlat14.y;
      let x_1126 : f32 = u_xlat14.x;
      u_xlat55 = min(x_1124, x_1126);
      let x_1129 : f32 = u_xlat14.z;
      let x_1130 : f32 = u_xlat55;
      u_xlat55 = min(x_1129, x_1130);
      let x_1132 : vec3<f32> = u_xlat0;
      let x_1134 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_1132 + -(vec3<f32>(x_1134.x, x_1134.y, x_1134.z)));
      let x_1138 : vec3<f32> = u_xlat13;
      let x_1139 : f32 = u_xlat55;
      let x_1142 : vec3<f32> = u_xlat0;
      let x_1143 : vec3<f32> = ((x_1138 * vec3<f32>(x_1139, x_1139, x_1139)) + x_1142);
      let x_1144 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_1143.x, x_1143.y, x_1143.z, x_1144.w);
    }
    let x_1150 : vec4<f32> = u_xlat6;
    let x_1152 : f32 = u_xlat52;
    let x_1153 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_1150.x, x_1150.y, x_1150.z), x_1152);
    u_xlat6 = x_1153;
    let x_1155 : f32 = u_xlat6.w;
    u_xlat0.x = (x_1155 + -1.0f);
    let x_1160 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_1162 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_1160 * x_1162) + 1.0f);
    let x_1167 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_1167);
    let x_1171 : f32 = u_xlat0.x;
    let x_1173 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_1171 * x_1173);
    let x_1177 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_1177);
    let x_1181 : f32 = u_xlat0.x;
    let x_1183 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_1181 * x_1183);
    let x_1186 : vec4<f32> = u_xlat6;
    let x_1188 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_1186.x, x_1186.y, x_1186.z) * vec3<f32>(x_1188.x, x_1188.x, x_1188.x));
    let x_1191 : f32 = u_xlat53;
    let x_1193 : vec4<f32> = u_xlat11;
    let x_1196 : vec3<f32> = u_xlat0;
    let x_1198 : vec3<f32> = ((vec3<f32>(x_1191, x_1191, x_1191) * vec3<f32>(x_1193.x, x_1193.y, x_1193.z)) + -(x_1196));
    let x_1199 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1198.x, x_1198.y, x_1198.z, x_1199.w);
    let x_1202 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_1204 : vec4<f32> = u_xlat6;
    let x_1207 : vec3<f32> = u_xlat0;
    let x_1208 : vec3<f32> = ((vec3<f32>(x_1202.w, x_1202.w, x_1202.w) * vec3<f32>(x_1204.x, x_1204.y, x_1204.z)) + x_1207);
    let x_1209 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1208.x, x_1208.y, x_1208.z, x_1209.w);
  }
  let x_1211 : vec3<f32> = u_xlat7;
  let x_1213 : vec4<f32> = x_37.x_Color;
  u_xlat0 = ((x_1211 * vec3<f32>(x_1213.x, x_1213.y, x_1213.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1219 : vec3<f32> = u_xlat3;
  let x_1221 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1219.x, x_1219.x, x_1219.x) * x_1221) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1227 : f32 = u_xlat3.x;
  u_xlat52 = ((-(x_1227) * 0.959999979f) + 0.959999979f);
  let x_1232 : f32 = u_xlat52;
  let x_1234 : vec3<f32> = u_xlat8;
  let x_1235 : vec3<f32> = (vec3<f32>(x_1232, x_1232, x_1232) * x_1234);
  let x_1236 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1235.x, x_1235.y, x_1235.z, x_1236.w);
  let x_1238 : vec3<f32> = u_xlat1;
  let x_1239 : f32 = u_xlat51;
  let x_1243 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1238 * vec3<f32>(x_1239, x_1239, x_1239)) + vec3<f32>(x_1243.x, x_1243.y, x_1243.z));
  let x_1246 : vec3<f32> = u_xlat1;
  let x_1247 : vec3<f32> = u_xlat1;
  u_xlat51 = dot(x_1246, x_1247);
  let x_1249 : f32 = u_xlat51;
  u_xlat51 = max(x_1249, 0.001f);
  let x_1252 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_1252);
  let x_1254 : f32 = u_xlat51;
  let x_1256 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1254, x_1254, x_1254) * x_1256);
  let x_1258 : vec4<f32> = u_xlat4;
  let x_1260 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_1258.x, x_1258.y, x_1258.z), vec3<f32>(x_1260.x, x_1260.y, x_1260.z));
  let x_1263 : vec4<f32> = u_xlat4;
  let x_1266 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1263.x, x_1263.y, x_1263.z), vec3<f32>(x_1266.x, x_1266.y, x_1266.z));
  let x_1271 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1271, 0.0f, 1.0f);
  let x_1275 : vec4<f32> = u_xlat4;
  let x_1277 : vec3<f32> = u_xlat1;
  u_xlat19 = dot(vec3<f32>(x_1275.x, x_1275.y, x_1275.z), x_1277);
  let x_1279 : f32 = u_xlat19;
  u_xlat19 = clamp(x_1279, 0.0f, 1.0f);
  let x_1282 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_1284 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1282.x, x_1282.y, x_1282.z), x_1284);
  let x_1288 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1288, 0.0f, 1.0f);
  let x_1293 : f32 = u_xlat1.x;
  let x_1295 : f32 = u_xlat1.x;
  u_xlat18 = (x_1293 * x_1295);
  let x_1297 : f32 = u_xlat18;
  let x_1299 : f32 = u_xlat54;
  u_xlat18 = dot(vec2<f32>(x_1297, x_1297), vec2<f32>(x_1299, x_1299));
  let x_1302 : f32 = u_xlat18;
  u_xlat18 = (x_1302 + -0.5f);
  let x_1307 : f32 = u_xlat2.x;
  u_xlat35 = (-(x_1307) + 1.0f);
  let x_1311 : f32 = u_xlat35;
  let x_1312 : f32 = u_xlat35;
  u_xlat36 = (x_1311 * x_1312);
  let x_1314 : f32 = u_xlat36;
  let x_1315 : f32 = u_xlat36;
  u_xlat36 = (x_1314 * x_1315);
  let x_1317 : f32 = u_xlat35;
  let x_1318 : f32 = u_xlat36;
  u_xlat35 = (x_1317 * x_1318);
  let x_1320 : f32 = u_xlat18;
  let x_1321 : f32 = u_xlat35;
  u_xlat35 = ((x_1320 * x_1321) + 1.0f);
  let x_1324 : f32 = u_xlat51;
  u_xlat36 = (-(abs(x_1324)) + 1.0f);
  let x_1328 : f32 = u_xlat36;
  let x_1329 : f32 = u_xlat36;
  u_xlat53 = (x_1328 * x_1329);
  let x_1331 : f32 = u_xlat53;
  let x_1332 : f32 = u_xlat53;
  u_xlat53 = (x_1331 * x_1332);
  let x_1334 : f32 = u_xlat36;
  let x_1335 : f32 = u_xlat53;
  u_xlat36 = (x_1334 * x_1335);
  let x_1337 : f32 = u_xlat18;
  let x_1338 : f32 = u_xlat36;
  u_xlat18 = ((x_1337 * x_1338) + 1.0f);
  let x_1341 : f32 = u_xlat18;
  let x_1342 : f32 = u_xlat35;
  u_xlat18 = (x_1341 * x_1342);
  let x_1345 : f32 = u_xlat2.x;
  let x_1346 : f32 = u_xlat18;
  u_xlat18 = (x_1345 * x_1346);
  let x_1348 : f32 = u_xlat54;
  let x_1349 : f32 = u_xlat54;
  u_xlat35 = (x_1348 * x_1349);
  let x_1351 : f32 = u_xlat35;
  u_xlat35 = max(x_1351, 0.002f);
  let x_1354 : f32 = u_xlat35;
  u_xlat53 = (-(x_1354) + 1.0f);
  let x_1357 : f32 = u_xlat51;
  let x_1359 : f32 = u_xlat53;
  let x_1361 : f32 = u_xlat35;
  u_xlat3.x = ((abs(x_1357) * x_1359) + x_1361);
  let x_1365 : f32 = u_xlat2.x;
  let x_1366 : f32 = u_xlat53;
  let x_1368 : f32 = u_xlat35;
  u_xlat53 = ((x_1365 * x_1366) + x_1368);
  let x_1370 : f32 = u_xlat51;
  let x_1372 : f32 = u_xlat53;
  u_xlat51 = (abs(x_1370) * x_1372);
  let x_1375 : f32 = u_xlat2.x;
  let x_1377 : f32 = u_xlat3.x;
  let x_1379 : f32 = u_xlat51;
  u_xlat51 = ((x_1375 * x_1377) + x_1379);
  let x_1381 : f32 = u_xlat51;
  u_xlat51 = (x_1381 + 0.00001f);
  let x_1384 : f32 = u_xlat51;
  u_xlat51 = (0.5f / x_1384);
  let x_1386 : f32 = u_xlat35;
  let x_1387 : f32 = u_xlat35;
  u_xlat53 = (x_1386 * x_1387);
  let x_1389 : f32 = u_xlat19;
  let x_1390 : f32 = u_xlat53;
  let x_1392 : f32 = u_xlat19;
  u_xlat3.x = ((x_1389 * x_1390) + -(x_1392));
  let x_1397 : f32 = u_xlat3.x;
  let x_1398 : f32 = u_xlat19;
  u_xlat19 = ((x_1397 * x_1398) + 1.0f);
  let x_1401 : f32 = u_xlat53;
  u_xlat53 = (x_1401 * 0.318309873f);
  let x_1404 : f32 = u_xlat19;
  let x_1405 : f32 = u_xlat19;
  u_xlat19 = ((x_1404 * x_1405) + 0.0000001f);
  let x_1409 : f32 = u_xlat53;
  let x_1410 : f32 = u_xlat19;
  u_xlat19 = (x_1409 / x_1410);
  let x_1412 : f32 = u_xlat51;
  let x_1413 : f32 = u_xlat19;
  u_xlat51 = (x_1412 * x_1413);
  let x_1416 : f32 = u_xlat2.x;
  let x_1417 : f32 = u_xlat51;
  u_xlat51 = (x_1416 * x_1417);
  let x_1419 : f32 = u_xlat51;
  u_xlat51 = (x_1419 * 3.141592741f);
  let x_1422 : f32 = u_xlat51;
  u_xlat51 = max(x_1422, 0.0f);
  let x_1424 : f32 = u_xlat35;
  let x_1425 : f32 = u_xlat35;
  u_xlat35 = ((x_1424 * x_1425) + 1.0f);
  let x_1428 : f32 = u_xlat35;
  u_xlat35 = (1.0f / x_1428);
  let x_1430 : vec3<f32> = u_xlat0;
  let x_1431 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1430, x_1431);
  let x_1436 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1436 == 0.0f));
  let x_1438 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1438);
  let x_1441 : f32 = u_xlat51;
  let x_1443 : f32 = u_xlat2.x;
  u_xlat51 = (x_1441 * x_1443);
  let x_1446 : f32 = u_xlat3.y;
  let x_1447 : f32 = u_xlat37;
  let x_1449 : f32 = u_xlat52;
  u_xlat52 = ((x_1446 * x_1447) + -(x_1449));
  let x_1452 : f32 = u_xlat52;
  u_xlat52 = (x_1452 + 1.0f);
  let x_1454 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1454, 0.0f, 1.0f);
  let x_1456 : vec3<f32> = u_xlat9;
  let x_1457 : f32 = u_xlat18;
  let x_1460 : vec4<f32> = u_xlat10;
  let x_1462 : vec3<f32> = ((x_1456 * vec3<f32>(x_1457, x_1457, x_1457)) + vec3<f32>(x_1460.x, x_1460.y, x_1460.z));
  let x_1463 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1462.x, x_1462.y, x_1463.z, x_1462.z);
  let x_1465 : vec3<f32> = u_xlat9;
  let x_1466 : f32 = u_xlat51;
  u_xlat3 = (x_1465 * vec3<f32>(x_1466, x_1466, x_1466));
  let x_1470 : f32 = u_xlat1.x;
  u_xlat51 = (-(x_1470) + 1.0f);
  let x_1473 : f32 = u_xlat51;
  let x_1474 : f32 = u_xlat51;
  u_xlat1.x = (x_1473 * x_1474);
  let x_1478 : f32 = u_xlat1.x;
  let x_1480 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1478 * x_1480);
  let x_1483 : f32 = u_xlat51;
  let x_1485 : f32 = u_xlat1.x;
  u_xlat51 = (x_1483 * x_1485);
  let x_1487 : vec3<f32> = u_xlat0;
  let x_1490 : vec3<f32> = (-(x_1487) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1491 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1490.x, x_1490.y, x_1490.z, x_1491.w);
  let x_1493 : vec4<f32> = u_xlat4;
  let x_1495 : f32 = u_xlat51;
  let x_1498 : vec3<f32> = u_xlat0;
  let x_1499 : vec3<f32> = ((vec3<f32>(x_1493.x, x_1493.y, x_1493.z) * vec3<f32>(x_1495, x_1495, x_1495)) + x_1498);
  let x_1500 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1499.x, x_1499.y, x_1499.z, x_1500.w);
  let x_1502 : vec3<f32> = u_xlat3;
  let x_1503 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1502 * vec3<f32>(x_1503.x, x_1503.y, x_1503.z));
  let x_1506 : vec4<f32> = u_xlat6;
  let x_1508 : vec4<f32> = u_xlat2;
  let x_1511 : vec3<f32> = u_xlat3;
  let x_1512 : vec3<f32> = ((vec3<f32>(x_1506.x, x_1506.y, x_1506.z) * vec3<f32>(x_1508.x, x_1508.y, x_1508.w)) + x_1511);
  let x_1513 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1512.x, x_1512.y, x_1513.z, x_1512.z);
  let x_1515 : vec4<f32> = u_xlat12;
  let x_1517 : f32 = u_xlat35;
  u_xlat1 = (vec3<f32>(x_1515.x, x_1515.y, x_1515.z) * vec3<f32>(x_1517, x_1517, x_1517));
  let x_1520 : vec3<f32> = u_xlat0;
  let x_1522 : f32 = u_xlat52;
  u_xlat3 = (-(x_1520) + vec3<f32>(x_1522, x_1522, x_1522));
  let x_1525 : f32 = u_xlat36;
  let x_1527 : vec3<f32> = u_xlat3;
  let x_1529 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1525, x_1525, x_1525) * x_1527) + x_1529);
  let x_1531 : vec3<f32> = u_xlat1;
  let x_1532 : vec3<f32> = u_xlat0;
  let x_1534 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1531 * x_1532) + vec3<f32>(x_1534.x, x_1534.y, x_1534.w));
  let x_1539 : vec4<f32> = u_xlat5;
  let x_1541 : vec3<f32> = u_xlat0;
  let x_1542 : vec3<f32> = (vec3<f32>(x_1539.x, x_1539.y, x_1539.z) + x_1541);
  let x_1543 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1542.x, x_1542.y, x_1542.z, x_1543.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD6_param : vec4<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD6 = vs_TEXCOORD6_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

