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

var<private> vs_TEXCOORD5 : vec3<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> in_TANGENT0 : vec4<f32>;

var<private> in_NORMAL0 : vec3<f32>;

var<private> vs_TEXCOORD4 : vec4<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> vs_TEXCOORD6 : vec3<f32>;

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
  let x_210 : vec4<f32> = u_xlat1;
  let x_214 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_218 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_220 : vec3<f32> = ((-(vec3<f32>(x_210.x, x_210.y, x_210.z)) * vec3<f32>(x_214.w, x_214.w, x_214.w)) + vec3<f32>(x_218.x, x_218.y, x_218.z));
  let x_221 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_220.x, x_220.y, x_220.z, x_221.w);
  let x_225 : vec4<f32> = u_xlat1;
  vs_TEXCOORD5 = vec3<f32>(x_225.x, x_225.y, x_225.z);
  let x_227 : vec4<f32> = u_xlat2;
  let x_229 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_227.x, x_227.y, x_227.z), vec3<f32>(x_229.x, x_229.y, x_229.z));
  let x_235 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_235);
  let x_238 : vec4<f32> = u_xlat1;
  let x_240 : vec4<f32> = u_xlat2;
  let x_242 : vec3<f32> = (vec3<f32>(x_238.x, x_238.x, x_238.x) * vec3<f32>(x_240.x, x_240.y, x_240.z));
  let x_243 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_242.x, x_242.y, x_242.z, x_243.w);
  let x_247 : f32 = u_xlat1.x;
  vs_TEXCOORD2.w = x_247;
  let x_250 : vec4<f32> = in_TANGENT0;
  let x_253 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_255 : vec3<f32> = (vec3<f32>(x_250.y, x_250.y, x_250.y) * vec3<f32>(x_253.x, x_253.y, x_253.z));
  let x_256 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_255.x, x_255.y, x_255.z, x_256.w);
  let x_259 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_261 : vec4<f32> = in_TANGENT0;
  let x_264 : vec4<f32> = u_xlat2;
  let x_266 : vec3<f32> = ((vec3<f32>(x_259.x, x_259.y, x_259.z) * vec3<f32>(x_261.x, x_261.x, x_261.x)) + vec3<f32>(x_264.x, x_264.y, x_264.z));
  let x_267 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_266.x, x_266.y, x_266.z, x_267.w);
  let x_270 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_272 : vec4<f32> = in_TANGENT0;
  let x_275 : vec4<f32> = u_xlat2;
  let x_277 : vec3<f32> = ((vec3<f32>(x_270.x, x_270.y, x_270.z) * vec3<f32>(x_272.z, x_272.z, x_272.z)) + vec3<f32>(x_275.x, x_275.y, x_275.z));
  let x_278 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_277.x, x_277.y, x_277.z, x_278.w);
  let x_280 : vec4<f32> = u_xlat2;
  let x_282 : vec4<f32> = u_xlat2;
  u_xlat1.x = dot(vec3<f32>(x_280.x, x_280.y, x_280.z), vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_287 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_287);
  let x_290 : vec4<f32> = u_xlat1;
  let x_292 : vec4<f32> = u_xlat2;
  let x_294 : vec3<f32> = (vec3<f32>(x_290.x, x_290.x, x_290.x) * vec3<f32>(x_292.x, x_292.y, x_292.z));
  let x_295 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_297 : vec4<f32> = u_xlat2;
  let x_298 : vec3<f32> = vec3<f32>(x_297.x, x_297.y, x_297.z);
  let x_299 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_298.x, x_298.y, x_298.z, x_299.w);
  let x_305 : vec3<f32> = in_NORMAL0;
  let x_307 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat3.x = dot(x_305, vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_311 : vec3<f32> = in_NORMAL0;
  let x_313 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat3.y = dot(x_311, vec3<f32>(x_313.x, x_313.y, x_313.z));
  let x_317 : vec3<f32> = in_NORMAL0;
  let x_319 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat3.z = dot(x_317, vec3<f32>(x_319.x, x_319.y, x_319.z));
  let x_324 : vec3<f32> = u_xlat3;
  let x_325 : vec3<f32> = u_xlat3;
  u_xlat1.x = dot(x_324, x_325);
  let x_329 : f32 = u_xlat1.x;
  u_xlat1.x = inverseSqrt(x_329);
  let x_332 : vec4<f32> = u_xlat1;
  let x_334 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_332.x, x_332.x, x_332.x) * x_334);
  let x_337 : vec4<f32> = u_xlat2;
  let x_339 : vec3<f32> = u_xlat3;
  u_xlat4 = (vec3<f32>(x_337.y, x_337.z, x_337.x) * vec3<f32>(x_339.z, x_339.x, x_339.y));
  let x_342 : vec3<f32> = u_xlat3;
  let x_344 : vec4<f32> = u_xlat2;
  let x_347 : vec3<f32> = u_xlat4;
  let x_349 : vec3<f32> = ((vec3<f32>(x_342.y, x_342.z, x_342.x) * vec3<f32>(x_344.z, x_344.x, x_344.y)) + -(x_347));
  let x_350 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_349.x, x_349.y, x_349.z, x_350.w);
  let x_353 : vec3<f32> = u_xlat3;
  let x_354 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_353.x, x_353.y, x_353.z, x_354.w);
  let x_358 : f32 = in_TANGENT0.w;
  let x_361 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat1.x = (x_358 * x_361);
  let x_365 : vec4<f32> = u_xlat1;
  let x_367 : vec4<f32> = u_xlat2;
  let x_369 : vec3<f32> = (vec3<f32>(x_365.x, x_365.x, x_365.x) * vec3<f32>(x_367.x, x_367.y, x_367.z));
  let x_370 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_369.x, x_369.y, x_369.z, x_370.w);
  let x_373 : f32 = u_xlat1.y;
  vs_TEXCOORD3.w = x_373;
  let x_376 : f32 = u_xlat1.z;
  vs_TEXCOORD4.w = x_376;
  let x_378 : vec4<f32> = u_xlat0;
  let x_382 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_384 : vec3<f32> = (vec3<f32>(x_378.y, x_378.y, x_378.y) * vec3<f32>(x_382.x, x_382.y, x_382.z));
  let x_385 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_384.x, x_384.y, x_384.z, x_385.w);
  let x_388 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_390 : vec4<f32> = u_xlat0;
  let x_393 : vec4<f32> = u_xlat1;
  let x_395 : vec3<f32> = ((vec3<f32>(x_388.x, x_388.y, x_388.z) * vec3<f32>(x_390.x, x_390.x, x_390.x)) + vec3<f32>(x_393.x, x_393.y, x_393.z));
  let x_396 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_395.x, x_395.y, x_395.z, x_396.w);
  let x_399 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_401 : vec4<f32> = u_xlat0;
  let x_404 : vec4<f32> = u_xlat1;
  let x_406 : vec3<f32> = ((vec3<f32>(x_399.x, x_399.y, x_399.z) * vec3<f32>(x_401.z, x_401.z, x_401.z)) + vec3<f32>(x_404.x, x_404.y, x_404.z));
  let x_407 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_406.x, x_406.y, x_406.z, x_407.w);
  let x_412 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_414 : vec4<f32> = u_xlat0;
  let x_417 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec3<f32>(x_412.x, x_412.y, x_412.z) * vec3<f32>(x_414.w, x_414.w, x_414.w)) + vec3<f32>(x_417.x, x_417.y, x_417.z));
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
  @location(5)
  vs_TEXCOORD5_1 : vec3<f32>,
  @location(2)
  vs_TEXCOORD2_1 : vec4<f32>,
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
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD5, vs_TEXCOORD2, vs_TEXCOORD4, vs_TEXCOORD3);
}
