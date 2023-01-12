struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_WorldSpaceLightPos0 : vec4<f32>,
  unity_ObjectToWorld : mat4x4<f32>,
  unity_WorldToObject : mat4x4<f32>,
  unity_WorldTransformParams : vec4<f32>,
  unity_MatrixVP : mat4x4<f32>,
  x_MainTex_ST : vec4<f32>,
  x_DetailAlbedoMap_ST : vec4<f32>,
  x_UVSec : f32,
  @size(12)
  padding_1 : u32,
  unity_WorldToLight : mat4x4<f32>,
}

var<private> in_POSITION0 : vec4<f32>;

@group(1) @binding(1) var<uniform> x_18 : VGlobals;

var<private> in_TEXCOORD0 : vec2<f32>;

var<private> in_TEXCOORD1 : vec2<f32>;

var<private> vs_TEXCOORD0 : vec4<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec2<f32>;

var<private> vs_TEXCOORD7 : vec4<f32>;

var<private> gl_Position : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb1 : bool;
  var x_102 : vec2<f32>;
  var u_xlat16 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlat4 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_12 : vec4<f32> = in_POSITION0;
  let x_24 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat0 = (vec4<f32>(x_12.y, x_12.y, x_12.y, x_12.y) * x_24);
  let x_28 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_29 : vec4<f32> = in_POSITION0;
  let x_32 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_28 * vec4<f32>(x_29.x, x_29.x, x_29.x, x_29.x)) + x_32);
  let x_35 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_36 : vec4<f32> = in_POSITION0;
  let x_39 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_35 * vec4<f32>(x_36.z, x_36.z, x_36.z, x_36.z)) + x_39);
  let x_42 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_42 + x_45);
  let x_48 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_49 : vec4<f32> = in_POSITION0;
  let x_52 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_48 * vec4<f32>(x_49.w, x_49.w, x_49.w, x_49.w)) + x_52);
  let x_55 : vec4<f32> = u_xlat1;
  let x_59 : vec4<f32> = x_18.unity_MatrixVP[1i];
  u_xlat2 = (vec4<f32>(x_55.y, x_55.y, x_55.y, x_55.y) * x_59);
  let x_62 : vec4<f32> = x_18.unity_MatrixVP[0i];
  let x_63 : vec4<f32> = u_xlat1;
  let x_66 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_62 * vec4<f32>(x_63.x, x_63.x, x_63.x, x_63.x)) + x_66);
  let x_69 : vec4<f32> = x_18.unity_MatrixVP[2i];
  let x_70 : vec4<f32> = u_xlat1;
  let x_73 : vec4<f32> = u_xlat2;
  u_xlat2 = ((x_69 * vec4<f32>(x_70.z, x_70.z, x_70.z, x_70.z)) + x_73);
  let x_82 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_83 : vec4<f32> = u_xlat1;
  let x_86 : vec4<f32> = u_xlat2;
  gl_Position = ((x_82 * vec4<f32>(x_83.w, x_83.w, x_83.w, x_83.w)) + x_86);
  let x_96 : f32 = x_18.x_UVSec;
  u_xlatb1 = (x_96 == 0.0f);
  let x_99 : bool = u_xlatb1;
  if (x_99) {
    let x_107 : vec2<f32> = in_TEXCOORD0;
    x_102 = x_107;
  } else {
    let x_110 : vec2<f32> = in_TEXCOORD1;
    x_102 = x_110;
  }
  let x_111 : vec2<f32> = x_102;
  let x_112 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_111.x, x_111.y, x_112.z, x_112.w);
  let x_115 : vec4<f32> = u_xlat1;
  let x_119 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_123 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_125 : vec2<f32> = ((vec2<f32>(x_115.x, x_115.y) * vec2<f32>(x_119.x, x_119.y)) + vec2<f32>(x_123.z, x_123.w));
  let x_126 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_126.x, x_126.y, x_125.x, x_125.y);
  let x_128 : vec2<f32> = in_TEXCOORD0;
  let x_131 : vec4<f32> = x_18.x_MainTex_ST;
  let x_135 : vec4<f32> = x_18.x_MainTex_ST;
  let x_137 : vec2<f32> = ((x_128 * vec2<f32>(x_131.x, x_131.y)) + vec2<f32>(x_135.z, x_135.w));
  let x_138 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_137.x, x_137.y, x_138.z, x_138.w);
  let x_140 : vec4<f32> = in_POSITION0;
  let x_143 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_145 : vec3<f32> = (vec3<f32>(x_140.y, x_140.y, x_140.y) * vec3<f32>(x_143.x, x_143.y, x_143.z));
  let x_146 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_145.x, x_145.y, x_145.z, x_146.w);
  let x_149 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_151 : vec4<f32> = in_POSITION0;
  let x_154 : vec4<f32> = u_xlat1;
  let x_156 : vec3<f32> = ((vec3<f32>(x_149.x, x_149.y, x_149.z) * vec3<f32>(x_151.x, x_151.x, x_151.x)) + vec3<f32>(x_154.x, x_154.y, x_154.z));
  let x_157 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_156.x, x_156.y, x_156.z, x_157.w);
  let x_160 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_162 : vec4<f32> = in_POSITION0;
  let x_165 : vec4<f32> = u_xlat1;
  let x_167 : vec3<f32> = ((vec3<f32>(x_160.x, x_160.y, x_160.z) * vec3<f32>(x_162.z, x_162.z, x_162.z)) + vec3<f32>(x_165.x, x_165.y, x_165.z));
  let x_168 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_167.x, x_167.y, x_167.z, x_168.w);
  let x_171 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_173 : vec4<f32> = in_POSITION0;
  let x_176 : vec4<f32> = u_xlat1;
  let x_178 : vec3<f32> = ((vec3<f32>(x_171.x, x_171.y, x_171.z) * vec3<f32>(x_173.w, x_173.w, x_173.w)) + vec3<f32>(x_176.x, x_176.y, x_176.z));
  let x_179 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_178.x, x_178.y, x_178.z, x_179.w);
  let x_181 : vec4<f32> = u_xlat1;
  let x_185 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_187 : vec3<f32> = (vec3<f32>(x_181.x, x_181.y, x_181.z) + -(x_185));
  let x_188 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_187.x, x_187.y, x_187.z, x_188.w);
  let x_192 : vec4<f32> = u_xlat2;
  let x_194 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_192.x, x_192.y, x_192.z), vec3<f32>(x_194.x, x_194.y, x_194.z));
  let x_197 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_197);
  let x_200 : f32 = u_xlat16;
  let x_202 : vec4<f32> = u_xlat2;
  let x_204 : vec3<f32> = (vec3<f32>(x_200, x_200, x_200) * vec3<f32>(x_202.x, x_202.y, x_202.z));
  let x_205 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_204.x, x_204.y, x_204.z, x_205.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_211 : vec4<f32> = in_TANGENT0;
  let x_214 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_216 : vec3<f32> = (vec3<f32>(x_211.y, x_211.y, x_211.y) * vec3<f32>(x_214.x, x_214.y, x_214.z));
  let x_217 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_216.x, x_216.y, x_216.z, x_217.w);
  let x_220 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_222 : vec4<f32> = in_TANGENT0;
  let x_225 : vec4<f32> = u_xlat2;
  let x_227 : vec3<f32> = ((vec3<f32>(x_220.x, x_220.y, x_220.z) * vec3<f32>(x_222.x, x_222.x, x_222.x)) + vec3<f32>(x_225.x, x_225.y, x_225.z));
  let x_228 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_227.x, x_227.y, x_227.z, x_228.w);
  let x_231 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_233 : vec4<f32> = in_TANGENT0;
  let x_236 : vec4<f32> = u_xlat2;
  let x_238 : vec3<f32> = ((vec3<f32>(x_231.x, x_231.y, x_231.z) * vec3<f32>(x_233.z, x_233.z, x_233.z)) + vec3<f32>(x_236.x, x_236.y, x_236.z));
  let x_239 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_238.x, x_238.y, x_238.z, x_239.w);
  let x_241 : vec4<f32> = u_xlat2;
  let x_243 : vec4<f32> = u_xlat2;
  u_xlat16 = dot(vec3<f32>(x_241.x, x_241.y, x_241.z), vec3<f32>(x_243.x, x_243.y, x_243.z));
  let x_246 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_246);
  let x_248 : f32 = u_xlat16;
  let x_250 : vec4<f32> = u_xlat2;
  let x_252 : vec3<f32> = (vec3<f32>(x_248, x_248, x_248) * vec3<f32>(x_250.x, x_250.y, x_250.z));
  let x_253 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_252.x, x_252.y, x_252.z, x_253.w);
  let x_256 : vec4<f32> = u_xlat2;
  let x_257 : vec3<f32> = vec3<f32>(x_256.x, x_256.y, x_256.z);
  let x_258 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_257.x, x_257.y, x_257.z, x_258.w);
  let x_262 : vec4<f32> = u_xlat1;
  let x_266 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_270 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat3 = ((-(vec3<f32>(x_262.x, x_262.y, x_262.z)) * vec3<f32>(x_266.w, x_266.w, x_266.w)) + vec3<f32>(x_270.x, x_270.y, x_270.z));
  let x_275 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = vec3<f32>(x_275.x, x_275.y, x_275.z);
  let x_279 : f32 = u_xlat3.x;
  vs_TEXCOORD2.w = x_279;
  let x_283 : vec3<f32> = in_NORMAL0;
  let x_285 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat1.x = dot(x_283, vec3<f32>(x_285.x, x_285.y, x_285.z));
  let x_289 : vec3<f32> = in_NORMAL0;
  let x_291 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat1.y = dot(x_289, vec3<f32>(x_291.x, x_291.y, x_291.z));
  let x_295 : vec3<f32> = in_NORMAL0;
  let x_297 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat1.z = dot(x_295, vec3<f32>(x_297.x, x_297.y, x_297.z));
  let x_302 : vec4<f32> = u_xlat1;
  let x_304 : vec4<f32> = u_xlat1;
  u_xlat16 = dot(vec3<f32>(x_302.x, x_302.y, x_302.z), vec3<f32>(x_304.x, x_304.y, x_304.z));
  let x_307 : f32 = u_xlat16;
  u_xlat16 = inverseSqrt(x_307);
  let x_309 : f32 = u_xlat16;
  let x_311 : vec4<f32> = u_xlat1;
  let x_313 : vec3<f32> = (vec3<f32>(x_309, x_309, x_309) * vec3<f32>(x_311.x, x_311.y, x_311.z));
  let x_314 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_313.x, x_313.y, x_313.z, x_314.w);
  let x_317 : vec4<f32> = u_xlat2;
  let x_319 : vec4<f32> = u_xlat1;
  u_xlat4 = (vec3<f32>(x_317.y, x_317.z, x_317.x) * vec3<f32>(x_319.z, x_319.x, x_319.y));
  let x_322 : vec4<f32> = u_xlat1;
  let x_324 : vec4<f32> = u_xlat2;
  let x_327 : vec3<f32> = u_xlat4;
  let x_329 : vec3<f32> = ((vec3<f32>(x_322.y, x_322.z, x_322.x) * vec3<f32>(x_324.z, x_324.x, x_324.y)) + -(x_327));
  let x_330 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_329.x, x_329.y, x_329.z, x_330.w);
  let x_333 : vec4<f32> = u_xlat1;
  let x_334 : vec3<f32> = vec3<f32>(x_333.x, x_333.y, x_333.z);
  let x_335 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_334.x, x_334.y, x_334.z, x_335.w);
  let x_339 : f32 = in_TANGENT0.w;
  let x_342 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat1.x = (x_339 * x_342);
  let x_346 : vec4<f32> = u_xlat1;
  let x_348 : vec4<f32> = u_xlat2;
  let x_350 : vec3<f32> = (vec3<f32>(x_346.x, x_346.x, x_346.x) * vec3<f32>(x_348.x, x_348.y, x_348.z));
  let x_351 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_350.x, x_350.y, x_350.z, x_351.w);
  let x_354 : f32 = u_xlat3.y;
  vs_TEXCOORD3.w = x_354;
  let x_357 : f32 = u_xlat3.z;
  vs_TEXCOORD4.w = x_357;
  let x_359 : vec4<f32> = u_xlat0;
  let x_363 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_365 : vec2<f32> = (vec2<f32>(x_359.y, x_359.y) * vec2<f32>(x_363.x, x_363.y));
  let x_366 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_365.x, x_365.y, x_366.z, x_366.w);
  let x_369 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_371 : vec4<f32> = u_xlat0;
  let x_374 : vec4<f32> = u_xlat1;
  let x_376 : vec2<f32> = ((vec2<f32>(x_369.x, x_369.y) * vec2<f32>(x_371.x, x_371.x)) + vec2<f32>(x_374.x, x_374.y));
  let x_377 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_376.x, x_376.y, x_377.z, x_377.w);
  let x_380 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_382 : vec4<f32> = u_xlat0;
  let x_385 : vec4<f32> = u_xlat0;
  let x_387 : vec2<f32> = ((vec2<f32>(x_380.x, x_380.y) * vec2<f32>(x_382.z, x_382.z)) + vec2<f32>(x_385.x, x_385.y));
  let x_388 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_387.x, x_387.y, x_388.z, x_388.w);
  let x_393 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_395 : vec4<f32> = u_xlat0;
  let x_398 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec2<f32>(x_393.x, x_393.y) * vec2<f32>(x_395.w, x_395.w)) + vec2<f32>(x_398.x, x_398.y));
  vs_TEXCOORD7 = vec4<f32>(0.0f, 0.0f, 0.0f, 0.0f);
  return;
}

struct main_out {
  @builtin(position)
  gl_Position : vec4<f32>,
  @location(0)
  vs_TEXCOORD0_1 : vec4<f32>,
  @location(1)
  vs_TEXCOORD1_1 : vec4<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(4)
  vs_TEXCOORD4_1 : vec4<f32>,
  @location(3)
  vs_TEXCOORD3_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD4, vs_TEXCOORD3);
}

