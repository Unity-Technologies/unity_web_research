struct PGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
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

@group(0) @binding(13) var sampler_MetallicSmooth : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat4 : vec4<f32>;

var<private> u_xlat5 : vec4<f32>;

var<private> u_xlat52 : f32;

var<private> u_xlat6 : vec4<f32>;

var<private> u_xlat53 : f32;

@group(0) @binding(2) var x_Noise : texture_2d<f32>;

@group(0) @binding(11) var sampler_Noise : sampler;

var<private> u_xlat37 : f32;

var<private> u_xlat54 : f32;

var<private> u_xlatb54 : bool;

var<private> u_xlat21 : f32;

var<private> u_xlat38 : f32;

var<private> u_xlat22 : f32;

var<private> u_xlat55 : f32;

var<private> u_xlat7 : vec3<f32>;

@group(0) @binding(3) var x_MainTex : texture_2d<f32>;

@group(0) @binding(10) var sampler_MainTex : sampler;

var<private> u_xlat8 : vec3<f32>;

var<private> u_xlat9 : vec3<f32>;

@group(0) @binding(4) var x_Normal : texture_2d<f32>;

@group(0) @binding(12) var sampler_Normal : sampler;

var<private> u_xlatb52 : bool;

var<private> u_xlatb53 : bool;

@group(0) @binding(7) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(9) var samplerunity_ProbeVolumeSH : sampler;

var<private> u_xlat56 : f32;

var<private> u_xlat10 : vec4<f32>;

var<private> u_xlat11 : vec4<f32>;

var<private> u_xlat12 : vec4<f32>;

var<private> vs_TEXCOORD4 : vec3<f32>;

var<private> u_xlat13 : vec3<f32>;

var<private> u_xlatb14 : vec3<bool>;

@group(0) @binding(5) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(8) var samplerunity_SpecCube0 : sampler;

var<private> u_xlatb55 : bool;

var<private> u_xlat14 : vec3<f32>;

var<private> u_xlat15 : vec3<f32>;

var<private> u_xlatb16 : vec3<bool>;

@group(0) @binding(6) var unity_SpecCube1 : texture_cube<f32>;

var<private> u_xlat19 : f32;

var<private> u_xlat18 : f32;

var<private> u_xlat35 : f32;

var<private> u_xlat36 : f32;

