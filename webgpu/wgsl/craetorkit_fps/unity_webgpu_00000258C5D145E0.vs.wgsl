struct VGlobals {
  x_WorldSpaceCameraPos : vec3<f32>,
  @size(4)
  padding : u32,
  x_ProjectionParams : vec4<f32>,
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
  var u_xlatb2 : bool;
  var x_103 : vec2<f32>;
  var u_xlat3 : vec3<f32>;
  var u_xlat20 : f32;
  var u_xlat4 : vec3<f32>;
  var u_xlat5 : vec3<f32>;
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
  let x_36 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_37 : vec4<f32> = in_POSITION0;
  let x_40 : vec4<f32> = u_xlat0;
  u_xlat0 = ((x_36 * vec4<f32>(x_37.z, x_37.z, x_37.z, x_37.z)) + x_40);
  let x_43 : vec4<f32> = u_xlat0;
  let x_45 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  u_xlat1 = (x_43 + x_45);
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
  let x_76 : vec4<f32> = x_18.unity_MatrixVP[3i];
  let x_77 : vec4<f32> = u_xlat1;
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat1 = ((x_76 * vec4<f32>(x_77.w, x_77.w, x_77.w, x_77.w)) + x_80);
  let x_88 : vec4<f32> = u_xlat1;
  gl_Position = x_88;
  let x_97 : f32 = x_18.x_UVSec;
  u_xlatb2 = (x_97 == 0.0f);
  let x_100 : bool = u_xlatb2;
  if (x_100) {
    let x_108 : vec2<f32> = in_TEXCOORD0;
    x_103 = x_108;
  } else {
    let x_111 : vec2<f32> = in_TEXCOORD1;
    x_103 = x_111;
  }
  let x_112 : vec2<f32> = x_103;
  let x_113 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_112.x, x_112.y, x_113.z, x_113.w);
  let x_116 : vec4<f32> = u_xlat2;
  let x_120 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_124 : vec4<f32> = x_18.x_DetailAlbedoMap_ST;
  let x_126 : vec2<f32> = ((vec2<f32>(x_116.x, x_116.y) * vec2<f32>(x_120.x, x_120.y)) + vec2<f32>(x_124.z, x_124.w));
  let x_127 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_127.x, x_127.y, x_126.x, x_126.y);
  let x_129 : vec2<f32> = in_TEXCOORD0;
  let x_132 : vec4<f32> = x_18.x_MainTex_ST;
  let x_136 : vec4<f32> = x_18.x_MainTex_ST;
  let x_138 : vec2<f32> = ((x_129 * vec2<f32>(x_132.x, x_132.y)) + vec2<f32>(x_136.z, x_136.w));
  let x_139 : vec4<f32> = vs_TEXCOORD0;
  vs_TEXCOORD0 = vec4<f32>(x_138.x, x_138.y, x_139.z, x_139.w);
  let x_141 : vec4<f32> = in_POSITION0;
  let x_144 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  let x_146 : vec3<f32> = (vec3<f32>(x_141.y, x_141.y, x_141.y) * vec3<f32>(x_144.x, x_144.y, x_144.z));
  let x_147 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_146.x, x_146.y, x_146.z, x_147.w);
  let x_150 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_152 : vec4<f32> = in_POSITION0;
  let x_155 : vec4<f32> = u_xlat2;
  let x_157 : vec3<f32> = ((vec3<f32>(x_150.x, x_150.y, x_150.z) * vec3<f32>(x_152.x, x_152.x, x_152.x)) + vec3<f32>(x_155.x, x_155.y, x_155.z));
  let x_158 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_157.x, x_157.y, x_157.z, x_158.w);
  let x_161 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_163 : vec4<f32> = in_POSITION0;
  let x_166 : vec4<f32> = u_xlat2;
  let x_168 : vec3<f32> = ((vec3<f32>(x_161.x, x_161.y, x_161.z) * vec3<f32>(x_163.z, x_163.z, x_163.z)) + vec3<f32>(x_166.x, x_166.y, x_166.z));
  let x_169 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_168.x, x_168.y, x_168.z, x_169.w);
  let x_172 : vec4<f32> = x_18.unity_ObjectToWorld[3i];
  let x_174 : vec4<f32> = in_POSITION0;
  let x_177 : vec4<f32> = u_xlat2;
  let x_179 : vec3<f32> = ((vec3<f32>(x_172.x, x_172.y, x_172.z) * vec3<f32>(x_174.w, x_174.w, x_174.w)) + vec3<f32>(x_177.x, x_177.y, x_177.z));
  let x_180 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_179.x, x_179.y, x_179.z, x_180.w);
  let x_183 : vec4<f32> = u_xlat2;
  let x_187 : vec3<f32> = x_18.x_WorldSpaceCameraPos;
  let x_189 : vec3<f32> = (vec3<f32>(x_183.x, x_183.y, x_183.z) + -(x_187));
  let x_190 : vec4<f32> = vs_TEXCOORD1;
  vs_TEXCOORD1 = vec4<f32>(x_189.x, x_189.y, x_189.z, x_190.w);
  vs_TEXCOORD1.w = 0.0f;
  let x_198 : vec4<f32> = in_TANGENT0;
  let x_201 : vec4<f32> = x_18.unity_ObjectToWorld[1i];
  u_xlat3 = (vec3<f32>(x_198.y, x_198.y, x_198.y) * vec3<f32>(x_201.x, x_201.y, x_201.z));
  let x_205 : vec4<f32> = x_18.unity_ObjectToWorld[0i];
  let x_207 : vec4<f32> = in_TANGENT0;
  let x_210 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_205.x, x_205.y, x_205.z) * vec3<f32>(x_207.x, x_207.x, x_207.x)) + x_210);
  let x_213 : vec4<f32> = x_18.unity_ObjectToWorld[2i];
  let x_215 : vec4<f32> = in_TANGENT0;
  let x_218 : vec3<f32> = u_xlat3;
  u_xlat3 = ((vec3<f32>(x_213.x, x_213.y, x_213.z) * vec3<f32>(x_215.z, x_215.z, x_215.z)) + x_218);
  let x_222 : vec3<f32> = u_xlat3;
  let x_223 : vec3<f32> = u_xlat3;
  u_xlat20 = dot(x_222, x_223);
  let x_225 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_225);
  let x_227 : f32 = u_xlat20;
  let x_229 : vec3<f32> = u_xlat3;
  u_xlat3 = (vec3<f32>(x_227, x_227, x_227) * x_229);
  let x_232 : vec3<f32> = u_xlat3;
  let x_233 : vec4<f32> = vs_TEXCOORD2;
  vs_TEXCOORD2 = vec4<f32>(x_232.x, x_232.y, x_232.z, x_233.w);
  let x_236 : vec4<f32> = u_xlat2;
  let x_240 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  let x_244 : vec4<f32> = x_18.x_WorldSpaceLightPos0;
  u_xlat4 = ((-(vec3<f32>(x_236.x, x_236.y, x_236.z)) * vec3<f32>(x_240.w, x_240.w, x_240.w)) + vec3<f32>(x_244.x, x_244.y, x_244.z));
  let x_249 : vec4<f32> = u_xlat2;
  vs_TEXCOORD5 = vec3<f32>(x_249.x, x_249.y, x_249.z);
  let x_253 : f32 = u_xlat4.x;
  vs_TEXCOORD2.w = x_253;
  let x_257 : vec3<f32> = in_NORMAL0;
  let x_260 : vec4<f32> = x_18.unity_WorldToObject[0i];
  u_xlat2.x = dot(x_257, vec3<f32>(x_260.x, x_260.y, x_260.z));
  let x_264 : vec3<f32> = in_NORMAL0;
  let x_266 : vec4<f32> = x_18.unity_WorldToObject[1i];
  u_xlat2.y = dot(x_264, vec3<f32>(x_266.x, x_266.y, x_266.z));
  let x_270 : vec3<f32> = in_NORMAL0;
  let x_272 : vec4<f32> = x_18.unity_WorldToObject[2i];
  u_xlat2.z = dot(x_270, vec3<f32>(x_272.x, x_272.y, x_272.z));
  let x_277 : vec4<f32> = u_xlat2;
  let x_279 : vec4<f32> = u_xlat2;
  u_xlat20 = dot(vec3<f32>(x_277.x, x_277.y, x_277.z), vec3<f32>(x_279.x, x_279.y, x_279.z));
  let x_282 : f32 = u_xlat20;
  u_xlat20 = inverseSqrt(x_282);
  let x_284 : f32 = u_xlat20;
  let x_286 : vec4<f32> = u_xlat2;
  let x_288 : vec3<f32> = (vec3<f32>(x_284, x_284, x_284) * vec3<f32>(x_286.x, x_286.y, x_286.z));
  let x_289 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_288.x, x_288.y, x_288.z, x_289.w);
  let x_292 : vec3<f32> = u_xlat3;
  let x_294 : vec4<f32> = u_xlat2;
  u_xlat5 = (vec3<f32>(x_292.y, x_292.z, x_292.x) * vec3<f32>(x_294.z, x_294.x, x_294.y));
  let x_297 : vec4<f32> = u_xlat2;
  let x_299 : vec3<f32> = u_xlat3;
  let x_302 : vec3<f32> = u_xlat5;
  u_xlat3 = ((vec3<f32>(x_297.y, x_297.z, x_297.x) * vec3<f32>(x_299.z, x_299.x, x_299.y)) + -(x_302));
  let x_306 : vec4<f32> = u_xlat2;
  let x_307 : vec3<f32> = vec3<f32>(x_306.x, x_306.y, x_306.z);
  let x_308 : vec4<f32> = vs_TEXCOORD4;
  vs_TEXCOORD4 = vec4<f32>(x_307.x, x_307.y, x_307.z, x_308.w);
  let x_312 : f32 = in_TANGENT0.w;
  let x_315 : f32 = x_18.unity_WorldTransformParams.w;
  u_xlat2.x = (x_312 * x_315);
  let x_319 : vec4<f32> = u_xlat2;
  let x_321 : vec3<f32> = u_xlat3;
  let x_322 : vec3<f32> = (vec3<f32>(x_319.x, x_319.x, x_319.x) * x_321);
  let x_323 : vec4<f32> = vs_TEXCOORD3;
  vs_TEXCOORD3 = vec4<f32>(x_322.x, x_322.y, x_322.z, x_323.w);
  let x_326 : f32 = u_xlat4.y;
  vs_TEXCOORD3.w = x_326;
  let x_329 : f32 = u_xlat4.z;
  vs_TEXCOORD4.w = x_329;
  let x_331 : vec4<f32> = u_xlat0;
  let x_335 : vec4<f32> = x_18.unity_WorldToLight[1i];
  let x_337 : vec2<f32> = (vec2<f32>(x_331.y, x_331.y) * vec2<f32>(x_335.x, x_335.y));
  let x_338 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_337.x, x_337.y, x_338.z, x_338.w);
  let x_341 : vec4<f32> = x_18.unity_WorldToLight[0i];
  let x_343 : vec4<f32> = u_xlat0;
  let x_346 : vec4<f32> = u_xlat2;
  let x_348 : vec2<f32> = ((vec2<f32>(x_341.x, x_341.y) * vec2<f32>(x_343.x, x_343.x)) + vec2<f32>(x_346.x, x_346.y));
  let x_349 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_348.x, x_348.y, x_349.z, x_349.w);
  let x_352 : vec4<f32> = x_18.unity_WorldToLight[2i];
  let x_354 : vec4<f32> = u_xlat0;
  let x_357 : vec4<f32> = u_xlat0;
  let x_359 : vec2<f32> = ((vec2<f32>(x_352.x, x_352.y) * vec2<f32>(x_354.z, x_354.z)) + vec2<f32>(x_357.x, x_357.y));
  let x_360 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_359.x, x_359.y, x_360.z, x_360.w);
  let x_365 : vec4<f32> = x_18.unity_WorldToLight[3i];
  let x_367 : vec4<f32> = u_xlat0;
  let x_370 : vec4<f32> = u_xlat0;
  vs_TEXCOORD6 = ((vec2<f32>(x_365.x, x_365.y) * vec2<f32>(x_367.w, x_367.w)) + vec2<f32>(x_370.x, x_370.y));
  let x_374 : f32 = u_xlat1.y;
  let x_376 : f32 = x_18.x_ProjectionParams.x;
  u_xlat0.x = (x_374 * x_376);
  let x_380 : f32 = u_xlat0.x;
  u_xlat0.w = (x_380 * 0.5f);
  let x_384 : vec4<f32> = u_xlat1;
  let x_387 : vec2<f32> = (vec2<f32>(x_384.x, x_384.w) * vec2<f32>(0.5f, 0.5f));
  let x_388 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_387.x, x_388.y, x_387.y, x_388.w);
  let x_391 : vec4<f32> = u_xlat1;
  let x_392 : vec2<f32> = vec2<f32>(x_391.z, x_391.w);
  let x_393 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_393.x, x_393.y, x_392.x, x_392.y);
  let x_395 : vec4<f32> = u_xlat0;
  let x_397 : vec4<f32> = u_xlat0;
  let x_399 : vec2<f32> = (vec2<f32>(x_395.z, x_395.z) + vec2<f32>(x_397.x, x_397.w));
  let x_400 : vec4<f32> = vs_TEXCOORD7;
  vs_TEXCOORD7 = vec4<f32>(x_399.x, x_399.y, x_400.z, x_400.w);
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
  @location(6)
  vs_TEXCOORD7_1 : vec4<f32>,
}

@vertex
fn main(@location(0) in_POSITION0_param : vec4<f32>, @location(2) in_TEXCOORD0_param : vec2<f32>, @location(3) in_TEXCOORD1_param : vec2<f32>, @location(4) in_TANGENT0_param : vec4<f32>, @location(1) in_NORMAL0_param : vec3<f32>) -> main_out {
  in_POSITION0 = in_POSITION0_param;
  in_TEXCOORD0 = in_TEXCOORD0_param;
  in_TEXCOORD1 = in_TEXCOORD1_param;
  in_TANGENT0 = in_TANGENT0_param;
  in_NORMAL0 = in_NORMAL0_param;
  main_1();
  return main_out(gl_Position, vs_TEXCOORD0, vs_TEXCOORD1, vs_TEXCOORD2, vs_TEXCOORD5, vs_TEXCOORD4, vs_TEXCOORD3, vs_TEXCOORD7);
}

