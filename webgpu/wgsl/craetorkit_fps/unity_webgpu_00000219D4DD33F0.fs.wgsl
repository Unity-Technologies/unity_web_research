struct PGlobals {
  x_SinTime : vec4<f32>,
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_SHAr : vec4<f32>,
  unity_SHAg : vec4<f32>,
  unity_SHAb : vec4<f32>,
  unity_OcclusionMaskSelector : vec4<f32>,
  unity_FogColor : vec4<f32>,
  unity_FogParams : vec4<f32>,
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

var<private> vs_TEXCOORD5 : f32;

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
  var x_628 : f32;
  var x_640 : f32;
  var x_652 : f32;
  var u_xlatb57 : bool;
  var u_xlat14 : vec3<f32>;
  var u_xlat15 : vec3<f32>;
  var u_xlatb16 : vec3<bool>;
  var hlslcc_movcTemp_1 : vec3<f32>;
  var x_817 : f32;
  var x_829 : f32;
  var x_841 : f32;
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
    let x_531 : vec4<f32> = x_38.unity_SHAr;
    let x_532 : vec4<f32> = u_xlat7;
    u_xlat11.x = dot(x_531, x_532);
    let x_537 : vec4<f32> = x_38.unity_SHAg;
    let x_538 : vec4<f32> = u_xlat7;
    u_xlat11.y = dot(x_537, x_538);
    let x_543 : vec4<f32> = x_38.unity_SHAb;
    let x_544 : vec4<f32> = u_xlat7;
    u_xlat11.z = dot(x_543, x_544);
  }
  let x_547 : vec4<f32> = u_xlat11;
  let x_551 : vec3<f32> = vs_TEXCOORD4;
  let x_552 : vec3<f32> = (vec3<f32>(x_547.x, x_547.y, x_547.z) + x_551);
  let x_553 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_552.x, x_552.y, x_552.z, x_553.w);
  let x_555 : vec4<f32> = u_xlat10;
  let x_558 : vec3<f32> = max(vec3<f32>(x_555.x, x_555.y, x_555.z), vec3<f32>(0.0f, 0.0f, 0.0f));
  let x_559 : vec4<f32> = u_xlat10;
  u_xlat10 = vec4<f32>(x_558.x, x_558.y, x_558.z, x_559.w);
  let x_563 : f32 = x_38.unity_SpecCube0_ProbePosition.w;
  u_xlatb5 = (0.0f < x_563);
  let x_565 : bool = u_xlatb5;
  if (x_565) {
    let x_568 : vec4<f32> = u_xlat8;
    let x_570 : vec4<f32> = u_xlat8;
    u_xlat5.x = dot(vec3<f32>(x_568.x, x_568.y, x_568.z), vec3<f32>(x_570.x, x_570.y, x_570.z));
    let x_575 : f32 = u_xlat5.x;
    u_xlat5.x = inverseSqrt(x_575);
    let x_578 : vec4<f32> = u_xlat5;
    let x_580 : vec4<f32> = u_xlat8;
    let x_582 : vec3<f32> = (vec3<f32>(x_578.x, x_578.x, x_578.x) * vec3<f32>(x_580.x, x_580.y, x_580.z));
    let x_583 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_582.x, x_582.y, x_582.z, x_583.w);
    let x_585 : vec4<f32> = u_xlat0;
    let x_590 : vec4<f32> = x_38.unity_SpecCube0_BoxMax;
    let x_592 : vec3<f32> = (-(vec3<f32>(x_585.x, x_585.y, x_585.z)) + vec3<f32>(x_590.x, x_590.y, x_590.z));
    let x_593 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_592.x, x_592.y, x_592.z, x_593.w);
    let x_595 : vec4<f32> = u_xlat12;
    let x_597 : vec4<f32> = u_xlat11;
    let x_599 : vec3<f32> = (vec3<f32>(x_595.x, x_595.y, x_595.z) / vec3<f32>(x_597.x, x_597.y, x_597.z));
    let x_600 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_599.x, x_599.y, x_599.z, x_600.w);
    let x_603 : vec4<f32> = u_xlat0;
    let x_608 : vec4<f32> = x_38.unity_SpecCube0_BoxMin;
    u_xlat13 = (-(vec3<f32>(x_603.x, x_603.y, x_603.z)) + vec3<f32>(x_608.x, x_608.y, x_608.z));
    let x_611 : vec3<f32> = u_xlat13;
    let x_612 : vec4<f32> = u_xlat11;
    u_xlat13 = (x_611 / vec3<f32>(x_612.x, x_612.y, x_612.z));
    let x_619 : vec4<f32> = u_xlat11;
    let x_622 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_619.x, x_619.y, x_619.z, x_619.x));
    u_xlatb14 = vec3<bool>(x_622.x, x_622.y, x_622.z);
    let x_625 : vec4<f32> = u_xlat12;
    hlslcc_movcTemp = x_625;
    let x_627 : bool = u_xlatb14.x;
    if (x_627) {
      let x_632 : f32 = u_xlat12.x;
      x_628 = x_632;
    } else {
      let x_635 : f32 = u_xlat13.x;
      x_628 = x_635;
    }
    let x_636 : f32 = x_628;
    hlslcc_movcTemp.x = x_636;
    let x_639 : bool = u_xlatb14.y;
    if (x_639) {
      let x_644 : f32 = u_xlat12.y;
      x_640 = x_644;
    } else {
      let x_647 : f32 = u_xlat13.y;
      x_640 = x_647;
    }
    let x_648 : f32 = x_640;
    hlslcc_movcTemp.y = x_648;
    let x_651 : bool = u_xlatb14.z;
    if (x_651) {
      let x_656 : f32 = u_xlat12.z;
      x_652 = x_656;
    } else {
      let x_659 : f32 = u_xlat13.z;
      x_652 = x_659;
    }
    let x_660 : f32 = x_652;
    hlslcc_movcTemp.z = x_660;
    let x_662 : vec4<f32> = hlslcc_movcTemp;
    u_xlat12 = x_662;
    let x_664 : f32 = u_xlat12.y;
    let x_666 : f32 = u_xlat12.x;
    u_xlat5.x = min(x_664, x_666);
    let x_670 : f32 = u_xlat12.z;
    let x_672 : f32 = u_xlat5.x;
    u_xlat5.x = min(x_670, x_672);
    let x_675 : vec4<f32> = u_xlat0;
    let x_678 : vec4<f32> = x_38.unity_SpecCube0_ProbePosition;
    let x_681 : vec3<f32> = (vec3<f32>(x_675.x, x_675.y, x_675.z) + -(vec3<f32>(x_678.x, x_678.y, x_678.z)));
    let x_682 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_681.x, x_681.y, x_681.z, x_682.w);
    let x_684 : vec4<f32> = u_xlat11;
    let x_686 : vec4<f32> = u_xlat5;
    let x_689 : vec4<f32> = u_xlat12;
    let x_691 : vec3<f32> = ((vec3<f32>(x_684.x, x_684.y, x_684.z) * vec3<f32>(x_686.x, x_686.x, x_686.x)) + vec3<f32>(x_689.x, x_689.y, x_689.z));
    let x_692 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_691.x, x_691.y, x_691.z, x_692.w);
  } else {
    let x_695 : vec4<f32> = u_xlat8;
    let x_696 : vec3<f32> = vec3<f32>(x_695.x, x_695.y, x_695.z);
    let x_697 : vec4<f32> = u_xlat11;
    u_xlat11 = vec4<f32>(x_696.x, x_696.y, x_696.z, x_697.w);
  }
  let x_699 : f32 = u_xlat56;
  u_xlat5.x = ((-(x_699) * 0.699999988f) + 1.700000048f);
  let x_707 : f32 = u_xlat5.x;
  let x_708 : f32 = u_xlat56;
  u_xlat5.x = (x_707 * x_708);
  let x_712 : f32 = u_xlat5.x;
  u_xlat5.x = (x_712 * 6.0f);
  let x_724 : vec4<f32> = u_xlat11;
  let x_727 : f32 = u_xlat5.x;
  let x_728 : vec4<f32> = textureSampleLevel(unity_SpecCube0, samplerunity_SpecCube0, vec3<f32>(x_724.x, x_724.y, x_724.z), x_727);
  u_xlat11 = x_728;
  let x_730 : f32 = u_xlat11.w;
  u_xlat39 = (x_730 + -1.0f);
  let x_734 : f32 = x_38.unity_SpecCube0_HDR.w;
  let x_735 : f32 = u_xlat39;
  u_xlat39 = ((x_734 * x_735) + 1.0f);
  let x_738 : f32 = u_xlat39;
  u_xlat39 = log2(x_738);
  let x_740 : f32 = u_xlat39;
  let x_742 : f32 = x_38.unity_SpecCube0_HDR.y;
  u_xlat39 = (x_740 * x_742);
  let x_744 : f32 = u_xlat39;
  u_xlat39 = exp2(x_744);
  let x_746 : f32 = u_xlat39;
  let x_748 : f32 = x_38.unity_SpecCube0_HDR.x;
  u_xlat39 = (x_746 * x_748);
  let x_750 : vec4<f32> = u_xlat11;
  let x_752 : f32 = u_xlat39;
  let x_754 : vec3<f32> = (vec3<f32>(x_750.x, x_750.y, x_750.z) * vec3<f32>(x_752, x_752, x_752));
  let x_755 : vec4<f32> = u_xlat12;
  u_xlat12 = vec4<f32>(x_754.x, x_754.y, x_754.z, x_755.w);
  let x_759 : f32 = x_38.unity_SpecCube0_BoxMin.w;
  u_xlatb57 = (x_759 < 0.999989986f);
  let x_762 : bool = u_xlatb57;
  if (x_762) {
    let x_767 : f32 = x_38.unity_SpecCube1_ProbePosition.w;
    u_xlatb57 = (0.0f < x_767);
    let x_769 : bool = u_xlatb57;
    if (x_769) {
      let x_772 : vec4<f32> = u_xlat8;
      let x_774 : vec4<f32> = u_xlat8;
      u_xlat57 = dot(vec3<f32>(x_772.x, x_772.y, x_772.z), vec3<f32>(x_774.x, x_774.y, x_774.z));
      let x_777 : f32 = u_xlat57;
      u_xlat57 = inverseSqrt(x_777);
      let x_779 : f32 = u_xlat57;
      let x_781 : vec4<f32> = u_xlat8;
      u_xlat13 = (vec3<f32>(x_779, x_779, x_779) * vec3<f32>(x_781.x, x_781.y, x_781.z));
      let x_785 : vec4<f32> = u_xlat0;
      let x_790 : vec4<f32> = x_38.unity_SpecCube1_BoxMax;
      u_xlat14 = (-(vec3<f32>(x_785.x, x_785.y, x_785.z)) + vec3<f32>(x_790.x, x_790.y, x_790.z));
      let x_793 : vec3<f32> = u_xlat14;
      let x_794 : vec3<f32> = u_xlat13;
      u_xlat14 = (x_793 / x_794);
      let x_797 : vec4<f32> = u_xlat0;
      let x_802 : vec4<f32> = x_38.unity_SpecCube1_BoxMin;
      u_xlat15 = (-(vec3<f32>(x_797.x, x_797.y, x_797.z)) + vec3<f32>(x_802.x, x_802.y, x_802.z));
      let x_805 : vec3<f32> = u_xlat15;
      let x_806 : vec3<f32> = u_xlat13;
      u_xlat15 = (x_805 / x_806);
      let x_809 : vec3<f32> = u_xlat13;
      let x_811 : vec4<bool> = (vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f) < vec4<f32>(x_809.x, x_809.y, x_809.z, x_809.x));
      u_xlatb16 = vec3<bool>(x_811.x, x_811.y, x_811.z);
      let x_814 : vec3<f32> = u_xlat14;
      hlslcc_movcTemp_1 = x_814;
      let x_816 : bool = u_xlatb16.x;
      if (x_816) {
        let x_821 : f32 = u_xlat14.x;
        x_817 = x_821;
      } else {
        let x_824 : f32 = u_xlat15.x;
        x_817 = x_824;
      }
      let x_825 : f32 = x_817;
      hlslcc_movcTemp_1.x = x_825;
      let x_828 : bool = u_xlatb16.y;
      if (x_828) {
        let x_833 : f32 = u_xlat14.y;
        x_829 = x_833;
      } else {
        let x_836 : f32 = u_xlat15.y;
        x_829 = x_836;
      }
      let x_837 : f32 = x_829;
      hlslcc_movcTemp_1.y = x_837;
      let x_840 : bool = u_xlatb16.z;
      if (x_840) {
        let x_845 : f32 = u_xlat14.z;
        x_841 = x_845;
      } else {
        let x_848 : f32 = u_xlat15.z;
        x_841 = x_848;
      }
      let x_849 : f32 = x_841;
      hlslcc_movcTemp_1.z = x_849;
      let x_851 : vec3<f32> = hlslcc_movcTemp_1;
      u_xlat14 = x_851;
      let x_853 : f32 = u_xlat14.y;
      let x_855 : f32 = u_xlat14.x;
      u_xlat57 = min(x_853, x_855);
      let x_858 : f32 = u_xlat14.z;
      let x_859 : f32 = u_xlat57;
      u_xlat57 = min(x_858, x_859);
      let x_861 : vec4<f32> = u_xlat0;
      let x_864 : vec4<f32> = x_38.unity_SpecCube1_ProbePosition;
      let x_867 : vec3<f32> = (vec3<f32>(x_861.x, x_861.y, x_861.z) + -(vec3<f32>(x_864.x, x_864.y, x_864.z)));
      let x_868 : vec4<f32> = u_xlat0;
      u_xlat0 = vec4<f32>(x_867.x, x_867.y, x_867.z, x_868.w);
      let x_870 : vec3<f32> = u_xlat13;
      let x_871 : f32 = u_xlat57;
      let x_874 : vec4<f32> = u_xlat0;
      let x_876 : vec3<f32> = ((x_870 * vec3<f32>(x_871, x_871, x_871)) + vec3<f32>(x_874.x, x_874.y, x_874.z));
      let x_877 : vec4<f32> = u_xlat8;
      u_xlat8 = vec4<f32>(x_876.x, x_876.y, x_876.z, x_877.w);
    }
    let x_883 : vec4<f32> = u_xlat8;
    let x_886 : f32 = u_xlat5.x;
    let x_887 : vec4<f32> = textureSampleLevel(unity_SpecCube1, samplerunity_SpecCube0, vec3<f32>(x_883.x, x_883.y, x_883.z), x_886);
    u_xlat8 = x_887;
    let x_889 : f32 = u_xlat8.w;
    u_xlat0.x = (x_889 + -1.0f);
    let x_894 : f32 = x_38.unity_SpecCube1_HDR.w;
    let x_896 : f32 = u_xlat0.x;
    u_xlat0.x = ((x_894 * x_896) + 1.0f);
    let x_901 : f32 = u_xlat0.x;
    u_xlat0.x = log2(x_901);
    let x_905 : f32 = u_xlat0.x;
    let x_907 : f32 = x_38.unity_SpecCube1_HDR.y;
    u_xlat0.x = (x_905 * x_907);
    let x_911 : f32 = u_xlat0.x;
    u_xlat0.x = exp2(x_911);
    let x_915 : f32 = u_xlat0.x;
    let x_917 : f32 = x_38.unity_SpecCube1_HDR.x;
    u_xlat0.x = (x_915 * x_917);
    let x_920 : vec4<f32> = u_xlat8;
    let x_922 : vec4<f32> = u_xlat0;
    let x_924 : vec3<f32> = (vec3<f32>(x_920.x, x_920.y, x_920.z) * vec3<f32>(x_922.x, x_922.x, x_922.x));
    let x_925 : vec4<f32> = u_xlat0;
    u_xlat0 = vec4<f32>(x_924.x, x_924.y, x_924.z, x_925.w);
    let x_927 : f32 = u_xlat39;
    let x_929 : vec4<f32> = u_xlat11;
    let x_932 : vec4<f32> = u_xlat0;
    let x_935 : vec3<f32> = ((vec3<f32>(x_927, x_927, x_927) * vec3<f32>(x_929.x, x_929.y, x_929.z)) + -(vec3<f32>(x_932.x, x_932.y, x_932.z)));
    let x_936 : vec4<f32> = u_xlat8;
    u_xlat8 = vec4<f32>(x_935.x, x_935.y, x_935.z, x_936.w);
    let x_939 : vec4<f32> = x_38.unity_SpecCube0_BoxMin;
    let x_941 : vec4<f32> = u_xlat8;
    let x_944 : vec4<f32> = u_xlat0;
    let x_946 : vec3<f32> = ((vec3<f32>(x_939.w, x_939.w, x_939.w) * vec3<f32>(x_941.x, x_941.y, x_941.z)) + vec3<f32>(x_944.x, x_944.y, x_944.z));
    let x_947 : vec4<f32> = u_xlat12;
    u_xlat12 = vec4<f32>(x_946.x, x_946.y, x_946.z, x_947.w);
  }
  let x_949 : f32 = u_xlat52;
  let x_951 : vec4<f32> = u_xlat12;
  let x_953 : vec3<f32> = (vec3<f32>(x_949, x_949, x_949) * vec3<f32>(x_951.x, x_951.y, x_951.z));
  let x_954 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_953.x, x_953.y, x_953.z, x_954.w);
  let x_956 : vec4<f32> = u_xlat3;
  let x_959 : vec4<f32> = x_38.x_Color;
  let x_964 : vec3<f32> = ((vec3<f32>(x_956.x, x_956.y, x_956.z) * vec3<f32>(x_959.x, x_959.y, x_959.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_965 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_964.x, x_964.y, x_964.z, x_965.w);
  let x_967 : f32 = u_xlat54;
  let x_969 : vec4<f32> = u_xlat3;
  let x_974 : vec3<f32> = ((vec3<f32>(x_967, x_967, x_967) * vec3<f32>(x_969.x, x_969.y, x_969.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_975 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_974.x, x_974.y, x_974.z, x_975.w);
  let x_977 : f32 = u_xlat54;
  u_xlat54 = ((-(x_977) * 0.959999979f) + 0.959999979f);
  let x_982 : f32 = u_xlat54;
  let x_984 : vec4<f32> = u_xlat4;
  let x_986 : vec3<f32> = (vec3<f32>(x_982, x_982, x_982) * vec3<f32>(x_984.x, x_984.y, x_984.z));
  let x_987 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_986.x, x_986.y, x_986.z, x_987.w);
  let x_989 : vec4<f32> = u_xlat1;
  let x_991 : f32 = u_xlat51;
  let x_995 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  let x_997 : vec3<f32> = ((vec3<f32>(x_989.x, x_989.y, x_989.z) * vec3<f32>(x_991, x_991, x_991)) + vec3<f32>(x_995.x, x_995.y, x_995.z));
  let x_998 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_997.x, x_997.y, x_997.z, x_998.w);
  let x_1000 : vec4<f32> = u_xlat1;
  let x_1002 : vec4<f32> = u_xlat1;
  u_xlat51 = dot(vec3<f32>(x_1000.x, x_1000.y, x_1000.z), vec3<f32>(x_1002.x, x_1002.y, x_1002.z));
  let x_1005 : f32 = u_xlat51;
  u_xlat51 = max(x_1005, 0.001f);
  let x_1008 : f32 = u_xlat51;
  u_xlat51 = inverseSqrt(x_1008);
  let x_1010 : f32 = u_xlat51;
  let x_1012 : vec4<f32> = u_xlat1;
  let x_1014 : vec3<f32> = (vec3<f32>(x_1010, x_1010, x_1010) * vec3<f32>(x_1012.x, x_1012.y, x_1012.z));
  let x_1015 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1014.x, x_1014.y, x_1014.z, x_1015.w);
  let x_1017 : vec4<f32> = u_xlat7;
  let x_1019 : vec3<f32> = u_xlat2;
  u_xlat51 = dot(vec3<f32>(x_1017.x, x_1017.y, x_1017.z), x_1019);
  let x_1021 : vec4<f32> = u_xlat7;
  let x_1024 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  u_xlat2.x = dot(vec3<f32>(x_1021.x, x_1021.y, x_1021.z), vec3<f32>(x_1024.x, x_1024.y, x_1024.z));
  let x_1029 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1029, 0.0f, 1.0f);
  let x_1033 : vec4<f32> = u_xlat7;
  let x_1035 : vec4<f32> = u_xlat1;
  u_xlat19 = dot(vec3<f32>(x_1033.x, x_1033.y, x_1033.z), vec3<f32>(x_1035.x, x_1035.y, x_1035.z));
  let x_1038 : f32 = u_xlat19;
  u_xlat19 = clamp(x_1038, 0.0f, 1.0f);
  let x_1041 : vec4<f32> = x_38.x_WorldSpaceLightPos0;
  let x_1043 : vec4<f32> = u_xlat1;
  u_xlat1.x = dot(vec3<f32>(x_1041.x, x_1041.y, x_1041.z), vec3<f32>(x_1043.x, x_1043.y, x_1043.z));
  let x_1048 : f32 = u_xlat1.x;
  u_xlat1.x = clamp(x_1048, 0.0f, 1.0f);
  let x_1053 : f32 = u_xlat1.x;
  let x_1055 : f32 = u_xlat1.x;
  u_xlat18 = (x_1053 * x_1055);
  let x_1057 : f32 = u_xlat18;
  let x_1059 : f32 = u_xlat56;
  u_xlat18 = dot(vec2<f32>(x_1057, x_1057), vec2<f32>(x_1059, x_1059));
  let x_1062 : f32 = u_xlat18;
  u_xlat18 = (x_1062 + -0.5f);
  let x_1067 : f32 = u_xlat2.x;
  u_xlat35 = (-(x_1067) + 1.0f);
  let x_1071 : f32 = u_xlat35;
  let x_1072 : f32 = u_xlat35;
  u_xlat36 = (x_1071 * x_1072);
  let x_1074 : f32 = u_xlat36;
  let x_1075 : f32 = u_xlat36;
  u_xlat36 = (x_1074 * x_1075);
  let x_1077 : f32 = u_xlat35;
  let x_1078 : f32 = u_xlat36;
  u_xlat35 = (x_1077 * x_1078);
  let x_1080 : f32 = u_xlat18;
  let x_1081 : f32 = u_xlat35;
  u_xlat35 = ((x_1080 * x_1081) + 1.0f);
  let x_1084 : f32 = u_xlat51;
  u_xlat36 = (-(abs(x_1084)) + 1.0f);
  let x_1088 : f32 = u_xlat36;
  let x_1089 : f32 = u_xlat36;
  u_xlat5.x = (x_1088 * x_1089);
  let x_1093 : f32 = u_xlat5.x;
  let x_1095 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1093 * x_1095);
  let x_1098 : f32 = u_xlat36;
  let x_1100 : f32 = u_xlat5.x;
  u_xlat36 = (x_1098 * x_1100);
  let x_1102 : f32 = u_xlat18;
  let x_1103 : f32 = u_xlat36;
  u_xlat18 = ((x_1102 * x_1103) + 1.0f);
  let x_1106 : f32 = u_xlat18;
  let x_1107 : f32 = u_xlat35;
  u_xlat18 = (x_1106 * x_1107);
  let x_1110 : f32 = u_xlat2.x;
  let x_1111 : f32 = u_xlat18;
  u_xlat18 = (x_1110 * x_1111);
  let x_1113 : f32 = u_xlat56;
  let x_1114 : f32 = u_xlat56;
  u_xlat35 = (x_1113 * x_1114);
  let x_1116 : f32 = u_xlat35;
  u_xlat35 = max(x_1116, 0.002f);
  let x_1119 : f32 = u_xlat35;
  u_xlat5.x = (-(x_1119) + 1.0f);
  let x_1123 : f32 = u_xlat51;
  let x_1126 : f32 = u_xlat5.x;
  let x_1128 : f32 = u_xlat35;
  u_xlat39 = ((abs(x_1123) * x_1126) + x_1128);
  let x_1131 : f32 = u_xlat2.x;
  let x_1133 : f32 = u_xlat5.x;
  let x_1135 : f32 = u_xlat35;
  u_xlat5.x = ((x_1131 * x_1133) + x_1135);
  let x_1138 : f32 = u_xlat51;
  let x_1141 : f32 = u_xlat5.x;
  u_xlat51 = (abs(x_1138) * x_1141);
  let x_1144 : f32 = u_xlat2.x;
  let x_1145 : f32 = u_xlat39;
  let x_1147 : f32 = u_xlat51;
  u_xlat51 = ((x_1144 * x_1145) + x_1147);
  let x_1149 : f32 = u_xlat51;
  u_xlat51 = (x_1149 + 0.00001f);
  let x_1152 : f32 = u_xlat51;
  u_xlat51 = (0.5f / x_1152);
  let x_1154 : f32 = u_xlat35;
  let x_1155 : f32 = u_xlat35;
  u_xlat5.x = (x_1154 * x_1155);
  let x_1158 : f32 = u_xlat19;
  let x_1160 : f32 = u_xlat5.x;
  let x_1162 : f32 = u_xlat19;
  u_xlat39 = ((x_1158 * x_1160) + -(x_1162));
  let x_1165 : f32 = u_xlat39;
  let x_1166 : f32 = u_xlat19;
  u_xlat19 = ((x_1165 * x_1166) + 1.0f);
  let x_1170 : f32 = u_xlat5.x;
  u_xlat5.x = (x_1170 * 0.318309873f);
  let x_1174 : f32 = u_xlat19;
  let x_1175 : f32 = u_xlat19;
  u_xlat19 = ((x_1174 * x_1175) + 0.0000001f);
  let x_1180 : f32 = u_xlat5.x;
  let x_1181 : f32 = u_xlat19;
  u_xlat19 = (x_1180 / x_1181);
  let x_1183 : f32 = u_xlat51;
  let x_1184 : f32 = u_xlat19;
  u_xlat51 = (x_1183 * x_1184);
  let x_1187 : f32 = u_xlat2.x;
  let x_1188 : f32 = u_xlat51;
  u_xlat51 = (x_1187 * x_1188);
  let x_1190 : f32 = u_xlat51;
  u_xlat51 = (x_1190 * 3.141592741f);
  let x_1193 : f32 = u_xlat51;
  u_xlat51 = max(x_1193, 0.0f);
  let x_1195 : f32 = u_xlat35;
  let x_1196 : f32 = u_xlat35;
  u_xlat35 = ((x_1195 * x_1196) + 1.0f);
  let x_1199 : f32 = u_xlat35;
  u_xlat1.z = (1.0f / x_1199);
  let x_1202 : vec4<f32> = u_xlat3;
  let x_1204 : vec4<f32> = u_xlat3;
  u_xlat2.x = dot(vec3<f32>(x_1202.x, x_1202.y, x_1202.z), vec3<f32>(x_1204.x, x_1204.y, x_1204.z));
  let x_1210 : f32 = u_xlat2.x;
  u_xlatb2 = !((x_1210 == 0.0f));
  let x_1212 : bool = u_xlatb2;
  u_xlat2.x = select(0.0f, 1.0f, x_1212);
  let x_1215 : f32 = u_xlat51;
  let x_1217 : f32 = u_xlat2.x;
  u_xlat51 = (x_1215 * x_1217);
  let x_1220 : f32 = u_xlat5.y;
  let x_1222 : f32 = x_38.x_Glossiness;
  let x_1224 : f32 = u_xlat54;
  u_xlat2.x = ((x_1220 * x_1222) + -(x_1224));
  let x_1229 : f32 = u_xlat2.x;
  u_xlat2.x = (x_1229 + 1.0f);
  let x_1233 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_1233, 0.0f, 1.0f);
  let x_1236 : f32 = u_xlat18;
  let x_1238 : vec3<f32> = u_xlat9;
  let x_1239 : vec3<f32> = (vec3<f32>(x_1236, x_1236, x_1236) * x_1238);
  let x_1240 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1239.x, x_1239.y, x_1239.z, x_1240.w);
  let x_1242 : vec4<f32> = u_xlat10;
  let x_1244 : f32 = u_xlat52;
  let x_1247 : vec4<f32> = u_xlat5;
  let x_1249 : vec3<f32> = ((vec3<f32>(x_1242.x, x_1242.y, x_1242.z) * vec3<f32>(x_1244, x_1244, x_1244)) + vec3<f32>(x_1247.x, x_1247.y, x_1247.z));
  let x_1250 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_1249.x, x_1249.y, x_1249.z, x_1250.w);
  let x_1252 : vec3<f32> = u_xlat9;
  let x_1253 : f32 = u_xlat51;
  let x_1255 : vec3<f32> = (x_1252 * vec3<f32>(x_1253, x_1253, x_1253));
  let x_1256 : vec4<f32> = u_xlat7;
  u_xlat7 = vec4<f32>(x_1255.x, x_1255.y, x_1255.z, x_1256.w);
  let x_1259 : f32 = u_xlat1.x;
  u_xlat0.w = (-(x_1259) + 1.0f);
  let x_1264 : f32 = u_xlat0.w;
  let x_1266 : f32 = u_xlat0.w;
  u_xlat1.x = (x_1264 * x_1266);
  let x_1270 : f32 = u_xlat1.x;
  let x_1272 : f32 = u_xlat1.x;
  u_xlat1.x = (x_1270 * x_1272);
  let x_1275 : vec4<f32> = u_xlat0;
  let x_1276 : vec4<f32> = u_xlat1;
  u_xlat0 = (x_1275 * vec4<f32>(x_1276.z, x_1276.z, x_1276.z, x_1276.x));
  let x_1279 : vec4<f32> = u_xlat3;
  let x_1283 : vec3<f32> = (-(vec3<f32>(x_1279.x, x_1279.y, x_1279.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_1284 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1283.x, x_1283.y, x_1284.z, x_1283.z);
  let x_1286 : vec4<f32> = u_xlat1;
  let x_1288 : vec4<f32> = u_xlat0;
  let x_1291 : vec4<f32> = u_xlat3;
  let x_1293 : vec3<f32> = ((vec3<f32>(x_1286.x, x_1286.y, x_1286.w) * vec3<f32>(x_1288.w, x_1288.w, x_1288.w)) + vec3<f32>(x_1291.x, x_1291.y, x_1291.z));
  let x_1294 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1293.x, x_1293.y, x_1294.z, x_1293.z);
  let x_1296 : vec4<f32> = u_xlat1;
  let x_1298 : vec4<f32> = u_xlat7;
  let x_1300 : vec3<f32> = (vec3<f32>(x_1296.x, x_1296.y, x_1296.w) * vec3<f32>(x_1298.x, x_1298.y, x_1298.z));
  let x_1301 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1300.x, x_1300.y, x_1301.z, x_1300.z);
  let x_1303 : vec4<f32> = u_xlat4;
  let x_1305 : vec4<f32> = u_xlat5;
  let x_1308 : vec4<f32> = u_xlat1;
  let x_1310 : vec3<f32> = ((vec3<f32>(x_1303.x, x_1303.y, x_1303.z) * vec3<f32>(x_1305.x, x_1305.y, x_1305.z)) + vec3<f32>(x_1308.x, x_1308.y, x_1308.w));
  let x_1311 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_1310.x, x_1310.y, x_1311.z, x_1310.z);
  let x_1313 : vec4<f32> = u_xlat3;
  let x_1316 : vec3<f32> = u_xlat2;
  let x_1318 : vec3<f32> = (-(vec3<f32>(x_1313.x, x_1313.y, x_1313.z)) + vec3<f32>(x_1316.x, x_1316.x, x_1316.x));
  let x_1319 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_1318.x, x_1318.y, x_1318.z, x_1319.w);
  let x_1321 : f32 = u_xlat36;
  let x_1323 : vec4<f32> = u_xlat4;
  let x_1326 : vec4<f32> = u_xlat3;
  u_xlat2 = ((vec3<f32>(x_1321, x_1321, x_1321) * vec3<f32>(x_1323.x, x_1323.y, x_1323.z)) + vec3<f32>(x_1326.x, x_1326.y, x_1326.z));
  let x_1329 : vec4<f32> = u_xlat0;
  let x_1331 : vec3<f32> = u_xlat2;
  let x_1333 : vec4<f32> = u_xlat1;
  let x_1335 : vec3<f32> = ((vec3<f32>(x_1329.x, x_1329.y, x_1329.z) * x_1331) + vec3<f32>(x_1333.x, x_1333.y, x_1333.w));
  let x_1336 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1335.x, x_1335.y, x_1335.z, x_1336.w);
  let x_1338 : vec3<f32> = u_xlat6;
  let x_1339 : f32 = u_xlat53;
  let x_1342 : vec4<f32> = u_xlat0;
  let x_1344 : vec3<f32> = ((x_1338 * vec3<f32>(x_1339, x_1339, x_1339)) + vec3<f32>(x_1342.x, x_1342.y, x_1342.z));
  let x_1345 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1344.x, x_1344.y, x_1344.z, x_1345.w);
  let x_1348 : f32 = vs_TEXCOORD5;
  let x_1350 : f32 = x_38.x_ProjectionParams.y;
  u_xlat51 = (x_1348 / x_1350);
  let x_1352 : f32 = u_xlat51;
  u_xlat51 = (-(x_1352) + 1.0f);
  let x_1355 : f32 = u_xlat51;
  let x_1357 : f32 = x_38.x_ProjectionParams.z;
  u_xlat51 = (x_1355 * x_1357);
  let x_1359 : f32 = u_xlat51;
  u_xlat51 = max(x_1359, 0.0f);
  let x_1361 : f32 = u_xlat51;
  let x_1364 : f32 = x_38.unity_FogParams.x;
  u_xlat51 = (x_1361 * x_1364);
  let x_1366 : f32 = u_xlat51;
  let x_1367 : f32 = u_xlat51;
  u_xlat51 = (x_1366 * -(x_1367));
  let x_1370 : f32 = u_xlat51;
  u_xlat51 = exp2(x_1370);
  let x_1372 : vec4<f32> = u_xlat0;
  let x_1376 : vec4<f32> = x_38.unity_FogColor;
  let x_1379 : vec3<f32> = (vec3<f32>(x_1372.x, x_1372.y, x_1372.z) + -(vec3<f32>(x_1376.x, x_1376.y, x_1376.z)));
  let x_1380 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_1379.x, x_1379.y, x_1379.z, x_1380.w);
  let x_1384 : f32 = u_xlat51;
  let x_1386 : vec4<f32> = u_xlat0;
  let x_1390 : vec4<f32> = x_38.unity_FogColor;
  let x_1392 : vec3<f32> = ((vec3<f32>(x_1384, x_1384, x_1384) * vec3<f32>(x_1386.x, x_1386.y, x_1386.z)) + vec3<f32>(x_1390.x, x_1390.y, x_1390.z));
  let x_1393 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_1392.x, x_1392.y, x_1392.z, x_1393.w);
  let x_1396 : f32 = u_xlat4.w;
  SV_Target0.w = x_1396;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(2) vs_TEXCOORD1_param : vec4<f32>, @location(3) vs_TEXCOORD2_param : vec4<f32>, @location(4) vs_TEXCOORD3_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(5) vs_TEXCOORD4_param : vec3<f32>, @location(1) vs_TEXCOORD5_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD4 = vs_TEXCOORD4_param;
  vs_TEXCOORD5 = vs_TEXCOORD5_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

