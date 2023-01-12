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

var<private> vs_TEXCOORD6 : f32;

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
  var x_239 : vec3<f32>;
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
  let x_148 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_150 : vec3<f32> = (vec3<f32>(x_143.y, x_143.y, x_143.y) * vec3<f32>(x_148.x, x_148.y, x_148.z));
  let x_151 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_150.x, x_151.y, x_150.y, x_150.z);
  let x_154 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_156 : vec3<f32> = vs_TEXCOORD4;
  let x_159 : vec4<f32> = u_xlat5;
  let x_161 : vec3<f32> = ((vec3<f32>(x_154.x, x_154.y, x_154.z) * vec3<f32>(x_156.x, x_156.x, x_156.x)) + vec3<f32>(x_159.x, x_159.z, x_159.w));
  let x_162 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_161.x, x_162.y, x_161.y, x_161.z);
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
  let x_189 : f32 = x_18.unity_ProbeVolumeParams.x;
  u_xlatb26 = (x_189 == 1.0f);
  let x_191 : bool = u_xlatb26;
  if (x_191) {
    let x_196 : f32 = x_18.unity_ProbeVolumeParams.y;
    u_xlatb26 = (x_196 == 1.0f);
    let x_199 : vec3<f32> = vs_TEXCOORD4;
    let x_203 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[1i];
    let x_205 : vec3<f32> = (vec3<f32>(x_199.y, x_199.y, x_199.y) * vec3<f32>(x_203.x, x_203.y, x_203.z));
    let x_206 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_205.x, x_205.y, x_205.z, x_206.w);
    let x_209 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[0i];
    let x_211 : vec3<f32> = vs_TEXCOORD4;
    let x_214 : vec4<f32> = u_xlat7;
    let x_216 : vec3<f32> = ((vec3<f32>(x_209.x, x_209.y, x_209.z) * vec3<f32>(x_211.x, x_211.x, x_211.x)) + vec3<f32>(x_214.x, x_214.y, x_214.z));
    let x_217 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
    let x_220 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[2i];
    let x_222 : vec3<f32> = vs_TEXCOORD4;
    let x_225 : vec4<f32> = u_xlat7;
    let x_227 : vec3<f32> = ((vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(x_222.z, x_222.z, x_222.z)) + vec3<f32>(x_225.x, x_225.y, x_225.z));
    let x_228 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
    let x_230 : vec4<f32> = u_xlat7;
    let x_233 : vec4<f32> = x_18.unity_ProbeVolumeWorldToObject[3i];
    let x_235 : vec3<f32> = (vec3<f32>(x_230.x, x_230.y, x_230.z) + vec3<f32>(x_233.x, x_233.y, x_233.z));
    let x_236 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_235.x, x_235.y, x_235.z, x_236.w);
    let x_238 : bool = u_xlatb26;
    if (x_238) {
      let x_242 : vec4<f32> = u_xlat7;
      x_239 = vec3<f32>(x_242.x, x_242.y, x_242.z);
    } else {
      let x_245 : vec3<f32> = vs_TEXCOORD4;
      x_239 = x_245;
    }
    let x_246 : vec3<f32> = x_239;
    let x_247 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_246.x, x_246.y, x_246.z, x_247.w);
    let x_249 : vec4<f32> = u_xlat7;
    let x_253 : vec3<f32> = x_18.unity_ProbeVolumeMin;
    let x_255 : vec3<f32> = (vec3<f32>(x_249.x, x_249.y, x_249.z) + -(x_253));
    let x_256 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
    let x_258 : vec4<f32> = u_xlat7;
    let x_262 : vec3<f32> = x_18.unity_ProbeVolumeSizeInv;
    let x_263 : vec3<f32> = (vec3<f32>(x_258.x, x_258.y, x_258.z) * x_262);
    let x_264 : vec4<f32> = u_xlat7;
    u_xlat7 = vec4<f32>(x_264.x, x_263.x, x_263.y, x_263.z);
    let x_267 : f32 = u_xlat7.y;
    u_xlat26 = ((x_267 * 0.25f) + 0.75f);
    let x_274 : f32 = x_18.unity_ProbeVolumeParams.z;
    u_xlat27 = ((x_274 * 0.5f) + 0.75f);
    let x_278 : f32 = u_xlat26;
    let x_279 : f32 = u_xlat27;
    u_xlat7.x = max(x_278, x_279);
    let x_290 : vec4<f32> = u_xlat7;
    let x_292 : vec4<f32> = textureSample(unity_ProbeVolumeSH, samplerunity_ProbeVolumeSH, vec3<f32>(x_290.x, x_290.z, x_290.w));
    u_xlat7 = x_292;
  } else {
    u_xlat7.x = 1.0f;
    u_xlat7.y = 1.0f;
    u_xlat7.z = 1.0f;
    u_xlat7.w = 1.0f;
  }
  let x_298 : vec4<f32> = u_xlat7;
  let x_300 : vec4<f32> = x_18.unity_OcclusionMaskSelector;
  u_xlat26 = dot(x_298, x_300);
  let x_302 : f32 = u_xlat26;
  u_xlat26 = clamp(x_302, 0.0f, 1.0f);
  let x_305 : vec4<f32> = u_xlat5;
  let x_307 : vec4<f32> = u_xlat5;
  u_xlat27 = dot(vec3<f32>(x_305.x, x_305.z, x_305.w), vec3<f32>(x_307.x, x_307.z, x_307.w));
  let x_315 : f32 = u_xlat27;
  let x_317 : vec4<f32> = textureSample(x_LightTextureB0, sampler_LightTextureB0, vec2<f32>(x_315, x_315));
  u_xlat27 = x_317.x;
  let x_327 : vec4<f32> = u_xlat5;
  let x_329 : vec4<f32> = textureSample(x_LightTexture0, sampler_LightTexture0, vec3<f32>(x_327.x, x_327.z, x_327.w));
  u_xlat5.x = x_329.w;
  let x_332 : f32 = u_xlat27;
  let x_334 : f32 = u_xlat5.x;
  u_xlat27 = (x_332 * x_334);
  let x_336 : f32 = u_xlat26;
  let x_337 : f32 = u_xlat27;
  u_xlat26 = (x_336 * x_337);
  let x_340 : vec3<f32> = vs_TEXCOORD1;
  let x_341 : vec3<f32> = u_xlat6;
  u_xlat7.x = dot(x_340, x_341);
  let x_345 : vec3<f32> = vs_TEXCOORD2;
  let x_346 : vec3<f32> = u_xlat6;
  u_xlat7.y = dot(x_345, x_346);
  let x_350 : vec3<f32> = vs_TEXCOORD3;
  let x_351 : vec3<f32> = u_xlat6;
  u_xlat7.z = dot(x_350, x_351);
  let x_354 : vec4<f32> = u_xlat7;
  let x_356 : vec4<f32> = u_xlat7;
  u_xlat27 = dot(vec3<f32>(x_354.x, x_354.y, x_354.z), vec3<f32>(x_356.x, x_356.y, x_356.z));
  let x_359 : f32 = u_xlat27;
  u_xlat27 = inverseSqrt(x_359);
  let x_361 : f32 = u_xlat27;
  let x_363 : vec4<f32> = u_xlat7;
  let x_365 : vec3<f32> = (vec3<f32>(x_361, x_361, x_361) * vec3<f32>(x_363.x, x_363.y, x_363.z));
  let x_366 : vec4<f32> = u_xlat5;
  u_xlat5 = vec4<f32>(x_365.x, x_366.y, x_365.y, x_365.z);
  let x_368 : f32 = u_xlat26;
  let x_372 : vec4<f32> = x_18.x_LightColor0;
  u_xlat6 = (vec3<f32>(x_368, x_368, x_368) * vec3<f32>(x_372.x, x_372.y, x_372.z));
  let x_375 : vec4<f32> = u_xlat3;
  let x_378 : vec4<f32> = x_18.x_Color;
  let x_383 : vec3<f32> = ((vec3<f32>(x_375.x, x_375.y, x_375.z) * vec3<f32>(x_378.x, x_378.y, x_378.z)) + vec3<f32>(-0.039999999f, -0.039999999f, -0.039999999f));
  let x_384 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_383.x, x_383.y, x_383.z, x_384.w);
  let x_386 : f32 = u_xlat25;
  let x_388 : vec4<f32> = u_xlat3;
  let x_393 : vec3<f32> = ((vec3<f32>(x_386, x_386, x_386) * vec3<f32>(x_388.x, x_388.y, x_388.z)) + vec3<f32>(0.039999999f, 0.039999999f, 0.039999999f));
  let x_394 : vec4<f32> = u_xlat3;
  u_xlat3 = vec4<f32>(x_393.x, x_393.y, x_393.z, x_394.w);
  let x_396 : f32 = u_xlat25;
  u_xlat25 = ((-(x_396) * 0.959999979f) + 0.959999979f);
  let x_401 : f32 = u_xlat25;
  let x_403 : vec4<f32> = u_xlat4;
  let x_405 : vec3<f32> = (vec3<f32>(x_401, x_401, x_401) * vec3<f32>(x_403.x, x_403.y, x_403.z));
  let x_406 : vec4<f32> = u_xlat4;
  u_xlat4 = vec4<f32>(x_405.x, x_405.y, x_405.z, x_406.w);
  let x_409 : f32 = u_xlat5.y;
  let x_413 : f32 = x_18.x_Glossiness;
  u_xlat25 = ((-(x_409) * x_413) + 1.0f);
  let x_416 : vec3<f32> = u_xlat0;
  let x_417 : f32 = u_xlat24;
  let x_420 : vec3<f32> = u_xlat2;
  u_xlat0 = ((x_416 * vec3<f32>(x_417, x_417, x_417)) + x_420);
  let x_422 : vec3<f32> = u_xlat0;
  let x_423 : vec3<f32> = u_xlat0;
  u_xlat24 = dot(x_422, x_423);
  let x_425 : f32 = u_xlat24;
  u_xlat24 = max(x_425, 0.001f);
  let x_428 : f32 = u_xlat24;
  u_xlat24 = inverseSqrt(x_428);
  let x_430 : f32 = u_xlat24;
  let x_432 : vec3<f32> = u_xlat0;
  u_xlat0 = (vec3<f32>(x_430, x_430, x_430) * x_432);
  let x_434 : vec4<f32> = u_xlat5;
  let x_436 : vec3<f32> = u_xlat2;
  u_xlat24 = dot(vec3<f32>(x_434.x, x_434.z, x_434.w), x_436);
  let x_438 : vec4<f32> = u_xlat5;
  let x_440 : vec3<f32> = u_xlat1;
  u_xlat2.x = dot(vec3<f32>(x_438.x, x_438.z, x_438.w), x_440);
  let x_444 : f32 = u_xlat2.x;
  u_xlat2.x = clamp(x_444, 0.0f, 1.0f);
  let x_448 : vec4<f32> = u_xlat5;
  let x_450 : vec3<f32> = u_xlat0;
  u_xlat10 = dot(vec3<f32>(x_448.x, x_448.z, x_448.w), x_450);
  let x_452 : f32 = u_xlat10;
  u_xlat10 = clamp(x_452, 0.0f, 1.0f);
  let x_454 : vec3<f32> = u_xlat1;
  let x_455 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(x_454, x_455);
  let x_459 : f32 = u_xlat0.x;
  u_xlat0.x = clamp(x_459, 0.0f, 1.0f);
  let x_464 : f32 = u_xlat0.x;
  let x_466 : f32 = u_xlat0.x;
  u_xlat8.x = (x_464 * x_466);
  let x_469 : vec3<f32> = u_xlat8;
  let x_471 : f32 = u_xlat25;
  u_xlat8.x = dot(vec2<f32>(x_469.x, x_469.x), vec2<f32>(x_471, x_471));
  let x_476 : f32 = u_xlat8.x;
  u_xlat8.x = (x_476 + -0.5f);
  let x_482 : f32 = u_xlat2.x;
  u_xlat16 = (-(x_482) + 1.0f);
  let x_485 : f32 = u_xlat16;
  let x_486 : f32 = u_xlat16;
  u_xlat1.x = (x_485 * x_486);
  let x_490 : f32 = u_xlat1.x;
  let x_492 : f32 = u_xlat1.x;
  u_xlat1.x = (x_490 * x_492);
  let x_495 : f32 = u_xlat16;
  let x_497 : f32 = u_xlat1.x;
  u_xlat16 = (x_495 * x_497);
  let x_500 : f32 = u_xlat8.x;
  let x_501 : f32 = u_xlat16;
  u_xlat16 = ((x_500 * x_501) + 1.0f);
  let x_504 : f32 = u_xlat24;
  u_xlat1.x = (-(abs(x_504)) + 1.0f);
  let x_511 : f32 = u_xlat1.x;
  let x_513 : f32 = u_xlat1.x;
  u_xlat9 = (x_511 * x_513);
  let x_515 : f32 = u_xlat9;
  let x_516 : f32 = u_xlat9;
  u_xlat9 = (x_515 * x_516);
  let x_519 : f32 = u_xlat1.x;
  let x_520 : f32 = u_xlat9;
  u_xlat1.x = (x_519 * x_520);
  let x_524 : f32 = u_xlat8.x;
  let x_526 : f32 = u_xlat1.x;
  u_xlat8.x = ((x_524 * x_526) + 1.0f);
  let x_531 : f32 = u_xlat8.x;
  let x_532 : f32 = u_xlat16;
  u_xlat8.x = (x_531 * x_532);
  let x_535 : f32 = u_xlat25;
  let x_536 : f32 = u_xlat25;
  u_xlat16 = (x_535 * x_536);
  let x_538 : f32 = u_xlat16;
  u_xlat16 = max(x_538, 0.002f);
  let x_541 : f32 = u_xlat16;
  u_xlat1.x = (-(x_541) + 1.0f);
  let x_545 : f32 = u_xlat24;
  let x_548 : f32 = u_xlat1.x;
  let x_550 : f32 = u_xlat16;
  u_xlat9 = ((abs(x_545) * x_548) + x_550);
  let x_553 : f32 = u_xlat2.x;
  let x_555 : f32 = u_xlat1.x;
  let x_557 : f32 = u_xlat16;
  u_xlat1.x = ((x_553 * x_555) + x_557);
  let x_560 : f32 = u_xlat24;
  let x_563 : f32 = u_xlat1.x;
  u_xlat24 = (abs(x_560) * x_563);
  let x_566 : f32 = u_xlat2.x;
  let x_567 : f32 = u_xlat9;
  let x_569 : f32 = u_xlat24;
  u_xlat24 = ((x_566 * x_567) + x_569);
  let x_571 : f32 = u_xlat24;
  u_xlat24 = (x_571 + 0.00001f);
  let x_574 : f32 = u_xlat24;
  u_xlat24 = (0.5f / x_574);
  let x_576 : f32 = u_xlat16;
  let x_577 : f32 = u_xlat16;
  u_xlat16 = (x_576 * x_577);
  let x_579 : f32 = u_xlat10;
  let x_580 : f32 = u_xlat16;
  let x_582 : f32 = u_xlat10;
  u_xlat1.x = ((x_579 * x_580) + -(x_582));
  let x_587 : f32 = u_xlat1.x;
  let x_588 : f32 = u_xlat10;
  u_xlat1.x = ((x_587 * x_588) + 1.0f);
  let x_592 : f32 = u_xlat16;
  u_xlat16 = (x_592 * 0.318309873f);
  let x_596 : f32 = u_xlat1.x;
  let x_598 : f32 = u_xlat1.x;
  u_xlat1.x = ((x_596 * x_598) + 0.0000001f);
  let x_603 : f32 = u_xlat16;
  let x_605 : f32 = u_xlat1.x;
  u_xlat16 = (x_603 / x_605);
  let x_607 : f32 = u_xlat16;
  let x_608 : f32 = u_xlat24;
  u_xlat8.y = (x_607 * x_608);
  let x_611 : vec3<f32> = u_xlat2;
  let x_613 : vec3<f32> = u_xlat8;
  let x_615 : vec2<f32> = (vec2<f32>(x_611.x, x_611.x) * vec2<f32>(x_613.x, x_613.y));
  let x_616 : vec3<f32> = u_xlat8;
  u_xlat8 = vec3<f32>(x_615.x, x_615.y, x_616.z);
  let x_619 : f32 = u_xlat8.y;
  u_xlat16 = (x_619 * 3.141592741f);
  let x_622 : f32 = u_xlat16;
  u_xlat16 = max(x_622, 0.0f);
  let x_624 : vec4<f32> = u_xlat3;
  let x_626 : vec4<f32> = u_xlat3;
  u_xlat24 = dot(vec3<f32>(x_624.x, x_624.y, x_624.z), vec3<f32>(x_626.x, x_626.y, x_626.z));
  let x_630 : f32 = u_xlat24;
  u_xlatb24 = !((x_630 == 0.0f));
  let x_632 : bool = u_xlatb24;
  u_xlat24 = select(0.0f, 1.0f, x_632);
  let x_634 : f32 = u_xlat24;
  let x_635 : f32 = u_xlat16;
  u_xlat16 = (x_634 * x_635);
  let x_637 : vec3<f32> = u_xlat8;
  let x_639 : vec3<f32> = u_xlat6;
  u_xlat1 = (vec3<f32>(x_637.x, x_637.x, x_637.x) * x_639);
  let x_641 : vec3<f32> = u_xlat6;
  let x_642 : f32 = u_xlat16;
  u_xlat8 = (x_641 * vec3<f32>(x_642, x_642, x_642));
  let x_646 : f32 = u_xlat0.x;
  u_xlat0.x = (-(x_646) + 1.0f);
  let x_651 : f32 = u_xlat0.x;
  let x_653 : f32 = u_xlat0.x;
  u_xlat25 = (x_651 * x_653);
  let x_655 : f32 = u_xlat25;
  let x_656 : f32 = u_xlat25;
  u_xlat25 = (x_655 * x_656);
  let x_659 : f32 = u_xlat0.x;
  let x_660 : f32 = u_xlat25;
  u_xlat0.x = (x_659 * x_660);
  let x_663 : vec4<f32> = u_xlat3;
  u_xlat2 = (-(vec3<f32>(x_663.x, x_663.y, x_663.z)) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_668 : vec3<f32> = u_xlat2;
  let x_669 : vec3<f32> = u_xlat0;
  let x_672 : vec4<f32> = u_xlat3;
  u_xlat2 = ((x_668 * vec3<f32>(x_669.x, x_669.x, x_669.x)) + vec3<f32>(x_672.x, x_672.y, x_672.z));
  let x_675 : vec3<f32> = u_xlat8;
  let x_676 : vec3<f32> = u_xlat2;
  u_xlat0 = (x_675 * x_676);
  let x_678 : vec4<f32> = u_xlat4;
  let x_680 : vec3<f32> = u_xlat1;
  let x_682 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_678.x, x_678.y, x_678.z) * x_680) + x_682);
  let x_686 : f32 = vs_TEXCOORD6;
  let x_688 : f32 = x_18.x_ProjectionParams.y;
  u_xlat24 = (x_686 / x_688);
  let x_690 : f32 = u_xlat24;
  u_xlat24 = (-(x_690) + 1.0f);
  let x_693 : f32 = u_xlat24;
  let x_695 : f32 = x_18.x_ProjectionParams.z;
  u_xlat24 = (x_693 * x_695);
  let x_697 : f32 = u_xlat24;
  u_xlat24 = max(x_697, 0.0f);
  let x_699 : f32 = u_xlat24;
  let x_702 : f32 = x_18.unity_FogParams.x;
  u_xlat24 = (x_699 * x_702);
  let x_704 : f32 = u_xlat24;
  let x_705 : f32 = u_xlat24;
  u_xlat24 = (x_704 * -(x_705));
  let x_708 : f32 = u_xlat24;
  u_xlat24 = exp2(x_708);
  let x_712 : vec3<f32> = u_xlat0;
  let x_713 : f32 = u_xlat24;
  let x_715 : vec3<f32> = (x_712 * vec3<f32>(x_713, x_713, x_713));
  let x_716 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_715.x, x_715.y, x_715.z, x_716.w);
  let x_719 : f32 = u_xlat4.w;
  SV_Target0.w = x_719;
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