var<private> u_xlatb2 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_472 : vec3<f32>;
  var x_649 : vec3<f32>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_833 : f32;
  var x_845 : f32;
  var x_857 : f32;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_1009 : f32;
  var x_1021 : f32;
  var x_1033 : f32;
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
  let x_421 : f32 = x_37.unity_ProbeVolumeParams.x;
  u_xlatb52 = (x_421 == 1.0f);
  let x_423 : bool = u_xlatb52;
  if (x_423) {
    let x_428 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb53 = (x_428 == 1.0f);
    let x_430 : vec4<f32> = vs_TEXCOORD2;
    let x_434 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_436 : vec3<f32> = (vec3<f32>(x_430.w, x_430.w, x_430.w) * vec3<f32>(x_434.x, x_434.y, x_434.z));
    let x_437 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_436.x, x_436.y, x_436.z, x_437.w);
    let x_440 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_442 : vec4<f32> = vs_TEXCOORD1;
    let x_445 : vec4<f32> = u_xlat4;
    let x_447 : vec3<f32> = ((vec3<f32>(x_440.x, x_440.y, x_440.z) * vec3<f32>(x_442.w, x_442.w, x_442.w)) + vec3<f32>(x_445.x, x_445.y, x_445.z));
    let x_448 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_447.x, x_447.y, x_447.z, x_448.w);
    let x_452 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_454 : vec4<f32> = vs_TEXCOORD3;
    let x_457 : vec4<f32> = u_xlat4;
    let x_459 : vec3<f32> = ((vec3<f32>(x_452.x, x_452.y, x_452.z) * vec3<f32>(x_454.w, x_454.w, x_454.w)) + vec3<f32>(x_457.x, x_457.y, x_457.z));
    let x_460 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_459.x, x_459.y, x_459.z, x_460.w);
    let x_462 : vec4<f32> = u_xlat4;
    let x_465 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_467 : vec3<f32> = (vec3<f32>(x_462.x, x_462.y, x_462.z) + vec3<f32>(x_465.x, x_465.y, x_465.z));
    let x_468 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_467.x, x_467.y, x_467.z, x_468.w);
    let x_470 : bool = u_xlatb53;
    if (x_470) {
      let x_475 : vec4<f32> = u_xlat4;
      x_472 = vec3<f32>(x_475.x, x_475.y, x_475.z);
    } else {
      let x_478 : vec3<f32> = u_xlat0;
      x_472 = x_478;
    }
    let x_479 : vec3<f32> = x_472;
    let x_480 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_479.x, x_479.y, x_479.z, x_480.w);
    let x_482 : vec4<f32> = u_xlat4;
    let x_486 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_488 : vec3<f32> = (vec3<f32>(x_482.x, x_482.y, x_482.z) + -(x_486));
    let x_489 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_488.x, x_488.y, x_488.z, x_489.w);
    let x_491 : vec4<f32> = u_xlat4;
    let x_495 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_496 : vec3<f32> = (vec3<f32>(x_491.x, x_491.y, x_491.z) * x_495);
    let x_497 : vec4<f32> = u_xlat4;
    u_xlat4 = vec4<f32>(x_497.x, x_496.x, x_496.y, x_496.z);
    let x_500 : f32 = u_xlat4.y;
    u_xlat53 = ((x_500 * 0.25f) + 0.75f);
    let x_506 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat54 = ((x_506 * 0.5f) + 0.75f);
    let x_509 : f32 = u_xlat53;
    let x_510 : f32 = u_xlat54;
    u_xlat4.x = max(x_509, x_510);
    let x_521 : vec4<f32> = u_xlat4;
    let x_523 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_521.x, x_521.z, x_521.w));
    u_xlat4 = x_523;
  } else {
    u_xlat4.x = 1.0f;
    u_xlat4.y = 1.0f;
    u_xlat4.z = 1.0f;
    u_xlat4.w = 1.0f;
  }
  let x_529 : vec4<f32> = u_xlat4;
  let x_532 : vec4<f32> = x_37.unity_OcclusionMaskSelector;
  u_xlat53 = dot(x_529, x_532);
  let x_534 : f32 = u_xlat53;
  u_xlat53 = clamp(x_534, 0.0f, 1.0f);
  let x_536 : vec4<f32> = vs_TEXCOORD1;
  let x_538 : vec4<f32> = u_xlat6;
  u_xlat4.x = dot(vec3<f32>(x_536.x, x_536.y, x_536.z), vec3<f32>(x_538.x, x_538.y, x_538.z));
  let x_542 : vec4<f32> = vs_TEXCOORD2;
  let x_544 : vec4<f32> = u_xlat6;
  u_xlat4.y = dot(vec3<f32>(x_542.x, x_542.y, x_542.z), vec3<f32>(x_544.x, x_544.y, x_544.z));
  let x_548 : vec4<f32> = vs_TEXCOORD3;
  let x_550 : vec4<f32> = u_xlat6;
  u_xlat4.z = dot(vec3<f32>(x_548.x, x_548.y, x_548.z), vec3<f32>(x_550.x, x_550.y, x_550.z));
  let x_554 : vec4<f32> = u_xlat4;
  let x_556 : vec4<f32> = u_xlat4;
  u_xlat54 = dot(vec3<f32>(x_554.x, x_554.y, x_554.z), vec3<f32>(x_556.x, x_556.y, x_556.z));
  let x_559 : f32 = u_xlat54;
  u_xlat54 = inverseSqrt(x_559);
  let x_561 : f32 = u_xlat54;
  let x_563 : vec4<f32> = u_xlat4;
  let x_565 : vec3<f32> = (vec3<f32>(x_561, x_561, x_561) * vec3<f32>(x_563.x, x_563.y, x_563.z));
  let x_566 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_565.x, x_565.y, x_565.z, x_566.w);
  let x_569 : f32 = u_xlat3.y;
  let x_571 : f32 = u_xlat37;
  u_xlat54 = ((-(x_569) * x_571) + 1.0f);
  let x_575 : vec4<f32> = u_xlat2;
  let x_578 : vec4<f32> = u_xlat4;
  u_xlat56 = dot(-(vec3<f32>(x_575.x, x_575.y, x_575.z)), vec3<f32>(x_578.x, x_578.y, x_578.z));
  let x_581 : f32 = u_xlat56;
  let x_582 : f32 = u_xlat56;
  u_xlat56 = (x_581 + x_582);
  let x_584 : vec4<f32> = u_xlat4;
  let x_586 : f32 = u_xlat56;
  let x_590 : vec4<f32> = u_xlat2;
  let x_593 : vec3<f32> = ((vec3<f32>(x_584.x, x_584.y, x_584.z) * -(vec3<f32>(x_586, x_586, x_586))) + -(vec3<f32>(x_590.x, x_590.y, x_590.z)));
  let x_594 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_593.x, x_593.y, x_593.z, x_594.w);
  let x_596 : f32 = u_xlat53;
  let x_600 : vec4<f32> = x_37.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_596, x_596, x_596) * vec3<f32>(x_600.x, x_600.y, x_600.z));
  let x_603 : bool = u_xlatb52;
  if (x_603) {
    let x_607 : f32 = x_37.unity_ProbeVolumeParams.y;
    u_xlatb52 = (x_607 == 1.0f);
    let x_610 : vec4<f32> = vs_TEXCOORD2;
    let x_613 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[1i];
    let x_615 : vec3<f32> = (vec3<f32>(x_610.w, x_610.w, x_610.w) * vec3<f32>(x_613.x, x_613.y, x_613.z));
    let x_616 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_615.x, x_615.y, x_615.z, x_616.w);
    let x_619 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[0i];
    let x_621 : vec4<f32> = vs_TEXCOORD1;
    let x_624 : vec4<f32> = u_xlat10;
    let x_626 : vec3<f32> = ((vec3<f32>(x_619.x, x_619.y, x_619.z) * vec3<f32>(x_621.w, x_621.w, x_621.w)) + vec3<f32>(x_624.x, x_624.y, x_624.z));
    let x_627 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_626.x, x_626.y, x_626.z, x_627.w);
    let x_630 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[2i];
    let x_632 : vec4<f32> = vs_TEXCOORD3;
    let x_635 : vec4<f32> = u_xlat10;
    let x_637 : vec3<f32> = ((vec3<f32>(x_630.x, x_630.y, x_630.z) * vec3<f32>(x_632.w, x_632.w, x_632.w)) + vec3<f32>(x_635.x, x_635.y, x_635.z));
    let x_638 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_637.x, x_637.y, x_637.z, x_638.w);
    let x_640 : vec4<f32> = u_xlat10;
    let x_643 : vec4<f32> = x_37.unity_ProbeVolumeWorldToObject[3i];
    let x_645 : vec3<f32> = (vec3<f32>(x_640.x, x_640.y, x_640.z) + vec3<f32>(x_643.x, x_643.y, x_643.z));
    let x_646 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_645.x, x_645.y, x_645.z, x_646.w);
    let x_648 : bool = u_xlatb52;
    if (x_648) {
      let x_652 : vec4<f32> = u_xlat10;
      x_649 = vec3<f32>(x_652.x, x_652.y, x_652.z);
    } else {
      let x_655 : vec3<f32> = u_xlat0;
      x_649 = x_655;
    }
    let x_656 : vec3<f32> = x_649;
    let x_657 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_656.x, x_656.y, x_656.z, x_657.w);
    let x_659 : vec4<f32> = u_xlat10;
    let x_662 : vec3<f32> = x_37.unity_ProbeVolumeMin;
    let x_664 : vec3<f32> = (vec3<f32>(x_659.x, x_659.y, x_659.z) + -(x_662));
    let x_665 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_664.x, x_664.y, x_664.z, x_665.w);
    let x_667 : vec4<f32> = u_xlat10;
    let x_670 : vec3<f32> = x_37.unity_ProbeVolumeSizeInv;
    let x_671 : vec3<f32> = (vec3<f32>(x_667.x, x_667.y, x_667.z) * x_670);
    let x_672 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_672.x, x_671.x, x_671.y, x_671.z);
    let x_675 : f32 = u_xlat10.y;
    u_xlat52 = (x_675 * 0.25f);
    let x_678 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat53 = (x_678 * 0.5f);
    let x_681 : f32 = x_37.unity_ProbeVolumeParams.z;
    u_xlat56 = ((-(x_681) * 0.5f) + 0.25f);
    let x_685 : f32 = u_xlat52;
    let x_686 : f32 = u_xlat53;
    u_xlat52 = max(x_685, x_686);
    let x_688 : f32 = u_xlat56;
    let x_689 : f32 = u_xlat52;
    u_xlat10.x = min(x_688, x_689);
    let x_696 : vec4<f32> = u_xlat10;
    let x_698 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_696.x, x_696.z, x_696.w));
    u_xlat11 = x_698;
    let x_700 : vec4<f32> = u_xlat10;
    let x_703 : vec3<f32> = (vec3<f32>(x_700.x, x_700.z, x_700.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_704 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_703.x, x_703.y, x_703.z, x_704.w);
    let x_709 : vec4<f32> = u_xlat12;
    let x_711 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_709.x, x_709.y, x_709.z));
    u_xlat12 = x_711;
    let x_712 : vec4<f32> = u_xlat10;
    let x_715 : vec3<f32> = (vec3<f32>(x_712.x, x_712.z, x_712.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_716 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
    let x_721 : vec4<f32> = u_xlat10;
    let x_723 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_721.x, x_721.y, x_721.z));
    u_xlat10 = x_723;
    u_xlat4.w = 1.0f;
    let x_725 : vec4<f32> = u_xlat11;
    let x_726 : vec4<f32> = u_xlat4;
    u_xlat11.x = dot(x_725, x_726);
    let x_729 : vec4<f32> = u_xlat12;
    let x_730 : vec4<f32> = u_xlat4;
    u_xlat11.y = dot(x_729, x_730);
    let x_733 : vec4<f32> = u_xlat10;
    let x_734 : vec4<f32> = u_xlat4;
    u_xlat11.z = dot(x_733, x_734);
  } else {
    u_xlat4.w = 1.0f;
    let x_740 : vec4<f32> = x_37.unity_SHAr;
    let x_741 : vec4<f32> = u_xlat4;
    u_xlat11.x = dot(x_740, x_741);
    let x_745 : vec4<f32> = x_37.unity_SHAg;
    let x_746 : vec4<f32> = u_xlat4;
    u_xlat11.y = dot(x_745, x_746);
    let x_751 : vec4<f32> = x_37.unity_SHAb;
    let x_752 : vec4<f32> = u_xlat4;
    u_xlat11.z = dot(x_751, x_752);
  }
  let x_755 : vec4<f32> = u_xlat11;
  let x_759 : vec3<f32> = vs_TEXCOORD4;
  let x_760 : vec3<f32> = (vec3<f32>(x_755.x, x_755.y, x_755.z) + x_759);
  let x_761 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_760.x, x_760.y, x_760.z, x_761.w);
  let x_763 : vec4<f32> = u_xlat10;
  let x_766 : vec3<f32> = max(vec3<f32>(x_763.x, x_763.y, x_763.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_767 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_766.x, x_766.y, x_766.z, x_767.w);
  let x_771 : f32 = x_37.unity_SpecCube0_ProbePosition.w;
  u_xlatb52 = (0.0f < x_771);
  let x_773 : bool = u_xlatb52;
  if (x_773) {
    let x_776 : vec4<f32> = u_xlat6;
    let x_778 : vec4<f32> = u_xlat6;
    u_xlat52 = dot(vec3<f32>(x_776.x, x_776.y, x_776.z), vec3<f32>(x_778.x, x_778.y, x_778.z));
    let x_781 : f32 = u_xlat52;
    u_xlat52 = inverseSqrt(x_781);
    let x_783 : f32 = u_xlat52;
    let x_785 : vec4<f32> = u_xlat6;
    let x_787 : vec3<f32> = (vec3<f32>(x_783, x_783, x_783) * vec3<f32>(x_785.x, x_785.y, x_785.z));
    let x_788 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_787.x, x_787.y, x_787.z, x_788.w);
    let x_790 : vec3<f32> = u_xlat0;
    let x_794 : vec4<f32> = x_37.unity_SpecCube0_BoxMax;
    let x_796 : vec3<f32> = (-(x_790) + vec3<f32>(x_794.x, x_794.y, x_794.z));
    let x_797 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_796.x, x_796.y, x_796.z, x_797.w);
    let x_799 : vec4<f32> = u_xlat12;
    let x_801 : vec4<f32> = u_xlat11;
    let x_803 : vec3<f32> = (vec3<f32>(x_799.x, x_799.y, x_799.z) / vec3<f32>(x_801.x, x_801.y, x_801.z));
    let x_804 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_803.x, x_803.y, x_803.z, x_804.w);
    let x_807 : vec3<f32> = u_xlat0;
    let x_811 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    u_xlat13 = (-(x_807) + vec3<f32>(x_811.x, x_811.y, x_811.z));
    let x_814 : vec3<f32> = u_xlat13;
    let x_815 : vec4<f32> = u_xlat11;
    u_xlat13 = (x_814 / vec3<f32>(x_815.x, x_815.y, x_815.z));
    let x_822 : vec4<f32> = u_xlat11;
    let x_825 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_822.x, x_822.y, x_822.z, x_822.x));
    u_xlatb14 = vec3<bool>(x_825.x, x_825.y, x_825.z);
    let x_829 : vec4<f32> = u_xlat12;
    hlslcc_movcTemp = x_829;
    let x_831 : bool = u_xlatb14.x;
    if (x_831) {
      let x_837 : f32 = u_xlat12.x;
      x_833 = x_837;
    } else {
      let x_840 : f32 = u_xlat13.x;
      x_833 = x_840;
    }
    let x_841 : f32 = x_833;
    hlslcc_movcTemp.x = x_841;
    let x_844 : bool = u_xlatb14.y;
    if (x_844) {
      let x_849 : f32 = u_xlat12.y;
      x_845 = x_849;
    } else {
      let x_852 : f32 = u_xlat13.y;
      x_845 = x_852;
    }
    let x_853 : f32 = x_845;
    hlslcc_movcTemp.y = x_853;
    let x_856 : bool = u_xlatb14.z;
    if (x_856) {
      let x_861 : f32 = u_xlat12.z;
      x_857 = x_861;
    } else {
      let x_864 : f32 = u_xlat13.z;
      x_857 = x_864;
    }
    let x_865 : f32 = x_857;
    hlslcc_movcTemp.z = x_865;
    let x_867 : vec4<f32> = hlslcc_movcTemp;
    u_xlat12 = x_867;
    let x_869 : f32 = u_xlat12.y;
    let x_871 : f32 = u_xlat12.x;
    u_xlat52 = min(x_869, x_871);
    let x_874 : f32 = u_xlat12.z;
    let x_875 : f32 = u_xlat52;
    u_xlat52 = min(x_874, x_875);
    let x_877 : vec3<f32> = u_xlat0;
    let x_879 : vec4<f32> = x_37.unity_SpecCube0_ProbePosition;
    let x_882 : vec3<f32> = (x_877 + -(vec3<f32>(x_879.x, x_879.y, x_879.z)));
    let x_883 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_882.x, x_882.y, x_882.z, x_883.w);
    let x_885 : vec4<f32> = u_xlat11;
    let x_887 : f32 = u_xlat52;
    let x_890 : vec4<f32> = u_xlat12;
    let x_892 : vec3<f32> = ((vec3<f32>(x_885.x, x_885.y, x_885.z) * vec3<f32>(x_887, x_887, x_887)) + vec3<f32>(x_890.x, x_890.y, x_890.z));
    let x_893 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_892.x, x_892.y, x_892.z, x_893.w);
  } else {
    let x_896 : vec4<f32> = u_xlat6;
    let x_897 : vec3<f32> = vec3<f32>(x_896.x, x_896.y, x_896.z);
    let x_898 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_897.x, x_897.y, x_897.z, x_898.w);
  }
  let x_900 : f32 = u_xlat54;
  u_xlat52 = ((-(x_900) * 0.699999988f) + 1.700000048f);
  let x_906 : f32 = u_xlat52;
  let x_907 : f32 = u_xlat54;
  u_xlat52 = (x_906 * x_907);
  let x_909 : f32 = u_xlat52;
  u_xlat52 = (x_909 * 6.0f);
  let x_919 : vec4<f32> = u_xlat11;
  let x_921 : f32 = u_xlat52;
  let x_922 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_919.x, x_919.y, x_919.z), x_921);
  u_xlat11 = x_922;
  let x_924 : f32 = u_xlat11.w;
  u_xlat53 = (x_924 + -1.0f);
  let x_928 : f32 = x_37.unity_SpecCube0_HDR.w;
  let x_929 : f32 = u_xlat53;
  u_xlat53 = ((x_928 * x_929) + 1.0f);
  let x_932 : f32 = u_xlat53;
  u_xlat53 = log2(x_932);
  let x_934 : f32 = u_xlat53;
  let x_936 : f32 = x_37.unity_SpecCube0_HDR.y;
  u_xlat53 = (x_934 * x_936);
  let x_938 : f32 = u_xlat53;
  u_xlat53 = exp2(x_938);
  let x_940 : f32 = u_xlat53;
  let x_942 : f32 = x_37.unity_SpecCube0_HDR.x;
  u_xlat53 = (x_940 * x_942);
  let x_944 : vec4<f32> = u_xlat11;
  let x_946 : f32 = u_xlat53;
  let x_948 : vec3<f32> = (vec3<f32>(x_944.x, x_944.y, x_944.z) * vec3<f32>(x_946, x_946, x_946));
  let x_949 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_948.x, x_948.y, x_948.z, x_949.w);
  let x_953 : f32 = x_37.unity_SpecCube0_BoxMin.w;
  u_xlatb55 = (x_953 < 0.999989986f);
  let x_956 : bool = u_xlatb55;
  if (x_956) {
    let x_961 : f32 = x_37.unity_SpecCube1_ProbePosition.w;
    u_xlatb55 = (0.0f < x_961);
    let x_963 : bool = u_xlatb55;
    if (x_963) {
      let x_966 : vec4<f32> = u_xlat6;
      let x_968 : vec4<f32> = u_xlat6;
      u_xlat55 = dot(vec3<f32>(x_966.x, x_966.y, x_966.z), vec3<f32>(x_968.x, x_968.y, x_968.z));
      let x_971 : f32 = u_xlat55;
      u_xlat55 = inverseSqrt(x_971);
      let x_973 : f32 = u_xlat55;
      let x_975 : vec4<f32> = u_xlat6;
      u_xlat13 = (vec3<f32>(x_973, x_973, x_973) * vec3<f32>(x_975.x, x_975.y, x_975.z));
      let x_979 : vec3<f32> = u_xlat0;
      let x_983 : vec4<f32> = x_37.unity_SpecCube1_BoxMax;
      u_xlat14 = (-(x_979) + vec3<f32>(x_983.x, x_983.y, x_983.z));
      let x_986 : vec3<f32> = u_xlat14;
      let x_987 : vec3<f32> = u_xlat13;
      u_xlat14 = (x_986 / x_987);
      let x_990 : vec3<f32> = u_xlat0;
      let x_994 : vec4<f32> = x_37.unity_SpecCube1_BoxMin;
      u_xlat15 = (-(x_990) + vec3<f32>(x_994.x, x_994.y, x_994.z));
      let x_997 : vec3<f32> = u_xlat15;
      let x_998 : vec3<f32> = u_xlat13;
      u_xlat15 = (x_997 / x_998);
      let x_1001 : vec3<f32> = u_xlat13;
      let x_1003 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_1001.x, x_1001.y, x_1001.z, x_1001.x));
      u_xlatb16 = vec3<bool>(x_1003.x, x_1003.y, x_1003.z);
      let x_1006 : vec3<f32> = u_xlat14;
      hlslcc_movcTemp_1 = x_1006;
      let x_1008 : bool = u_xlatb16.x;
      if (x_1008) {
        let x_1013 : f32 = u_xlat14.x;
        x_1009 = x_1013;
      } else {
        let x_1016 : f32 = u_xlat15.x;
        x_1009 = x_1016;
      }
      let x_1017 : f32 = x_1009;
      hlslcc_movcTemp_1.x = x_1017;
      let x_1020 : bool = u_xlatb16.y;
      if (x_1020) {
        let x_1025 : f32 = u_xlat14.y;
        x_1021 = x_1025;
      } else {
        let x_1028 : f32 = u_xlat15.y;
        x_1021 = x_1028;
      }
      let x_1029 : f32 = x_1021;
      hlslcc_movcTemp_1.y = x_1029;
      let x_1032 : bool = u_xlatb16.z;
      if (x_1032) {
        let x_1037 : f32 = u_xlat14.z;
        x_1033 = x_1037;
      } else {
        let x_1040 : f32 = u_xlat15.z;
        x_1033 = x_1040;
      }
      let x_1041 : f32 = x_1033;
      hlslcc_movcTemp_1.z = x_1041;
      let x_1043 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat14 = x_1043;
      let x_1045 : f32 = u_xlat14.y;
      let x_1047 : f32 = u_xlat14.x;
      u_xlat55 = min(x_1045, x_1047);
      let x_1050 : f32 = u_xlat14.z;
      let x_1051 : f32 = u_xlat55;
      u_xlat55 = min(x_1050, x_1051);
      let x_1053 : vec3<f32> = u_xlat0;
      let x_1055 : vec4<f32> = x_37.unity_SpecCube1_ProbePosition;
      u_xlat0 = (x_1053 + -(vec3<f32>(x_1055.x, x_1055.y, x_1055.z)));
      let x_1059 : vec3<f32> = u_xlat13;
      let x_1060 : f32 = u_xlat55;
      let x_1063 : vec3<f32> = u_xlat0;
      let x_1064 : vec3<f32> = ((x_1059 * vec3<f32>(x_1060, x_1060, x_1060)) + x_1063);
      let x_1065 : vec4<f32> = u_xlat6;
      u_xlat6 = vec4<f32>(x_1064.x, x_1064.y, x_1064.z, x_1065.w);
    }
    let x_1071 : vec4<f32> = u_xlat6;
    let x_1073 : f32 = u_xlat52;
    let x_1074 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_1071.x, x_1071.y, x_1071.z), x_1073);
    u_xlat6 = x_1074;
    let x_1076 : f32 = u_xlat6.w;
    u_xlat0.x = (x_1076 + -1.0f);
    let x_1081 : f32 = x_37.unity_SpecCube1_HDR.w;
    let x_1083 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_1081 * x_1083) + 1.0f);
    let x_1088 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_1088);
    let x_1092 : f32 = u_xlat0.x;
    let x_1094 : f32 = x_37.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_1092 * x_1094);
    let x_1098 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_1098);
    let x_1102 : f32 = u_xlat0.x;
    let x_1104 : f32 = x_37.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_1102 * x_1104);
    let x_1107 : vec4<f32> = u_xlat6;
    let x_1109 : vec3<f32> = u_xlat0;
    u_xlat0 = (vec3<f32>(x_1107.x, x_1107.y, x_1107.z) * vec3<f32>(x_1109.x, x_1109.x, x_1109.x));
    let x_1112 : f32 = u_xlat53;
    let x_1114 : vec4<f32> = u_xlat11;
    let x_1117 : vec3<f32> = u_xlat0;
    let x_1119 : vec3<f32> = ((vec3<f32>(x_1112, x_1112, x_1112) * vec3<f32>(x_1114.x, x_1114.y, x_1114.z)) + -(x_1117));
    let x_1120 : vec4<f32> = u_xlat6;
    u_xlat6 = vec4<f32>(x_1119.x, x_1119.y, x_1119.z, x_1120.w);
    let x_1123 : vec4<f32> = x_37.unity_SpecCube0_BoxMin;
    let x_1125 : vec4<f32> = u_xlat6;
    let x_1128 : vec3<f32> = u_xlat0;
    let x_1129 : vec3<f32> = ((vec3<f32>(x_1123.w, x_1123.w, x_1123.w) * vec3<f32>(x_1125.x, x_1125.y, x_1125.z)) + x_1128);
    let x_1130 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_1129.x, x_1129.y, x_1129.z, x_1130.w);
  }
  let x_1132 : vec3<f32> = u_xlat7;
  let x_1134 : vec4<f32> = x_37.x_Color;
  u_xlat0 = ((x_1132 * vec3<f32>(x_1134.x, x_1134.y, x_1134.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_1140 : vec3<f32> = u_xlat3;
  let x_1142 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1140.x, x_1140.x, x_1140.x) * x_1142) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_1148 : f32 = u_xlat3.x;
  u_xlat52 = ((-(x_1148) * 0.959999979f) + 0.959999979f);
  let x_1153 : f32 = u_xlat52;
  let x_1155 : vec3<f32> = u_xlat8;
  let x_1156 : vec3<f32> = (vec3<f32>(x_1153, x_1153, x_1153) * x_1155);
  let x_1157 : vec4<f32> = u_xlat6;
  u_xlat6 = vec4<f32>(x_1156.x, x_1156.y, x_1156.z, x_1157.w);
  let x_1159 : vec3<f32> = u_xlat1;
  let x_1160 : f32 = u_xlat51;
  let x_1164 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat1 = ((x_1159 * vec3<f32>(x_1160, x_1160, x_1160)) + vec3<f32>(x_1164.x, x_1164.y, x_1164.z));
  let x_1167 : vec3<f32> = u_xlat1;
  let x_1168 : vec3<f32> = u_xlat1;
  u_xlat51 = dot(x_1167, x_1168);
  let x_1170 : f32 = u_xlat51;
  u_xlat51 = max(x_1170, 0.001f);
  let x_1173 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_1173);
  let x_1175 : f32 = u_xlat51;
  let x_1177 : vec3<f32> = u_xlat1;
  u_xlat1 = (vec3<f32>(x_1175, x_1175, x_1175) * x_1177);
  let x_1179 : vec4<f32> = u_xlat4;
  let x_1181 : vec4<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_1179.x, x_1179.y, x_1179.z), vec3<f32>(x_1181.x, x_1181.y, x_1181.z));
  let x_1184 : vec4<f32> = u_xlat4;
  let x_1187 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1184.x, x_1184.y, x_1184.z), vec3<f32>(x_1187.x, x_1187.y, x_1187.z));
  let x_1192 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1192, 0.0f, 1.0f);
  let x_1196 : vec4<f32> = u_xlat4;
  let x_1198 : vec3<f32> = u_xlat1;
  u_xlat19 = dot(vec3<f32>(x_1196.x, x_1196.y, x_1196.z), x_1198);
  let x_1200 : f32 = u_xlat19;
  u_xlat19 = clamp(x_1200, 0.0f, 1.0f);
  let x_1203 : vec4<f32> = x_37.x_WorldSpaceLightPos0;
  let x_1205 : vec3<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1203.x, x_1203.y, x_1203.z), x_1205);
  let x_1209 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1209, 0.0f, 1.0f);
  let x_1214 : f32 = u_xlat1.x;
  let x_1216 : f32 = u_xlat1.x;
  u_xlat18 = (x_1214 * x_1216);
  let x_1218 : f32 = u_xlat18;
  let x_1220 : f32 = u_xlat54;
  u_xlat18 = dot(vec2<f32>(x_1218, x_1218), vec2<f32>(x_1220, x_1220));
  let x_1223 : f32 = u_xlat18;
  u_xlat18 = (x_1223 + -0.5f);
  let x_1228 : f32 = u_xlat2.x;
  u_xlat35 = (-(x_1228) + 1.0f);
  let x_1232 : f32 = u_xlat35;
  let x_1233 : f32 = u_xlat35;
  u_xlat36 = (x_1232 * x_1233);
  let x_1235 : f32 = u_xlat36;
  let x_1236 : f32 = u_xlat36;
  u_xlat36 = (x_1235 * x_1236);
  let x_1238 : f32 = u_xlat35;
  let x_1239 : f32 = u_xlat36;
  u_xlat35 = (x_1238 * x_1239);
  let x_1241 : f32 = u_xlat18;
  let x_1242 : f32 = u_xlat35;
  u_xlat35 = ((x_1241 * x_1242) + 1.0f);
  let x_1245 : f32 = u_xlat51;
  u_xlat36 = (-(abs(x_1245)) + 1.0f);
  let x_1249 : f32 = u_xlat36;
  let x_1250 : f32 = u_xlat36;
  u_xlat53 = (x_1249 * x_1250);
  let x_1252 : f32 = u_xlat53;
  let x_1253 : f32 = u_xlat53;
  u_xlat53 = (x_1252 * x_1253);
  let x_1255 : f32 = u_xlat36;
  let x_1256 : f32 = u_xlat53;
  u_xlat36 = (x_1255 * x_1256);
  let x_1258 : f32 = u_xlat18;
  let x_1259 : f32 = u_xlat36;
  u_xlat18 = ((x_1258 * x_1259) + 1.0f);
  let x_1262 : f32 = u_xlat18;
  let x_1263 : f32 = u_xlat35;
  u_xlat18 = (x_1262 * x_1263);
  let x_1266 : f32 = u_xlat2.x;
  let x_1267 : f32 = u_xlat18;
  u_xlat18 = (x_1266 * x_1267);
  let x_1269 : f32 = u_xlat54;
  let x_1270 : f32 = u_xlat54;
  u_xlat35 = (x_1269 * x_1270);
  let x_1272 : f32 = u_xlat35;
  u_xlat35 = max(x_1272, 0.002f);
  let x_1275 : f32 = u_xlat35;
  u_xlat53 = (-(x_1275) + 1.0f);
  let x_1278 : f32 = u_xlat51;
  let x_1280 : f32 = u_xlat53;
  let x_1282 : f32 = u_xlat35;
  u_xlat3.x = ((abs(x_1278) * x_1280) + x_1282);
  let x_1286 : f32 = u_xlat2.x;
  let x_1287 : f32 = u_xlat53;
  let x_1289 : f32 = u_xlat35;
  u_xlat53 = ((x_1286 * x_1287) + x_1289);
  let x_1291 : f32 = u_xlat51;
  let x_1293 : f32 = u_xlat53;
  u_xlat51 = (abs(x_1291) * x_1293);
  let x_1296 : f32 = u_xlat2.x;
  let x_1298 : f32 = u_xlat3.x;
  let x_1300 : f32 = u_xlat51;
  u_xlat51 = ((x_1296 * x_1298) + x_1300);
  let x_1302 : f32 = u_xlat51;
  u_xlat51 = (x_1302 + 0.00001f);
  let x_1305 : f32 = u_xlat51;
  u_xlat51 = (0.5f / x_1305);
  let x_1307 : f32 = u_xlat35;
  let x_1308 : f32 = u_xlat35;
  u_xlat53 = (x_1307 * x_1308);
  let x_1310 : f32 = u_xlat19;
  let x_1311 : f32 = u_xlat53;
  let x_1313 : f32 = u_xlat19;
  u_xlat3.x = ((x_1310 * x_1311) + -(x_1313));
  let x_1318 : f32 = u_xlat3.x;
  let x_1319 : f32 = u_xlat19;
  u_xlat19 = ((x_1318 * x_1319) + 1.0f);
  let x_1322 : f32 = u_xlat53;
  u_xlat53 = (x_1322 * 0.318309873f);
  let x_1325 : f32 = u_xlat19;
  let x_1326 : f32 = u_xlat19;
  u_xlat19 = ((x_1325 * x_1326) + 0.0000001f);
  let x_1330 : f32 = u_xlat53;
  let x_1331 : f32 = u_xlat19;
  u_xlat19 = (x_1330 / x_1331);
  let x_1333 : f32 = u_xlat51;
  let x_1334 : f32 = u_xlat19;
  u_xlat51 = (x_1333 * x_1334);
  let x_1337 : f32 = u_xlat2.x;
  let x_1338 : f32 = u_xlat51;
  u_xlat51 = (x_1337 * x_1338);
  let x_1340 : f32 = u_xlat51;
  u_xlat51 = (x_1340 * 3.141592741f);
  let x_1343 : f32 = u_xlat51;
  u_xlat51 = max(x_1343, 0.0f);
  let x_1345 : f32 = u_xlat35;
  let x_1346 : f32 = u_xlat35;
  u_xlat35 = ((x_1345 * x_1346) + 1.0f);
  let x_1349 : f32 = u_xlat35;
  u_xlat35 = (1.0f / x_1349);
  let x_1351 : vec3<f32> = u_xlat0;
  let x_1352 : vec3<f32> = u_xlat0;
  u_xlat2.x = dot(x_1351, x_1352);
  let x_1357 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1357 == 0.0f));
  let x_1359 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1359);
  let x_1362 : f32 = u_xlat51;
  let x_1364 : f32 = u_xlat2.x;
  u_xlat51 = (x_1362 * x_1364);
  let x_1367 : f32 = u_xlat3.y;
  let x_1368 : f32 = u_xlat37;
  let x_1370 : f32 = u_xlat52;
  u_xlat52 = ((x_1367 * x_1368) + -(x_1370));
  let x_1373 : f32 = u_xlat52;
  u_xlat52 = (x_1373 + 1.0f);
  let x_1375 : f32 = u_xlat52;
  u_xlat52 = clamp(x_1375, 0.0f, 1.0f);
  let x_1377 : vec3<f32> = u_xlat9;
  let x_1378 : f32 = u_xlat18;
  let x_1381 : vec4<f32> = u_xlat10;
  let x_1383 : vec3<f32> = ((x_1377 * vec3<f32>(x_1378, x_1378, x_1378)) + vec3<f32>(x_1381.x, x_1381.y, x_1381.z));
  let x_1384 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1383.x, x_1383.y, x_1384.z, x_1383.z);
  let x_1386 : vec3<f32> = u_xlat9;
  let x_1387 : f32 = u_xlat51;
  u_xlat3 = (x_1386 * vec3<f32>(x_1387, x_1387, x_1387));
  let x_1391 : f32 = u_xlat1.x;
  u_xlat51 = (-(x_1391) + 1.0f);
  let x_1394 : f32 = u_xlat51;
  let x_1395 : f32 = u_xlat51;
  u_xlat1.x = (x_1394 * x_1395);
  let x_1399 : f32 = u_xlat1.x;
  let x_1401 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1399 * x_1401);
  let x_1404 : f32 = u_xlat51;
  let x_1406 : f32 = u_xlat1.x;
  u_xlat51 = (x_1404 * x_1406);
  let x_1408 : vec3<f32> = u_xlat0;
  let x_1411 : vec3<f32> = (-(x_1408) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1412 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1411.x, x_1411.y, x_1411.z, x_1412.w);
  let x_1414 : vec4<f32> = u_xlat4;
  let x_1416 : f32 = u_xlat51;
  let x_1419 : vec3<f32> = u_xlat0;
  let x_1420 : vec3<f32> = ((vec3<f32>(x_1414.x, x_1414.y, x_1414.z) * vec3<f32>(x_1416, x_1416, x_1416)) + x_1419);
  let x_1421 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1420.x, x_1420.y, x_1420.z, x_1421.w);
  let x_1423 : vec3<f32> = u_xlat3;
  let x_1424 : vec4<f32> = u_xlat4;
  u_xlat3 = (x_1423 * vec3<f32>(x_1424.x, x_1424.y, x_1424.z));
  let x_1427 : vec4<f32> = u_xlat6;
  let x_1429 : vec4<f32> = u_xlat2;
  let x_1432 : vec3<f32> = u_xlat3;
  let x_1433 : vec3<f32> = ((vec3<f32>(x_1427.x, x_1427.y, x_1427.z) * vec3<f32>(x_1429.x, x_1429.y, x_1429.w)) + x_1432);
  let x_1434 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_1433.x, x_1433.y, x_1434.z, x_1433.z);
  let x_1436 : vec4<f32> = u_xlat12;
  let x_1438 : f32 = u_xlat35;
  u_xlat1 = (vec3<f32>(x_1436.x, x_1436.y, x_1436.z) * vec3<f32>(x_1438, x_1438, x_1438));
  let x_1441 : vec3<f32> = u_xlat0;
  let x_1443 : f32 = u_xlat52;
  u_xlat3 = (-(x_1441) + vec3<f32>(x_1443, x_1443, x_1443));
  let x_1446 : f32 = u_xlat36;
  let x_1448 : vec3<f32> = u_xlat3;
  let x_1450 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_1446, x_1446, x_1446) * x_1448) + x_1450);
  let x_1452 : vec3<f32> = u_xlat1;
  let x_1453 : vec3<f32> = u_xlat0;
  let x_1455 : vec4<f32> = u_xlat2;
  u_xlat0 = ((x_1452 * x_1453) + vec3<f32>(x_1455.x, x_1455.y, x_1455.w));
  let x_1460 : vec4<f32> = u_xlat5;
  let x_1462 : vec3<f32> = u_xlat0;
  let x_1463 : vec3<f32> = (vec3<f32>(x_1460.x, x_1460.y, x_1460.z) + x_1462);
  let x_1464 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1463.x, x_1463.y, x_1463.z, x_1464.w);
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(4) vs_TEXCOORD4_param : vec3<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

