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

@group(0) @binding(9) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(0) @binding(1) var x_Specular : texture_2d<f32>;

@group(0) @binding(11) var sampler_Specular : sampler;

@group(0) @binding(2) var x_NormalMap : texture_2d<f32>;

@group(0) @binding(10) var sampler_NormalMap : sampler;

@group(0) @binding(5) var unity_ProbeVolumeSH : texture_3d<f32>;

@group(0) @binding(6) var samplerunity_ProbeVolumeSH : sampler;

@group(0) @binding(3) var x_LightTextureB0 : texture_2d<f32>;

@group(0) @binding(8) var sampler_LightTextureB0 : sampler;

@group(0) @binding(4) var x_LightTexture0 : texture_cube<f32>;

@group(0) @binding(7) var sampler_LightTexture0 : sampler;

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
  let x_316 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_314, x_314));
  u_xlat27 = x_316.x;
  let x_326 : vec4<f32> = u_xlat5;
  let x_328 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec3<f32>(x_326.x, x_326.z, x_326.w));
  u_xlat5.x = x_328.w;
  let x_331 : f32 = u_xlat27;
  let x_333 : f32 = u_xlat5.x;
  u_xlat27 = (x_331 * x_333);
  let x_335 : f32 = u_xlat26;
  let x_336 : f32 = u_xlat27;
  u_xlat26 = (x_335 * x_336);
  let x_339 : vec3<f32> = vs_TEXCOORD1;
  let x_340 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_339, x_340);
  let x_344 : vec3<f32> = vs_TEXCOORD2;
  let x_345 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_344, x_345);
  let x_349 : vec3<f32> = vs_TEXCOORD3;
  let x_350 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_349, x_350);
  let x_353 : vec4<f32> = u_xlat7;
  let x_355 : vec4<f32> = u_xlat7;
  u_xlat27 = dot(vec3<f32>(x_353.x, x_353.y, x_353.z), vec3<f32>(x_355.x, x_355.y, x_355.z));
  let x_358 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_358);
  let x_360 : f32 = u_xlat27;
  let x_362 : vec4<f32> = u_xlat7;
  let x_364 : vec3<f32> = (vec3<f32>(x_360, x_360, x_360) * vec3<f32>(x_362.x, x_362.y, x_362.z));
  let x_365 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_364.x, x_365.y, x_364.y, x_364.z);
  let x_367 : f32 = u_xlat26;
  let x_371 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_367, x_367, x_367) * vec3<f32>(x_371.x, x_371.y, x_371.z));
  let x_374 : vec4<f32> = u_xlat3;
  let x_377 : vec4<f32> = x_18.x_Color;
  let x_382 : vec3<f32> = ((vec3<f32>(x_374.x, x_374.y, x_374.z) * vec3<f32>(x_377.x, x_377.y, x_377.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_383 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_382.x, x_382.y, x_382.z, x_383.w);
  let x_385 : f32 = u_xlat25;
  let x_387 : vec4<f32> = u_xlat3;
  let x_392 : vec3<f32> = ((vec3<f32>(x_385, x_385, x_385) * vec3<f32>(x_387.x, x_387.y, x_387.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_393 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_392.x, x_392.y, x_392.z, x_393.w);
  let x_395 : f32 = u_xlat25;
  u_xlat25 = ((-(x_395) * 0.959999979f) + 0.959999979f);
  let x_400 : f32 = u_xlat25;
  let x_402 : vec4<f32> = u_xlat4;
  let x_404 : vec3<f32> = (vec3<f32>(x_400, x_400, x_400) * vec3<f32>(x_402.x, x_402.y, x_402.z));
  let x_405 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_404.x, x_404.y, x_404.z, x_405.w);
  let x_408 : f32 = u_xlat5.y;
  let x_412 : f32 = x_18.x_Glossiness;
  u_xlat25 = ((-(x_408) * x_412) + 1.0f);
  let x_415 : vec3<f32> = u_xlat0;
  let x_416 : f32 = u_xlat24;
  let x_419 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_415 * vec3<f32>(x_416, x_416, x_416)) + x_419);
  let x_421 : vec3<f32> = u_xlat0;
  let x_422 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_421, x_422);
  let x_424 : f32 = u_xlat24;
  u_xlat24 = max(x_424, 0.001f);
  let x_427 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_427);
  let x_429 : f32 = u_xlat24;
  let x_431 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_429, x_429, x_429) * x_431);
  let x_433 : vec4<f32> = u_xlat5;
  let x_435 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_433.x, x_433.z, x_433.w), x_435);
  let x_437 : vec4<f32> = u_xlat5;
  let x_439 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_437.x, x_437.z, x_437.w), x_439);
  let x_443 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_443, 0.0f, 1.0f);
  let x_447 : vec4<f32> = u_xlat5;
  let x_449 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(vec3<f32>(x_447.x, x_447.z, x_447.w), x_449);
  let x_451 : f32 = u_xlat10;
  u_xlat10 = clamp(x_451, 0.0f, 1.0f);
  let x_453 : vec3<f32> = u_xlat1;
  let x_454 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_453, x_454);
  let x_458 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_458, 0.0f, 1.0f);
  let x_463 : f32 = u_xlat0.x;
  let x_465 : f32 = u_xlat0.x;
  u_xlat8.x = (x_463 * x_465);
  let x_468 : vec3<f32> = u_xlat8;
  let x_470 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_468.x, x_468.x), vec2<f32>(x_470, x_470));
  let x_475 : f32 = u_xlat8.x;
  u_xlat8.x = (x_475 + -0.5f);
  let x_481 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_481) + 1.0f);
  let x_484 : f32 = u_xlat16;
  let x_485 : f32 = u_xlat16;
  u_xlat1.x = (x_484 * x_485);
  let x_489 : f32 = u_xlat1.x;
  let x_491 : f32 = u_xlat1.x;
  u_xlat1.x = (x_489 * x_491);
  let x_494 : f32 = u_xlat16;
  let x_496 : f32 = u_xlat1.x;
  u_xlat16 = (x_494 * x_496);
  let x_499 : f32 = u_xlat8.x;
  let x_500 : f32 = u_xlat16;
  u_xlat16 = ((x_499 * x_500) + 1.0f);
  let x_503 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_503)) + 1.0f);
  let x_510 : f32 = u_xlat1.x;
  let x_512 : f32 = u_xlat1.x;
  u_xlat9 = (x_510 * x_512);
  let x_514 : f32 = u_xlat9;
  let x_515 : f32 = u_xlat9;
  u_xlat9 = (x_514 * x_515);
  let x_518 : f32 = u_xlat1.x;
  let x_519 : f32 = u_xlat9;
  u_xlat1.x = (x_518 * x_519);
  let x_523 : f32 = u_xlat8.x;
  let x_525 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_523 * x_525) + 1.0f);
  let x_530 : f32 = u_xlat8.x;
  let x_531 : f32 = u_xlat16;
  u_xlat8.x = (x_530 * x_531);
  let x_534 : f32 = u_xlat25;
  let x_535 : f32 = u_xlat25;
  u_xlat16 = (x_534 * x_535);
  let x_537 : f32 = u_xlat16;
  u_xlat16 = max(x_537, 0.002f);
  let x_540 : f32 = u_xlat16;
  u_xlat1.x = (-(x_540) + 1.0f);
  let x_544 : f32 = u_xlat24;
  let x_547 : f32 = u_xlat1.x;
  let x_549 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_544) * x_547) + x_549);
  let x_552 : f32 = u_xlat2.x;
  let x_554 : f32 = u_xlat1.x;
  let x_556 : f32 = u_xlat16;
  u_xlat1.x = ((x_552 * x_554) + x_556);
  let x_559 : f32 = u_xlat24;
  let x_562 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_559) * x_562);
  let x_565 : f32 = u_xlat2.x;
  let x_566 : f32 = u_xlat9;
  let x_568 : f32 = u_xlat24;
  u_xlat24 = ((x_565 * x_566) + x_568);
  let x_570 : f32 = u_xlat24;
  u_xlat24 = (x_570 + 0.00001f);
  let x_573 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_573);
  let x_575 : f32 = u_xlat16;
  let x_576 : f32 = u_xlat16;
  u_xlat16 = (x_575 * x_576);
  let x_578 : f32 = u_xlat10;
  let x_579 : f32 = u_xlat16;
  let x_581 : f32 = u_xlat10;
  u_xlat1.x = ((x_578 * x_579) + -(x_581));
  let x_586 : f32 = u_xlat1.x;
  let x_587 : f32 = u_xlat10;
  u_xlat1.x = ((x_586 * x_587) + 1.0f);
  let x_591 : f32 = u_xlat16;
  u_xlat16 = (x_591 * 0.318309873f);
  let x_595 : f32 = u_xlat1.x;
  let x_597 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_595 * x_597) + 0.0000001f);
  let x_602 : f32 = u_xlat16;
  let x_604 : f32 = u_xlat1.x;
  u_xlat16 = (x_602 / x_604);
  let x_606 : f32 = u_xlat16;
  let x_607 : f32 = u_xlat24;
  u_xlat8.y = (x_606 * x_607);
  let x_610 : vec3<f32> = u_xlat2;
  let x_612 : vec3<f32> = u_xlat8;
  let x_614 : vec2<f32> = (vec2<f32>(x_610.x, x_610.x) * vec2<f32>(x_612.x, x_612.y));
  let x_615 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_614.x, x_614.y, x_615.z);
  let x_618 : f32 = u_xlat8.y;
  u_xlat16 = (x_618 * 3.141592741f);
  let x_621 : f32 = u_xlat16;
  u_xlat16 = max(x_621, 0.0f);
  let x_623 : vec4<f32> = u_xlat3;
  let x_625 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_623.x, x_623.y, x_623.z), vec3<f32>(x_625.x, x_625.y, x_625.z));
  let x_629 : f32 = u_xlat24;
  u_xlatb24 = !((x_629 == 0.0f));
  let x_631 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_631);
  let x_633 : f32 = u_xlat24;
  let x_634 : f32 = u_xlat16;
  u_xlat16 = (x_633 * x_634);
  let x_636 : vec3<f32> = u_xlat8;
  let x_638 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_636.x, x_636.x, x_636.x) * x_638);
  let x_640 : vec3<f32> = u_xlat6;
  let x_641 : f32 = u_xlat16;
  u_xlat8 = (x_640 * vec3<f32>(x_641, x_641, x_641));
  let x_645 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_645) + 1.0f);
  let x_650 : f32 = u_xlat0.x;
  let x_652 : f32 = u_xlat0.x;
  u_xlat25 = (x_650 * x_652);
  let x_654 : f32 = u_xlat25;
  let x_655 : f32 = u_xlat25;
  u_xlat25 = (x_654 * x_655);
  let x_658 : f32 = u_xlat0.x;
  let x_659 : f32 = u_xlat25;
  u_xlat0.x = (x_658 * x_659);
  let x_662 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_662.x, x_662.y, x_662.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_667 : vec3<f32> = u_xlat2;
  let x_668 : vec3<f32> = u_xlat0;
  let x_671 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_667 * vec3<f32>(x_668.x, x_668.x, x_668.x)) + vec3<f32>(x_671.x, x_671.y, x_671.z));
  let x_674 : vec3<f32> = u_xlat8;
  let x_675 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_674 * x_675);
  let x_679 : vec4<f32> = u_xlat4;
  let x_681 : vec3<f32> = u_xlat1;
  let x_683 : vec3<f32> = u_xlat0;
  let x_684 : vec3<f32> = ((vec3<f32>(x_679.x, x_679.y, x_679.z) * x_681) + x_683);
  let x_685 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_684.x, x_684.y, x_684.z, x_685.w);
  let x_688 : f32 = u_xlat4.w;
  SV_Target0.w = x_688;
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

