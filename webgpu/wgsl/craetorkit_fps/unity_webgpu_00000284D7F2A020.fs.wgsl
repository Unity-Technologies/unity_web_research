struct PGlobals {
  unity_FogColor : vec4<f32>,
  x_Color : vec4<f32>,
  x_EmissionColor : vec3<f32>,
  x_DstBlend : i32,
}

var<private> vs_COLOR0 : vec4<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(2) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_192 : PGlobals;

var<private> SV_Target0 : vec4<f32>;

@group(0) @binding(1) var x_EmissionMap : texture_2d<f32>;

@group(0) @binding(3) var sampler_EmissionMap : sampler;

var<private> vs_TEXCOORD0 : f32;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlatb0 : bool;
  var u_xlat0 : vec4<f32>;
  var u_xlat1 : vec4<f32>;
  var u_xlat2 : vec4<f32>;
  var u_xlatb1 : bool;
  var u_xlat4 : f32;
  var u_xlat3 : vec3<f32>;
  var u_xlatb9 : bool;
  var u_xlat9 : f32;
  var u_xlatb4 : bool;
  var x_325 : vec3<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_17 : f32 = vs_COLOR0.y;
  let x_20 : f32 = vs_COLOR0.z;
  u_xlatb0 = (x_17 >= x_20);
  let x_24 : bool = u_xlatb0;
  u_xlat0.x = select(0.0f, 1.0f, x_24);
  let x_33 : vec4<f32> = vs_COLOR0;
  let x_34 : vec2<f32> = vec2<f32>(x_33.y, x_33.z);
  let x_35 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_34.x, x_34.y, x_35.z, x_35.w);
  u_xlat1.z = 0.0f;
  u_xlat1.w = -0.333333343f;
  let x_42 : vec4<f32> = vs_COLOR0;
  let x_43 : vec2<f32> = vec2<f32>(x_42.z, x_42.y);
  let x_44 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_43.x, x_43.y, x_44.z, x_44.w);
  u_xlat2.z = -1.0f;
  u_xlat2.w = 0.666666687f;
  let x_50 : vec4<f32> = u_xlat1;
  let x_51 : vec4<f32> = u_xlat2;
  u_xlat1 = (x_50 + -(x_51));
  let x_54 : vec4<f32> = u_xlat0;
  let x_56 : vec4<f32> = u_xlat1;
  let x_59 : vec4<f32> = u_xlat2;
  u_xlat0 = ((vec4<f32>(x_54.x, x_54.x, x_54.x, x_54.x) * vec4<f32>(x_56.x, x_56.y, x_56.w, x_56.z)) + vec4<f32>(x_59.x, x_59.y, x_59.w, x_59.z));
  let x_64 : f32 = vs_COLOR0.x;
  let x_66 : f32 = u_xlat0.x;
  u_xlatb1 = (x_64 >= x_66);
  let x_68 : bool = u_xlatb1;
  u_xlat1.x = select(0.0f, 1.0f, x_68);
  let x_72 : f32 = u_xlat0.w;
  u_xlat2.z = x_72;
  let x_75 : f32 = vs_COLOR0.x;
  u_xlat0.w = x_75;
  let x_78 : vec4<f32> = u_xlat0;
  let x_79 : vec3<f32> = vec3<f32>(x_78.w, x_78.y, x_78.x);
  let x_80 : vec4<f32> = u_xlat2;
  u_xlat2 = vec4<f32>(x_79.x, x_79.y, x_80.z, x_79.z);
  let x_82 : vec4<f32> = u_xlat0;
  let x_84 : vec4<f32> = u_xlat2;
  u_xlat2 = (-(x_82) + x_84);
  let x_86 : vec4<f32> = u_xlat1;
  let x_88 : vec4<f32> = u_xlat2;
  let x_90 : vec4<f32> = u_xlat0;
  u_xlat0 = ((vec4<f32>(x_86.x, x_86.x, x_86.x, x_86.x) * x_88) + x_90);
  let x_93 : f32 = u_xlat0.y;
  let x_95 : f32 = u_xlat0.w;
  u_xlat1.x = min(x_93, x_95);
  let x_99 : f32 = u_xlat0.x;
  let x_101 : f32 = u_xlat1.x;
  u_xlat1.x = (x_99 + -(x_101));
  let x_107 : f32 = u_xlat1.x;
  u_xlat4 = ((x_107 * 6.0f) + 0.0001f);
  let x_115 : f32 = u_xlat0.y;
  let x_118 : f32 = u_xlat0.w;
  u_xlat3.x = (-(x_115) + x_118);
  let x_122 : f32 = u_xlat3.x;
  let x_123 : f32 = u_xlat4;
  u_xlat3.x = (x_122 / x_123);
  let x_127 : f32 = u_xlat3.x;
  let x_129 : f32 = u_xlat0.z;
  u_xlat3.x = (x_127 + x_129);
  let x_133 : f32 = u_xlat0.x;
  u_xlat0.x = (x_133 + 0.0001f);
  let x_137 : f32 = u_xlat1.x;
  let x_139 : f32 = u_xlat0.x;
  u_xlat0.x = (x_137 / x_139);
  let x_142 : vec3<f32> = u_xlat3;
  u_xlat3 = (abs(vec3<f32>(x_142.x, x_142.x, x_142.x)) + vec3<f32>(1.0f, 0.666666687f, 0.333333343f));
  let x_148 : vec3<f32> = u_xlat3;
  u_xlat3 = fract(x_148);
  let x_150 : vec3<f32> = u_xlat3;
  u_xlat3 = ((x_150 * vec3<f32>(6.0f, 6.0f, 6.0f)) + vec3<f32>(-3.0f, -3.0f, -3.0f));
  let x_156 : vec3<f32> = u_xlat3;
  u_xlat3 = (abs(x_156) + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_160 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_160, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_164 : vec3<f32> = u_xlat3;
  u_xlat3 = (x_164 + vec3<f32>(-1.0f, -1.0f, -1.0f));
  let x_166 : vec4<f32> = u_xlat0;
  let x_168 : vec3<f32> = u_xlat3;
  let x_171 : vec3<f32> = ((vec3<f32>(x_166.x, x_166.x, x_166.x) * x_168) + vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_172 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_171.x, x_171.y, x_171.z, x_172.w);
  let x_186 : vec2<f32> = vs_TEXCOORD1;
  let x_187 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_186);
  u_xlat1 = x_187;
  let x_188 : vec4<f32> = u_xlat1;
  let x_196 : vec4<f32> = x_192.x_Color;
  u_xlat2 = (x_188 * x_196);
  let x_200 : f32 = u_xlat2.y;
  let x_202 : f32 = u_xlat2.z;
  u_xlatb9 = (x_200 >= x_202);
  let x_205 : bool = u_xlatb9;
  u_xlat9 = select(0.0f, 1.0f, x_205);
  let x_208 : f32 = u_xlat1.y;
  let x_211 : f32 = x_192.x_Color.y;
  let x_214 : f32 = u_xlat2.z;
  u_xlat4 = ((x_208 * x_211) + -(x_214));
  let x_217 : f32 = u_xlat9;
  let x_218 : f32 = u_xlat4;
  let x_221 : f32 = u_xlat2.z;
  u_xlat9 = ((x_217 * x_218) + x_221);
  let x_225 : f32 = u_xlat2.x;
  let x_226 : f32 = u_xlat9;
  u_xlatb4 = (x_225 >= x_226);
  let x_231 : f32 = u_xlat2.w;
  let x_233 : f32 = vs_COLOR0.w;
  SV_Target0.w = (x_231 * x_233);
  let x_237 : bool = u_xlatb4;
  u_xlat4 = select(0.0f, 1.0f, x_237);
  let x_240 : f32 = u_xlat1.x;
  let x_242 : f32 = x_192.x_Color.x;
  let x_244 : f32 = u_xlat9;
  u_xlat1.x = ((x_240 * x_242) + -(x_244));
  let x_248 : f32 = u_xlat4;
  let x_250 : f32 = u_xlat1.x;
  let x_252 : f32 = u_xlat9;
  u_xlat9 = ((x_248 * x_250) + x_252);
  let x_259 : vec2<f32> = vs_TEXCOORD1;
  let x_260 : vec4<f32> = textureSample(x_EmissionMap, sampler_EmissionMap, x_259);
  let x_261 : vec3<f32> = vec3<f32>(x_260.x, x_260.y, x_260.z);
  let x_262 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_261.x, x_261.y, x_261.z, x_262.w);
  let x_264 : vec4<f32> = u_xlat1;
  let x_268 : f32 = x_192.x_EmissionColor.x;
  let x_270 : f32 = x_192.x_EmissionColor.y;
  let x_272 : f32 = x_192.x_EmissionColor.z;
  let x_274 : vec3<f32> = (vec3<f32>(x_264.x, x_264.y, x_264.z) * vec3<f32>(x_268, x_270, x_272));
  let x_275 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
  let x_277 : f32 = u_xlat9;
  let x_279 : vec4<f32> = u_xlat0;
  let x_282 : vec4<f32> = u_xlat1;
  let x_284 : vec3<f32> = ((vec3<f32>(x_277, x_277, x_277) * vec3<f32>(x_279.x, x_279.y, x_279.z)) + vec3<f32>(x_282.x, x_282.y, x_282.z));
  let x_285 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_284.x, x_284.y, x_284.z, x_285.w);
  let x_287 : vec4<f32> = u_xlat0;
  let x_291 : vec4<f32> = x_192.unity_FogColor;
  let x_294 : vec3<f32> = (vec3<f32>(x_287.x, x_287.y, x_287.z) + -(vec3<f32>(x_291.x, x_291.y, x_291.z)));
  let x_295 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_294.x, x_294.y, x_294.z, x_295.w);
  let x_298 : f32 = vs_TEXCOORD0;
  u_xlat9 = x_298;
  let x_299 : f32 = u_xlat9;
  u_xlat9 = clamp(x_299, 0.0f, 1.0f);
  let x_301 : f32 = u_xlat9;
  let x_303 : vec4<f32> = u_xlat1;
  let x_307 : vec4<f32> = x_192.unity_FogColor;
  let x_309 : vec3<f32> = ((vec3<f32>(x_301, x_301, x_301) * vec3<f32>(x_303.x, x_303.y, x_303.z)) + vec3<f32>(x_307.x, x_307.y, x_307.z));
  let x_310 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_309.x, x_309.y, x_309.z, x_310.w);
  let x_312 : vec4<f32> = u_xlat0;
  let x_314 : f32 = u_xlat9;
  let x_316 : vec3<f32> = (vec3<f32>(x_312.x, x_312.y, x_312.z) * vec3<f32>(x_314, x_314, x_314));
  let x_317 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_316.x, x_316.y, x_316.z, x_317.w);
  let x_322 : i32 = x_192.x_DstBlend;
  u_xlatb9 = (x_322 == 1i);
  let x_324 : bool = u_xlatb9;
  if (x_324) {
    let x_328 : vec4<f32> = u_xlat0;
    x_325 = vec3<f32>(x_328.x, x_328.y, x_328.z);
  } else {
    let x_331 : vec4<f32> = u_xlat1;
    x_325 = vec3<f32>(x_331.x, x_331.y, x_331.z);
  }
  let x_333 : vec3<f32> = x_325;
  let x_334 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_333.x, x_333.y, x_333.z, x_334.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_COLOR0_param : vec4<f32>, @location(2) vs_TEXCOORD1_param : vec2<f32>, @location(1) vs_TEXCOORD0_param : f32, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_COLOR0 = vs_COLOR0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

