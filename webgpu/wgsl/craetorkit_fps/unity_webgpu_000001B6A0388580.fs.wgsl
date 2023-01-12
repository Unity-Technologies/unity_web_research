struct PGlobals {
  x_SinTime : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
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
  @size(8)
  padding_3 : u32,
  x_Color : vec4<f32>,
  x_EmissionColor : vec4<f32>,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(11) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Occlusion : texture_2d<f32>;

@group(0) @binding(13) var sampler_Occlusion : sampler;

@group(0) @binding(2) var x_Specular : texture_2d<f32>;

@group(0) @binding(14) var sampler_Specular : sampler;

@group(0) @binding(3) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(15) var sampler_EmissionMap : sampler;

@group(0) @binding(4) var x_DisplacementNoise : texture_3d<f32>;

@group(0) @binding(16) var sampler_DisplacementNoise : sampler;

@group(0) @binding(5) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(12) var sampler_NormalMap : sampler;

@group(0) @binding(8) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(10) var samplerunity_ProbeVolumeSH : sampler;

var<private> vs_TEXCOORD4 : vec3<f32>;

@group(0) @binding(6) var unity_SpecCube0 : texture_cube<f32>;

@group(0) @binding(9) var samplerunity_SpecCube0 : sampler;

@group(0) @binding(7) var unity_SpecCube1 : texture_cube<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat51 : f32;
  var u_xlat2 : vec3<f32>;
  var u_xlat3 : vec4<f32>;
  var u_xlat4 : vec4<f32>;
  var u_xlat52 : f32;
  var u_xlat5 : vec4<f32>;
  var u_xlat6 : vec3<f32>;
  var u_xlat7 : vec4<f32>;
  var u_xlat53 : f32;
  var u_xlat54 : f32;
  var u_xlatb5 : bool;
  var u_xlatb39 : bool;
  var u_xlat8 : vec4<f32>;
  var x_254 : vec3<f32>;
  var u_xlat39 : f32;
  var u_xlat56 : f32;
  var u_xlat57 : f32;
  var u_xlat9 : vec3<f32>;
  var u_xlat10 : vec4<f32>;
  var x_434 : vec3<f32>;
  var u_xlat11 : vec4<f32>;
  var u_xlat12 : vec4<f32>;
  var u_xlat13 : vec3<f32>;
  var u_xlatb14 : vec3<bool>;
  var hlslcc_movcTemp : vec4<f32>;
  var x_627 : f32;
  var x_639 : f32;
  var x_651 : f32;
  var u_xlatb57 : bool;
  var u_xlat14 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb16 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_816 : f32;
  var x_828 : f32;
  var x_840 : f32;
  var u_xlat19 : f32;
  var u_xlat18 : f32;
  var u_xlat35 : f32;
  var u_xlat36 : f32;
  var u_xlatb2 : bool;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_16 : f32 = vs_TEXCOORD1.w;
  u_xlat0.x = x_16;
  let x_22 : f32 = vs_TEXCOORD2.w;
  u_xlat0.y = x_22;
  let x_27 : f32 = vs_TEXCOORD3.w;
  u_xlat0.z = x_27;
  let x_32 : vec4<f32> = u_xlat0;
  let x_43 : vec3<f32> = x_38.x_WorldSpaceCameraPos;
  let x_44 : vec3<f32> = (-(vec3<f32>(x_32.x, x_32.y, x_32.z)) + x_43);
  let x_45 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_48 : vec4<f32> = u_xlat1;
  let x_50 : vec4<f32> = u_xlat1;
  u_xlat51 = dot(vec3<f32>(x_48.x, x_48.y, x_48.z), vec3<f32>(x_50.x, x_50.y, x_50.z));
  let x_53 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_53);
  let x_57 : f32 = u_xlat51;
  let x_59 : vec4<f32> = u_xlat1;
  u_xlat2 = (vec3<f32>(x_57, x_57, x_57) * vec3<f32>(x_59.x, x_59.y, x_59.z));
  let x_76 : vec2<f32> = vs_TEXCOORD0;
  let x_77 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_76);
  u_xlat3 = x_77;
  let x_79 : vec4<f32> = u_xlat3;
  let x_83 : vec4<f32> = x_38.x_Color;
  u_xlat4 = (x_79 * x_83);
  let x_91 : vec2<f32> = vs_TEXCOORD0;
  let x_92 : vec4<f32> = textureSample(x_Occlusion, sampler_Occlusion, x_91);
  u_xlat52 = x_92.x;
  let x_100 : vec2<f32> = vs_TEXCOORD0;
  let x_101 : vec4<f32> = textureSample(x_Specular, sampler_Specular, x_100);
  let x_102 : vec2<f32> = vec2<f32>(x_101.x, x_101.w);
  let x_103 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_102.x, x_102.y, x_103.z, x_103.w);
  let x_111 : vec2<f32> = vs_TEXCOORD0;
  let x_112 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_111);
  u_xlat6 = vec3<f32>(x_112.x, x_112.y, x_112.z);
  let x_114 : vec3<f32> = u_xlat6;
  let x_117 : vec4<f32> = x_38.x_EmissionColor;
  u_xlat6 = (x_114 * vec3<f32>(x_117.x, x_117.y, x_117.z));
  let x_121 : vec4<f32> = u_xlat0;
  let x_125 : vec4<f32> = x_38.x_SinTime;
  let x_127 : vec3<f32> = (vec3<f32>(x_121.x, x_121.y, x_121.z) + vec3<f32>(x_125.z, x_125.z, x_125.z));
  let x_128 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_127.x, x_127.y, x_127.z, x_128.w);
  let x_139 : vec4<f32> = u_xlat7;
  let x_141 : vec4<f32> = textureSample(x_DisplacementNoise, sampler_DisplacementNoise, vec3<f32>(x_139.x, x_139.y, x_139.z));
  u_xlat53 = x_141.x;
  let x_145 : f32 = u_xlat5.x;
  let x_149 : f32 = x_38.x_Metallic;
  u_xlat54 = (x_145 * x_149);
  let x_156 : vec2<f32> = vs_TEXCOORD0;
  let x_157 : vec4<f32> = textureSample(x_NormalMap, sampler_NormalMap, x_156);
  let x_158 : vec3<f32> = vec3<f32>(x_157.x, x_157.y, x_157.w);
  let x_159 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_158.x, x_159.y, x_158.y, x_158.z);
  let x_162 : f32 = u_xlat5.w;
  let x_164 : f32 = u_xlat5.x;
  u_xlat5.x = (x_162 * x_164);
  let x_167 : vec4<f32> = u_xlat5;
  let x_174 : vec2<f32> = ((vec2<f32>(x_167.x, x_167.z) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_175 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_174.x, x_174.y, x_175.z, x_175.w);
  let x_177 : vec4<f32> = u_xlat7;
  let x_179 : vec4<f32> = u_xlat7;
  u_xlat5.x = dot(vec2<f32>(x_177.x, x_177.y), vec2<f32>(x_179.x, x_179.y));
  let x_184 : f32 = u_xlat5.x;
  u_xlat5.x = min(x_184, 1.0f);
  let x_189 : f32 = u_xlat5.x;
  u_xlat5.x = (-(x_189) + 1.0f);
  let x_194 : f32 = u_xlat5.x;
  u_xlat7.z = sqrt(x_194);
  let x_202 : f32 = x_38.unity_ProbeVolumeParams.x;
  u_xlatb5 = (x_202 == 1.0f);
  let x_204 : bool = u_xlatb5;
  if (x_204) {
    let x_209 : f32 = x_38.unity_ProbeVolumeParams.y;
    u_xlatb39 = (x_209 == 1.0f);
    let x_212 : vec4<f32> = vs_TEXCOORD2;
    let x_216 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[1i];
    let x_218 : vec3<f32> = (vec3<f32>(x_212.w, x_212.w, x_212.w) * vec3<f32>(x_216.x, x_216.y, x_216.z));
    let x_219 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_218.x, x_218.y, x_218.z, x_219.w);
    let x_222 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[0i];
    let x_224 : vec4<f32> = vs_TEXCOORD1;
    let x_227 : vec4<f32> = u_xlat8;
    let x_229 : vec3<f32> = ((vec3<f32>(x_222.x, x_222.y, x_222.z) * vec3<f32>(x_224.w, x_224.w, x_224.w)) + vec3<f32>(x_227.x, x_227.y, x_227.z));
    let x_230 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_229.x, x_229.y, x_229.z, x_230.w);
    let x_234 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[2i];
    let x_236 : vec4<f32> = vs_TEXCOORD3;
    let x_239 : vec4<f32> = u_xlat8;
    let x_241 : vec3<f32> = ((vec3<f32>(x_234.x, x_234.y, x_234.z) * vec3<f32>(x_236.w, x_236.w, x_236.w)) + vec3<f32>(x_239.x, x_239.y, x_239.z));
    let x_242 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_241.x, x_241.y, x_241.z, x_242.w);
    let x_244 : vec4<f32> = u_xlat8;
    let x_248 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[3i];
    let x_250 : vec3<f32> = (vec3<f32>(x_244.x, x_244.y, x_244.z) + vec3<f32>(x_248.x, x_248.y, x_248.z));
    let x_251 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_250.x, x_250.y, x_250.z, x_251.w);
    let x_253 : bool = u_xlatb39;
    if (x_253) {
      let x_257 : vec4<f32> = u_xlat8;
      x_254 = vec3<f32>(x_257.x, x_257.y, x_257.z);
    } else {
      let x_260 : vec4<f32> = u_xlat0;
      x_254 = vec3<f32>(x_260.x, x_260.y, x_260.z);
    }
    let x_262 : vec3<f32> = x_254;
    let x_263 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_262.x, x_262.y, x_262.z, x_263.w);
    let x_265 : vec4<f32> = u_xlat8;
    let x_269 : vec3<f32> = x_38.unity_ProbeVolumeMin;
    let x_271 : vec3<f32> = (vec3<f32>(x_265.x, x_265.y, x_265.z) + -(x_269));
    let x_272 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_271.x, x_271.y, x_271.z, x_272.w);
    let x_274 : vec4<f32> = u_xlat8;
    let x_278 : vec3<f32> = x_38.unity_ProbeVolumeSizeInv;
    let x_279 : vec3<f32> = (vec3<f32>(x_274.x, x_274.y, x_274.z) * x_278);
    let x_280 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_280.x, x_279.x, x_279.y, x_279.z);
    let x_284 : f32 = u_xlat8.y;
    u_xlat39 = ((x_284 * 0.25f) + 0.75f);
    let x_291 : f32 = x_38.unity_ProbeVolumeParams.z;
    u_xlat56 = ((x_291 * 0.5f) + 0.75f);
    let x_295 : f32 = u_xlat56;
    let x_296 : f32 = u_xlat39;
    u_xlat8.x = max(x_295, x_296);
    let x_304 : vec4<f32> = u_xlat8;
    let x_306 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_304.x, x_304.z, x_304.w));
    u_xlat8 = x_306;
  } else {
    u_xlat8.x = 1.0f;
    u_xlat8.y = 1.0f;
    u_xlat8.z = 1.0f;
    u_xlat8.w = 1.0f;
  }
  let x_312 : vec4<f32> = u_xlat8;
  let x_315 : vec4<f32> = x_38.unity_OcclusionMaskSelector;
  u_xlat39 = dot(x_312, x_315);
  let x_317 : f32 = u_xlat39;
  u_xlat39 = clamp(x_317, 0.0f, 1.0f);
  let x_320 : vec4<f32> = vs_TEXCOORD1;
  let x_322 : vec4<f32> = u_xlat7;
  u_xlat8.x = dot(vec3<f32>(x_320.x, x_320.y, x_320.z), vec3<f32>(x_322.x, x_322.y, x_322.z));
  let x_326 : vec4<f32> = vs_TEXCOORD2;
  let x_328 : vec4<f32> = u_xlat7;
  u_xlat8.y = dot(vec3<f32>(x_326.x, x_326.y, x_326.z), vec3<f32>(x_328.x, x_328.y, x_328.z));
  let x_332 : vec4<f32> = vs_TEXCOORD3;
  let x_334 : vec4<f32> = u_xlat7;
  u_xlat8.z = dot(vec3<f32>(x_332.x, x_332.y, x_332.z), vec3<f32>(x_334.x, x_334.y, x_334.z));
  let x_338 : vec4<f32> = u_xlat8;
  let x_340 : vec4<f32> = u_xlat8;
  u_xlat56 = dot(vec3<f32>(x_338.x, x_338.y, x_338.z), vec3<f32>(x_340.x, x_340.y, x_340.z));
  let x_343 : f32 = u_xlat56;
  u_xlat56 = inverseSqrt(x_343);
  let x_345 : f32 = u_xlat56;
  let x_347 : vec4<f32> = u_xlat8;
  let x_349 : vec3<f32> = (vec3<f32>(x_345, x_345, x_345) * vec3<f32>(x_347.x, x_347.y, x_347.z));
  let x_350 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : f32 = u_xlat5.y;
  let x_357 : f32 = x_38.x_Glossiness;
  u_xlat56 = ((-(x_353) * x_357) + 1.0f);
  let x_361 : vec3<f32> = u_xlat2;
  let x_363 : vec4<f32> = u_xlat7;
  u_xlat57 = dot(-(x_361), vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : f32 = u_xlat57;
  let x_367 : f32 = u_xlat57;
  u_xlat57 = (x_366 + x_367);
  let x_369 : vec4<f32> = u_xlat7;
  let x_371 : f32 = u_xlat57;
  let x_375 : vec3<f32> = u_xlat2;
  let x_377 : vec3<f32> = ((vec3<f32>(x_369.x, x_369.y, x_369.z) * -(vec3<f32>(x_371, x_371, x_371))) + -(x_375));
  let x_378 : vec4<f32> = u_xlat8;
  u_xlat8 = vec4<f32>(x_377.x, x_377.y, x_377.z, x_378.w);
  let x_381 : f32 = u_xlat39;
  let x_385 : vec4<f32> = x_38.x_LightColor0;
  u_xlat9 = (vec3<f32>(x_381, x_381, x_381) * vec3<f32>(x_385.x, x_385.y, x_385.z));
  let x_388 : bool = u_xlatb5;
  if (x_388) {
    let x_392 : f32 = x_38.unity_ProbeVolumeParams.y;
    u_xlatb5 = (x_392 == 1.0f);
    let x_395 : vec4<f32> = vs_TEXCOORD2;
    let x_398 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[1i];
    let x_400 : vec3<f32> = (vec3<f32>(x_395.w, x_395.w, x_395.w) * vec3<f32>(x_398.x, x_398.y, x_398.z));
    let x_401 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_400.x, x_400.y, x_400.z, x_401.w);
    let x_404 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[0i];
    let x_406 : vec4<f32> = vs_TEXCOORD1;
    let x_409 : vec4<f32> = u_xlat10;
    let x_411 : vec3<f32> = ((vec3<f32>(x_404.x, x_404.y, x_404.z) * vec3<f32>(x_406.w, x_406.w, x_406.w)) + vec3<f32>(x_409.x, x_409.y, x_409.z));
    let x_412 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_411.x, x_411.y, x_411.z, x_412.w);
    let x_415 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[2i];
    let x_417 : vec4<f32> = vs_TEXCOORD3;
    let x_420 : vec4<f32> = u_xlat10;
    let x_422 : vec3<f32> = ((vec3<f32>(x_415.x, x_415.y, x_415.z) * vec3<f32>(x_417.w, x_417.w, x_417.w)) + vec3<f32>(x_420.x, x_420.y, x_420.z));
    let x_423 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_422.x, x_422.y, x_422.z, x_423.w);
    let x_425 : vec4<f32> = u_xlat10;
    let x_428 : vec4<f32> = x_38.unity_ProbeVolumeWorldToObject[3i];
    let x_430 : vec3<f32> = (vec3<f32>(x_425.x, x_425.y, x_425.z) + vec3<f32>(x_428.x, x_428.y, x_428.z));
    let x_431 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_430.x, x_430.y, x_430.z, x_431.w);
    let x_433 : bool = u_xlatb5;
    if (x_433) {
      let x_437 : vec4<f32> = u_xlat10;
      x_434 = vec3<f32>(x_437.x, x_437.y, x_437.z);
    } else {
      let x_440 : vec4<f32> = u_xlat0;
      x_434 = vec3<f32>(x_440.x, x_440.y, x_440.z);
    }
    let x_442 : vec3<f32> = x_434;
    let x_443 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_442.x, x_442.y, x_442.z, x_443.w);
    let x_445 : vec4<f32> = u_xlat10;
    let x_448 : vec3<f32> = x_38.unity_ProbeVolumeMin;
    let x_450 : vec3<f32> = (vec3<f32>(x_445.x, x_445.y, x_445.z) + -(x_448));
    let x_451 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_450.x, x_450.y, x_450.z, x_451.w);
    let x_453 : vec4<f32> = u_xlat10;
    let x_456 : vec3<f32> = x_38.unity_ProbeVolumeSizeInv;
    let x_457 : vec3<f32> = (vec3<f32>(x_453.x, x_453.y, x_453.z) * x_456);
    let x_458 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_458.x, x_457.x, x_457.y, x_457.z);
    let x_461 : f32 = u_xlat10.y;
    u_xlat5.x = (x_461 * 0.25f);
    let x_465 : f32 = x_38.unity_ProbeVolumeParams.z;
    u_xlat39 = (x_465 * 0.5f);
    let x_468 : f32 = x_38.unity_ProbeVolumeParams.z;
    u_xlat57 = ((-(x_468) * 0.5f) + 0.25f);
    let x_472 : f32 = u_xlat39;
    let x_474 : f32 = u_xlat5.x;
    u_xlat5.x = max(x_472, x_474);
    let x_477 : f32 = u_xlat57;
    let x_479 : f32 = u_xlat5.x;
    u_xlat10.x = min(x_477, x_479);
    let x_486 : vec4<f32> = u_xlat10;
    let x_488 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_486.x, x_486.z, x_486.w));
    u_xlat11 = x_488;
    let x_490 : vec4<f32> = u_xlat10;
    let x_493 : vec3<f32> = (vec3<f32>(x_490.x, x_490.z, x_490.w) + vec3<f32>(0.25f, 0.0f, 0.0f));
    let x_494 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_493.x, x_493.y, x_493.z, x_494.w);
    let x_499 : vec4<f32> = u_xlat12;
    let x_501 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_499.x, x_499.y, x_499.z));
    u_xlat12 = x_501;
    let x_502 : vec4<f32> = u_xlat10;
    let x_505 : vec3<f32> = (vec3<f32>(x_502.x, x_502.z, x_502.w) + vec3<f32>(0.5f, 0.0f, 0.0f));
    let x_506 : vec4<f32> = u_xlat10;
    u_xlat10 = vec4<f32>(x_505.x, x_505.y, x_505.z, x_506.w);
    let x_511 : vec4<f32> = u_xlat10;
    let x_513 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_511.x, x_511.y, x_511.z));
    u_xlat10 = x_513;
    u_xlat7.w = 1.0f;
    let x_515 : vec4<f32> = u_xlat11;
    let x_516 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_515, x_516);
    let x_519 : vec4<f32> = u_xlat12;
    let x_520 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_519, x_520);
    let x_523 : vec4<f32> = u_xlat10;
    let x_524 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_523, x_524);
  } else {
    u_xlat7.w = 1.0f;
    let x_530 : vec4<f32> = x_38.unity_SHAr;
    let x_531 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_530, x_531);
    let x_536 : vec4<f32> = x_38.unity_SHAg;
    let x_537 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_536, x_537);
    let x_542 : vec4<f32> = x_38.unity_SHAb;
    let x_543 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_542, x_543);
  }
  let x_546 : vec4<f32> = u_xlat11;
  let x_550 : vec3<f32> = vs_TEXCOORD4;
  let x_551 : vec3<f32> = (vec3<f32>(x_546.x, x_546.y, x_546.z) + x_550);
  let x_552 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_551.x, x_551.y, x_551.z, x_552.w);
  let x_554 : vec4<f32> = u_xlat10;
  let x_557 : vec3<f32> = max(vec3<f32>(x_554.x, x_554.y, x_554.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_558 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_557.x, x_557.y, x_557.z, x_558.w);
  let x_562 : f32 = x_38.unity_SpecCube0_ProbePosition.w;
  u_xlatb5 = (0.0f < x_562);
  let x_564 : bool = u_xlatb5;
  if (x_564) {
    let x_567 : vec4<f32> = u_xlat8;
    let x_569 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_567.x, x_567.y, x_567.z), vec3<f32>(x_569.x, x_569.y, x_569.z));
    let x_574 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_574);
    let x_577 : vec4<f32> = u_xlat5;
    let x_579 : vec4<f32> = u_xlat8;
    let x_581 : vec3<f32> = (vec3<f32>(x_577.x, x_577.x, x_577.x) * vec3<f32>(x_579.x, x_579.y, x_579.z));
    let x_582 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_581.x, x_581.y, x_581.z, x_582.w);
    let x_584 : vec4<f32> = u_xlat0;
    let x_589 : vec4<f32> = x_38.unity_SpecCube0_BoxMax;
    let x_591 : vec3<f32> = (-(vec3<f32>(x_584.x, x_584.y, x_584.z)) + vec3<f32>(x_589.x, x_589.y, x_589.z));
    let x_592 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_591.x, x_591.y, x_591.z, x_592.w);
    let x_594 : vec4<f32> = u_xlat12;
    let x_596 : vec4<f32> = u_xlat11;
    let x_598 : vec3<f32> = (vec3<f32>(x_594.x, x_594.y, x_594.z) / vec3<f32>(x_596.x, x_596.y, x_596.z));
    let x_599 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_598.x, x_598.y, x_598.z, x_599.w);
    let x_602 : vec4<f32> = u_xlat0;
    let x_607 : vec4<f32> = x_38.unity_SpecCube0_BoxMin;
    u_xlat13 = (-(vec3<f32>(x_602.x, x_602.y, x_602.z)) + vec3<f32>(x_607.x, x_607.y, x_607.z));
    let x_610 : vec3<f32> = u_xlat13;
    let x_611 : vec4<f32> = u_xlat11;
    u_xlat13 = (x_610 / vec3<f32>(x_611.x, x_611.y, x_611.z));
    let x_618 : vec4<f32> = u_xlat11;
    let x_621 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_618.x, x_618.y, x_618.z, x_618.x));
    u_xlatb14 = vec3<bool>(x_621.x, x_621.y, x_621.z);
    let x_624 : vec4<f32> = u_xlat12;
    hlslcc_movcTemp = x_624;
    let x_626 : bool = u_xlatb14.x;
    if (x_626) {
      let x_631 : f32 = u_xlat12.x;
      x_627 = x_631;
    } else {
      let x_634 : f32 = u_xlat13.x;
      x_627 = x_634;
    }
    let x_635 : f32 = x_627;
    hlslcc_movcTemp.x = x_635;
    let x_638 : bool = u_xlatb14.y;
    if (x_638) {
      let x_643 : f32 = u_xlat12.y;
      x_639 = x_643;
    } else {
      let x_646 : f32 = u_xlat13.y;
      x_639 = x_646;
    }
    let x_647 : f32 = x_639;
    hlslcc_movcTemp.y = x_647;
    let x_650 : bool = u_xlatb14.z;
    if (x_650) {
      let x_655 : f32 = u_xlat12.z;
      x_651 = x_655;
    } else {
      let x_658 : f32 = u_xlat13.z;
      x_651 = x_658;
    }
    let x_659 : f32 = x_651;
    hlslcc_movcTemp.z = x_659;
    let x_661 : vec4<f32> = hlslcc_movcTemp;
    u_xlat12 = x_661;
    let x_663 : f32 = u_xlat12.y;
    let x_665 : f32 = u_xlat12.x;
    u_xlat5.x = min(x_663, x_665);
    let x_669 : f32 = u_xlat12.z;
    let x_671 : f32 = u_xlat5.x;
    u_xlat5.x = min(x_669, x_671);
    let x_674 : vec4<f32> = u_xlat0;
    let x_677 : vec4<f32> = x_38.unity_SpecCube0_ProbePosition;
    let x_680 : vec3<f32> = (vec3<f32>(x_674.x, x_674.y, x_674.z) + -(vec3<f32>(x_677.x, x_677.y, x_677.z)));
    let x_681 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_680.x, x_680.y, x_680.z, x_681.w);
    let x_683 : vec4<f32> = u_xlat11;
    let x_685 : vec4<f32> = u_xlat5;
    let x_688 : vec4<f32> = u_xlat12;
    let x_690 : vec3<f32> = ((vec3<f32>(x_683.x, x_683.y, x_683.z) * vec3<f32>(x_685.x, x_685.x, x_685.x)) + vec3<f32>(x_688.x, x_688.y, x_688.z));
    let x_691 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_690.x, x_690.y, x_690.z, x_691.w);
  } else {
    let x_694 : vec4<f32> = u_xlat8;
    let x_695 : vec3<f32> = vec3<f32>(x_694.x, x_694.y, x_694.z);
    let x_696 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_695.x, x_695.y, x_695.z, x_696.w);
  }
  let x_698 : f32 = u_xlat56;
  u_xlat5.x = ((-(x_698) * 0.699999988f) + 1.700000048f);
  let x_706 : f32 = u_xlat5.x;
  let x_707 : f32 = u_xlat56;
  u_xlat5.x = (x_706 * x_707);
  let x_711 : f32 = u_xlat5.x;
  u_xlat5.x = (x_711 * 6.0f);
  let x_723 : vec4<f32> = u_xlat11;
  let x_726 : f32 = u_xlat5.x;
  let x_727 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_723.x, x_723.y, x_723.z), x_726);
  u_xlat11 = x_727;
  let x_729 : f32 = u_xlat11.w;
  u_xlat39 = (x_729 + -1.0f);
  let x_733 : f32 = x_38.unity_SpecCube0_HDR.w;
  let x_734 : f32 = u_xlat39;
  u_xlat39 = ((x_733 * x_734) + 1.0f);
  let x_737 : f32 = u_xlat39;
  u_xlat39 = log2(x_737);
  let x_739 : f32 = u_xlat39;
  let x_741 : f32 = x_38.unity_SpecCube0_HDR.y;
  u_xlat39 = (x_739 * x_741);
  let x_743 : f32 = u_xlat39;
  u_xlat39 = exp2(x_743);
  let x_745 : f32 = u_xlat39;
  let x_747 : f32 = x_38.unity_SpecCube0_HDR.x;
  u_xlat39 = (x_745 * x_747);
  let x_749 : vec4<f32> = u_xlat11;
  let x_751 : f32 = u_xlat39;
  let x_753 : vec3<f32> = (vec3<f32>(x_749.x, x_749.y, x_749.z) * vec3<f32>(x_751, x_751, x_751));
  let x_754 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_753.x, x_753.y, x_753.z, x_754.w);
  let x_758 : f32 = x_38.unity_SpecCube0_BoxMin.w;
  u_xlatb57 = (x_758 < 0.999989986f);
  let x_761 : bool = u_xlatb57;
  if (x_761) {
    let x_766 : f32 = x_38.unity_SpecCube1_ProbePosition.w;
    u_xlatb57 = (0.0f < x_766);
    let x_768 : bool = u_xlatb57;
    if (x_768) {
      let x_771 : vec4<f32> = u_xlat8;
      let x_773 : vec4<f32> = u_xlat8;
      u_xlat57 = dot(vec3<f32>(x_771.x, x_771.y, x_771.z), vec3<f32>(x_773.x, x_773.y, x_773.z));
      let x_776 : f32 = u_xlat57;
      u_xlat57 = inverseSqrt(x_776);
      let x_778 : f32 = u_xlat57;
      let x_780 : vec4<f32> = u_xlat8;
      u_xlat13 = (vec3<f32>(x_778, x_778, x_778) * vec3<f32>(x_780.x, x_780.y, x_780.z));
      let x_784 : vec4<f32> = u_xlat0;
      let x_789 : vec4<f32> = x_38.unity_SpecCube1_BoxMax;
      u_xlat14 = (-(vec3<f32>(x_784.x, x_784.y, x_784.z)) + vec3<f32>(x_789.x, x_789.y, x_789.z));
      let x_792 : vec3<f32> = u_xlat14;
      let x_793 : vec3<f32> = u_xlat13;
      u_xlat14 = (x_792 / x_793);
      let x_796 : vec4<f32> = u_xlat0;
      let x_801 : vec4<f32> = x_38.unity_SpecCube1_BoxMin;
      u_xlat15 = (-(vec3<f32>(x_796.x, x_796.y, x_796.z)) + vec3<f32>(x_801.x, x_801.y, x_801.z));
      let x_804 : vec3<f32> = u_xlat15;
      let x_805 : vec3<f32> = u_xlat13;
      u_xlat15 = (x_804 / x_805);
      let x_808 : vec3<f32> = u_xlat13;
      let x_810 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_808.x, x_808.y, x_808.z, x_808.x));
      u_xlatb16 = vec3<bool>(x_810.x, x_810.y, x_810.z);
      let x_813 : vec3<f32> = u_xlat14;
      hlslcc_movcTemp_1 = x_813;
      let x_815 : bool = u_xlatb16.x;
      if (x_815) {
        let x_820 : f32 = u_xlat14.x;
        x_816 = x_820;
      } else {
        let x_823 : f32 = u_xlat15.x;
        x_816 = x_823;
      }
      let x_824 : f32 = x_816;
      hlslcc_movcTemp_1.x = x_824;
      let x_827 : bool = u_xlatb16.y;
      if (x_827) {
        let x_832 : f32 = u_xlat14.y;
        x_828 = x_832;
      } else {
        let x_835 : f32 = u_xlat15.y;
        x_828 = x_835;
      }
      let x_836 : f32 = x_828;
      hlslcc_movcTemp_1.y = x_836;
      let x_839 : bool = u_xlatb16.z;
      if (x_839) {
        let x_844 : f32 = u_xlat14.z;
        x_840 = x_844;
      } else {
        let x_847 : f32 = u_xlat15.z;
        x_840 = x_847;
      }
      let x_848 : f32 = x_840;
      hlslcc_movcTemp_1.z = x_848;
      let x_850 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat14 = x_850;
      let x_852 : f32 = u_xlat14.y;
      let x_854 : f32 = u_xlat14.x;
      u_xlat57 = min(x_852, x_854);
      let x_857 : f32 = u_xlat14.z;
      let x_858 : f32 = u_xlat57;
      u_xlat57 = min(x_857, x_858);
      let x_860 : vec4<f32> = u_xlat0;
      let x_863 : vec4<f32> = x_38.unity_SpecCube1_ProbePosition;
      let x_866 : vec3<f32> = (vec3<f32>(x_860.x, x_860.y, x_860.z) + -(vec3<f32>(x_863.x, x_863.y, x_863.z)));
      let x_867 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_866.x, x_866.y, x_866.z, x_867.w);
      let x_869 : vec3<f32> = u_xlat13;
      let x_870 : f32 = u_xlat57;
      let x_873 : vec4<f32> = u_xlat0;
      let x_875 : vec3<f32> = ((x_869 * vec3<f32>(x_870, x_870, x_870)) + vec3<f32>(x_873.x, x_873.y, x_873.z));
      let x_876 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_875.x, x_875.y, x_875.z, x_876.w);
    }
    let x_882 : vec4<f32> = u_xlat8;
    let x_885 : f32 = u_xlat5.x;
    let x_886 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_882.x, x_882.y, x_882.z), x_885);
    u_xlat8 = x_886;
    let x_888 : f32 = u_xlat8.w;
    u_xlat0.x = (x_888 + -1.0f);
    let x_893 : f32 = x_38.unity_SpecCube1_HDR.w;
    let x_895 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_893 * x_895) + 1.0f);
    let x_900 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_900);
    let x_904 : f32 = u_xlat0.x;
    let x_906 : f32 = x_38.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_904 * x_906);
    let x_910 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_910);
    let x_914 : f32 = u_xlat0.x;
    let x_916 : f32 = x_38.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_914 * x_916);
    let x_919 : vec4<f32> = u_xlat8;
    let x_921 : vec4<f32> = u_xlat0;
    let x_923 : vec3<f32> = (vec3<f32>(x_919.x, x_919.y, x_919.z) * vec3<f32>(x_921.x, x_921.x, x_921.x));
    let x_924 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_923.x, x_923.y, x_923.z, x_924.w);
    let x_926 : f32 = u_xlat39;
    let x_928 : vec4<f32> = u_xlat11;
    let x_931 : vec4<f32> = u_xlat0;
    let x_934 : vec3<f32> = ((vec3<f32>(x_926, x_926, x_926) * vec3<f32>(x_928.x, x_928.y, x_928.z)) + -(vec3<f32>(x_931.x, x_931.y, x_931.z)));
    let x_935 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_934.x, x_934.y, x_934.z, x_935.w);
    let x_938 : vec4<f32> = x_38.unity_SpecCube0_BoxMin;
    let x_940 : vec4<f32> = u_xlat8;
    let x_943 : vec4<f32> = u_xlat0;
    let x_945 : vec3<f32> = ((vec3<f32>(x_938.w, x_938.w, x_938.w) * vec3<f32>(x_940.x, x_940.y, x_940.z)) + vec3<f32>(x_943.x, x_943.y, x_943.z));
    let x_946 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_945.x, x_945.y, x_945.z, x_946.w);
  }
  let x_948 : f32 = u_xlat52;
  let x_950 : vec4<f32> = u_xlat12;
  let x_952 : vec3<f32> = (vec3<f32>(x_948, x_948, x_948) * vec3<f32>(x_950.x, x_950.y, x_950.z));
  let x_953 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_952.x, x_952.y, x_952.z, x_953.w);
  let x_955 : vec4<f32> = u_xlat3;
  let x_958 : vec4<f32> = x_38.x_Color;
  let x_963 : vec3<f32> = ((vec3<f32>(x_955.x, x_955.y, x_955.z) * vec3<f32>(x_958.x, x_958.y, x_958.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_964 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_963.x, x_963.y, x_963.z, x_964.w);
  let x_966 : f32 = u_xlat54;
  let x_968 : vec4<f32> = u_xlat3;
  let x_973 : vec3<f32> = ((vec3<f32>(x_966, x_966, x_966) * vec3<f32>(x_968.x, x_968.y, x_968.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_974 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_973.x, x_973.y, x_973.z, x_974.w);
  let x_976 : f32 = u_xlat54;
  u_xlat54 = ((-(x_976) * 0.959999979f) + 0.959999979f);
  let x_981 : f32 = u_xlat54;
  let x_983 : vec4<f32> = u_xlat4;
  let x_985 : vec3<f32> = (vec3<f32>(x_981, x_981, x_981) * vec3<f32>(x_983.x, x_983.y, x_983.z));
  let x_986 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_985.x, x_985.y, x_985.z, x_986.w);
  let x_988 : vec4<f32> = u_xlat1;
  let x_990 : f32 = u_xlat51;
  let x_994 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  let x_996 : vec3<f32> = ((vec3<f32>(x_988.x, x_988.y, x_988.z) * vec3<f32>(x_990, x_990, x_990)) + vec3<f32>(x_994.x, x_994.y, x_994.z));
  let x_997 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_996.x, x_996.y, x_996.z, x_997.w);
  let x_999 : vec4<f32> = u_xlat1;
  let x_1001 : vec4<f32> = u_xlat1;
  u_xlat51 = dot(vec3<f32>(x_999.x, x_999.y, x_999.z), vec3<f32>(x_1001.x, x_1001.y, x_1001.z));
  let x_1004 : f32 = u_xlat51;
  u_xlat51 = max(x_1004, 0.001f);
  let x_1007 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_1007);
  let x_1009 : f32 = u_xlat51;
  let x_1011 : vec4<f32> = u_xlat1;
  let x_1013 : vec3<f32> = (vec3<f32>(x_1009, x_1009, x_1009) * vec3<f32>(x_1011.x, x_1011.y, x_1011.z));
  let x_1014 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1013.x, x_1013.y, x_1013.z, x_1014.w);
  let x_1016 : vec4<f32> = u_xlat7;
  let x_1018 : vec3<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_1016.x, x_1016.y, x_1016.z), x_1018);
  let x_1020 : vec4<f32> = u_xlat7;
  let x_1023 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1020.x, x_1020.y, x_1020.z), vec3<f32>(x_1023.x, x_1023.y, x_1023.z));
  let x_1028 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1028, 0.0f, 1.0f);
  let x_1032 : vec4<f32> = u_xlat7;
  let x_1034 : vec4<f32> = u_xlat1;
  u_xlat19 = dot(vec3<f32>(x_1032.x, x_1032.y, x_1032.z), vec3<f32>(x_1034.x, x_1034.y, x_1034.z));
  let x_1037 : f32 = u_xlat19;
  u_xlat19 = clamp(x_1037, 0.0f, 1.0f);
  let x_1040 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  let x_1042 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1040.x, x_1040.y, x_1040.z), vec3<f32>(x_1042.x, x_1042.y, x_1042.z));
  let x_1047 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1047, 0.0f, 1.0f);
  let x_1052 : f32 = u_xlat1.x;
  let x_1054 : f32 = u_xlat1.x;
  u_xlat18 = (x_1052 * x_1054);
  let x_1056 : f32 = u_xlat18;
  let x_1058 : f32 = u_xlat56;
  u_xlat18 = dot(vec2<f32>(x_1056, x_1056), vec2<f32>(x_1058, x_1058));
  let x_1061 : f32 = u_xlat18;
  u_xlat18 = (x_1061 + -0.5f);
  let x_1066 : f32 = u_xlat2.x;
  u_xlat35 = (-(x_1066) + 1.0f);
  let x_1070 : f32 = u_xlat35;
  let x_1071 : f32 = u_xlat35;
  u_xlat36 = (x_1070 * x_1071);
  let x_1073 : f32 = u_xlat36;
  let x_1074 : f32 = u_xlat36;
  u_xlat36 = (x_1073 * x_1074);
  let x_1076 : f32 = u_xlat35;
  let x_1077 : f32 = u_xlat36;
  u_xlat35 = (x_1076 * x_1077);
  let x_1079 : f32 = u_xlat18;
  let x_1080 : f32 = u_xlat35;
  u_xlat35 = ((x_1079 * x_1080) + 1.0f);
  let x_1083 : f32 = u_xlat51;
  u_xlat36 = (-(abs(x_1083)) + 1.0f);
  let x_1087 : f32 = u_xlat36;
  let x_1088 : f32 = u_xlat36;
  u_xlat5.x = (x_1087 * x_1088);
  let x_1092 : f32 = u_xlat5.x;
  let x_1094 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1092 * x_1094);
  let x_1097 : f32 = u_xlat36;
  let x_1099 : f32 = u_xlat5.x;
  u_xlat36 = (x_1097 * x_1099);
  let x_1101 : f32 = u_xlat18;
  let x_1102 : f32 = u_xlat36;
  u_xlat18 = ((x_1101 * x_1102) + 1.0f);
  let x_1105 : f32 = u_xlat18;
  let x_1106 : f32 = u_xlat35;
  u_xlat18 = (x_1105 * x_1106);
  let x_1109 : f32 = u_xlat2.x;
  let x_1110 : f32 = u_xlat18;
  u_xlat18 = (x_1109 * x_1110);
  let x_1112 : f32 = u_xlat56;
  let x_1113 : f32 = u_xlat56;
  u_xlat35 = (x_1112 * x_1113);
  let x_1115 : f32 = u_xlat35;
  u_xlat35 = max(x_1115, 0.002f);
  let x_1118 : f32 = u_xlat35;
  u_xlat5.x = (-(x_1118) + 1.0f);
  let x_1122 : f32 = u_xlat51;
  let x_1125 : f32 = u_xlat5.x;
  let x_1127 : f32 = u_xlat35;
  u_xlat39 = ((abs(x_1122) * x_1125) + x_1127);
  let x_1130 : f32 = u_xlat2.x;
  let x_1132 : f32 = u_xlat5.x;
  let x_1134 : f32 = u_xlat35;
  u_xlat5.x = ((x_1130 * x_1132) + x_1134);
  let x_1137 : f32 = u_xlat51;
  let x_1140 : f32 = u_xlat5.x;
  u_xlat51 = (abs(x_1137) * x_1140);
  let x_1143 : f32 = u_xlat2.x;
  let x_1144 : f32 = u_xlat39;
  let x_1146 : f32 = u_xlat51;
  u_xlat51 = ((x_1143 * x_1144) + x_1146);
  let x_1148 : f32 = u_xlat51;
  u_xlat51 = (x_1148 + 0.00001f);
  let x_1151 : f32 = u_xlat51;
  u_xlat51 = (0.5f / x_1151);
  let x_1153 : f32 = u_xlat35;
  let x_1154 : f32 = u_xlat35;
  u_xlat5.x = (x_1153 * x_1154);
  let x_1157 : f32 = u_xlat19;
  let x_1159 : f32 = u_xlat5.x;
  let x_1161 : f32 = u_xlat19;
  u_xlat39 = ((x_1157 * x_1159) + -(x_1161));
  let x_1164 : f32 = u_xlat39;
  let x_1165 : f32 = u_xlat19;
  u_xlat19 = ((x_1164 * x_1165) + 1.0f);
  let x_1169 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1169 * 0.318309873f);
  let x_1173 : f32 = u_xlat19;
  let x_1174 : f32 = u_xlat19;
  u_xlat19 = ((x_1173 * x_1174) + 0.0000001f);
  let x_1179 : f32 = u_xlat5.x;
  let x_1180 : f32 = u_xlat19;
  u_xlat19 = (x_1179 / x_1180);
  let x_1182 : f32 = u_xlat51;
  let x_1183 : f32 = u_xlat19;
  u_xlat51 = (x_1182 * x_1183);
  let x_1186 : f32 = u_xlat2.x;
  let x_1187 : f32 = u_xlat51;
  u_xlat51 = (x_1186 * x_1187);
  let x_1189 : f32 = u_xlat51;
  u_xlat51 = (x_1189 * 3.141592741f);
  let x_1192 : f32 = u_xlat51;
  u_xlat51 = max(x_1192, 0.0f);
  let x_1194 : f32 = u_xlat35;
  let x_1195 : f32 = u_xlat35;
  u_xlat35 = ((x_1194 * x_1195) + 1.0f);
  let x_1198 : f32 = u_xlat35;
  u_xlat1.z = (1.0f / x_1198);
  let x_1201 : vec4<f32> = u_xlat3;
  let x_1203 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(vec3<f32>(x_1201.x, x_1201.y, x_1201.z), vec3<f32>(x_1203.x, x_1203.y, x_1203.z));
  let x_1209 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1209 == 0.0f));
  let x_1211 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1211);
  let x_1214 : f32 = u_xlat51;
  let x_1216 : f32 = u_xlat2.x;
  u_xlat51 = (x_1214 * x_1216);
  let x_1219 : f32 = u_xlat5.y;
  let x_1221 : f32 = x_38.x_Glossiness;
  let x_1223 : f32 = u_xlat54;
  u_xlat2.x = ((x_1219 * x_1221) + -(x_1223));
  let x_1228 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1228 + 1.0f);
  let x_1232 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1232, 0.0f, 1.0f);
  let x_1235 : f32 = u_xlat18;
  let x_1237 : vec3<f32> = u_xlat9;
  let x_1238 : vec3<f32> = (vec3<f32>(x_1235, x_1235, x_1235) * x_1237);
  let x_1239 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1238.x, x_1238.y, x_1238.z, x_1239.w);
  let x_1241 : vec4<f32> = u_xlat10;
  let x_1243 : f32 = u_xlat52;
  let x_1246 : vec4<f32> = u_xlat5;
  let x_1248 : vec3<f32> = ((vec3<f32>(x_1241.x, x_1241.y, x_1241.z) * vec3<f32>(x_1243, x_1243, x_1243)) + vec3<f32>(x_1246.x, x_1246.y, x_1246.z));
  let x_1249 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1248.x, x_1248.y, x_1248.z, x_1249.w);
  let x_1251 : vec3<f32> = u_xlat9;
  let x_1252 : f32 = u_xlat51;
  let x_1254 : vec3<f32> = (x_1251 * vec3<f32>(x_1252, x_1252, x_1252));
  let x_1255 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1254.x, x_1254.y, x_1254.z, x_1255.w);
  let x_1258 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1258) + 1.0f);
  let x_1263 : f32 = u_xlat0.w;
  let x_1265 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1263 * x_1265);
  let x_1269 : f32 = u_xlat1.x;
  let x_1271 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1269 * x_1271);
  let x_1274 : vec4<f32> = u_xlat0;
  let x_1275 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1274 * vec4<f32>(x_1275.z, x_1275.z, x_1275.z, x_1275.x));
  let x_1278 : vec4<f32> = u_xlat3;
  let x_1282 : vec3<f32> = (-(vec3<f32>(x_1278.x, x_1278.y, x_1278.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1283 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1282.x, x_1282.y, x_1283.z, x_1282.z);
  let x_1285 : vec4<f32> = u_xlat1;
  let x_1287 : vec4<f32> = u_xlat0;
  let x_1290 : vec4<f32> = u_xlat3;
  let x_1292 : vec3<f32> = ((vec3<f32>(x_1285.x, x_1285.y, x_1285.w) * vec3<f32>(x_1287.w, x_1287.w, x_1287.w)) + vec3<f32>(x_1290.x, x_1290.y, x_1290.z));
  let x_1293 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1292.x, x_1292.y, x_1293.z, x_1292.z);
  let x_1295 : vec4<f32> = u_xlat1;
  let x_1297 : vec4<f32> = u_xlat7;
  let x_1299 : vec3<f32> = (vec3<f32>(x_1295.x, x_1295.y, x_1295.w) * vec3<f32>(x_1297.x, x_1297.y, x_1297.z));
  let x_1300 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1299.x, x_1299.y, x_1300.z, x_1299.z);
  let x_1302 : vec4<f32> = u_xlat4;
  let x_1304 : vec4<f32> = u_xlat5;
  let x_1307 : vec4<f32> = u_xlat1;
  let x_1309 : vec3<f32> = ((vec3<f32>(x_1302.x, x_1302.y, x_1302.z) * vec3<f32>(x_1304.x, x_1304.y, x_1304.z)) + vec3<f32>(x_1307.x, x_1307.y, x_1307.w));
  let x_1310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1309.x, x_1309.y, x_1310.z, x_1309.z);
  let x_1312 : vec4<f32> = u_xlat3;
  let x_1315 : vec3<f32> = u_xlat2;
  let x_1317 : vec3<f32> = (-(vec3<f32>(x_1312.x, x_1312.y, x_1312.z)) + vec3<f32>(x_1315.x, x_1315.x, x_1315.x));
  let x_1318 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1317.x, x_1317.y, x_1317.z, x_1318.w);
  let x_1320 : f32 = u_xlat36;
  let x_1322 : vec4<f32> = u_xlat4;
  let x_1325 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_1320, x_1320, x_1320) * vec3<f32>(x_1322.x, x_1322.y, x_1322.z)) + vec3<f32>(x_1325.x, x_1325.y, x_1325.z));
  let x_1328 : vec4<f32> = u_xlat0;
  let x_1330 : vec3<f32> = u_xlat2;
  let x_1332 : vec4<f32> = u_xlat1;
  let x_1334 : vec3<f32> = ((vec3<f32>(x_1328.x, x_1328.y, x_1328.z) * x_1330) + vec3<f32>(x_1332.x, x_1332.y, x_1332.w));
  let x_1335 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1334.x, x_1334.y, x_1334.z, x_1335.w);
  let x_1339 : vec3<f32> = u_xlat6;
  let x_1340 : f32 = u_xlat53;
  let x_1343 : vec4<f32> = u_xlat0;
  let x_1345 : vec3<f32> = ((x_1339 * vec3<f32>(x_1340, x_1340, x_1340)) + vec3<f32>(x_1343.x, x_1343.y, x_1343.z));
  let x_1346 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1345.x, x_1345.y, x_1345.z, x_1346.w);
  let x_1349 : f32 = u_xlat4.w;
  SV_Target0.w = x_1349;
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

