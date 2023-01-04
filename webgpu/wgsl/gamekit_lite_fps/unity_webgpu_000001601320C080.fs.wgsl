struct PGlobals {
  x_Lut2D_Params : vec3<f32>,
  x_PostExposure : f32,
  x_Grain_Params1 : vec2<f32>,
  @size(8)
  padding : u32,
  x_Grain_Params2 : vec4<f32>,
  x_LumaInAlpha : f32,
}

var<private> u_xlat0 : vec4<f32>;

@group(0) @binding(2) var x_AutoExposureTex : texture_2d<f32>;

@group(0) @binding(6) var sampler_AutoExposureTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec4<f32>;

@group(0) @binding(1) var x_MainTex : texture_2d<f32>;

@group(0) @binding(5) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD1 : vec2<f32>;

var<private> u_xlat2 : vec3<f32>;

@group(0) @binding(0) var<uniform> x_52 : PGlobals;

@group(0) @binding(4) var x_GrainTex : texture_2d<f32>;

@group(0) @binding(8) var sampler_GrainTex : sampler;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat15 : f32;

var<private> u_xlat6 : vec3<f32>;

@group(0) @binding(3) var x_Lut2D : texture_2d<f32>;

@group(0) @binding(7) var sampler_Lut2D : sampler;

var<private> u_xlat4 : vec2<f32>;

var<private> u_xlat11 : vec2<f32>;

var<private> u_xlatb1 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_24 : vec4<f32> = textureSample(x_AutoExposureTex, sampler_AutoExposureTex, x_23);
  u_xlat0.x = x_24.x;
  let x_37 : vec2<f32> = vs_TEXCOORD1;
  let x_38 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_37);
  u_xlat1 = x_38;
  let x_40 : vec4<f32> = u_xlat0;
  let x_42 : vec4<f32> = u_xlat1;
  let x_44 : vec3<f32> = (vec3<f32>(x_40.x, x_40.x, x_40.x) * vec3<f32>(x_42.x, x_42.y, x_42.z));
  let x_45 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_44.x, x_44.y, x_44.z, x_45.w);
  let x_49 : vec2<f32> = vs_TEXCOORD1;
  let x_57 : vec4<f32> = x_52.x_Grain_Params2;
  let x_61 : vec4<f32> = x_52.x_Grain_Params2;
  let x_63 : vec2<f32> = ((x_49 * vec2<f32>(x_57.x, x_57.y)) + vec2<f32>(x_61.z, x_61.w));
  let x_64 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_63.x, x_63.y, x_64.z);
  let x_71 : vec3<f32> = u_xlat2;
  let x_73 : vec4<f32> = textureSample(x_GrainTex, sampler_GrainTex, vec2<f32>(x_71.x, x_71.y));
  u_xlat2 = vec3<f32>(x_73.x, x_73.y, x_73.z);
  let x_76 : vec4<f32> = u_xlat0;
  u_xlat3 = vec3<f32>(x_76.x, x_76.y, x_76.z);
  let x_78 : vec3<f32> = u_xlat3;
  u_xlat3 = clamp(x_78, vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_85 : vec3<f32> = u_xlat3;
  u_xlat15 = dot(x_85, vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  let x_91 : f32 = u_xlat15;
  u_xlat15 = sqrt(x_91);
  let x_96 : f32 = x_52.x_Grain_Params1.x;
  let x_97 : f32 = u_xlat15;
  u_xlat15 = ((x_96 * -(x_97)) + 1.0f);
  let x_101 : vec4<f32> = u_xlat0;
  let x_103 : vec3<f32> = u_xlat2;
  u_xlat2 = (vec3<f32>(x_101.x, x_101.y, x_101.z) * x_103);
  let x_105 : vec3<f32> = u_xlat2;
  let x_108 : f32 = x_52.x_Grain_Params1.y;
  let x_110 : f32 = x_52.x_Grain_Params1.y;
  let x_112 : f32 = x_52.x_Grain_Params1.y;
  u_xlat2 = (x_105 * vec3<f32>(x_108, x_110, x_112));
  let x_115 : vec3<f32> = u_xlat2;
  let x_116 : f32 = u_xlat15;
  let x_119 : vec4<f32> = u_xlat0;
  let x_121 : vec3<f32> = ((x_115 * vec3<f32>(x_116, x_116, x_116)) + vec3<f32>(x_119.x, x_119.y, x_119.z));
  let x_122 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_121.x, x_121.y, x_121.z, x_122.w);
  let x_124 : vec4<f32> = u_xlat1;
  let x_127 : f32 = x_52.x_PostExposure;
  let x_129 : f32 = x_52.x_PostExposure;
  let x_131 : f32 = x_52.x_PostExposure;
  let x_133 : f32 = x_52.x_PostExposure;
  let x_134 : vec4<f32> = vec4<f32>(x_127, x_129, x_131, x_133);
  u_xlat0 = (x_124 * vec4<f32>(x_134.x, x_134.y, x_134.z, x_134.w));
  let x_141 : vec4<f32> = u_xlat0;
  let x_148 : vec3<f32> = ((vec3<f32>(x_141.z, x_141.x, x_141.y) * vec3<f32>(5.55555582f, 5.55555582f, 5.55555582f)) + vec3<f32>(0.047995999f, 0.047995999f, 0.047995999f));
  let x_149 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_148.x, x_148.y, x_148.z, x_149.w);
  let x_151 : vec4<f32> = u_xlat1;
  let x_153 : vec3<f32> = log2(vec3<f32>(x_151.x, x_151.y, x_151.z));
  let x_154 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_153.x, x_153.y, x_153.z, x_154.w);
  let x_156 : vec4<f32> = u_xlat1;
  let x_163 : vec3<f32> = ((vec3<f32>(x_156.x, x_156.y, x_156.z) * vec3<f32>(0.073499784f, 0.073499784f, 0.073499784f)) + vec3<f32>(0.386036009f, 0.386036009f, 0.386036009f));
  let x_164 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_163.x, x_163.y, x_163.z, x_164.w);
  let x_166 : vec4<f32> = u_xlat1;
  let x_170 : vec3<f32> = clamp(vec3<f32>(x_166.x, x_166.y, x_166.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
  let x_171 : vec4<f32> = u_xlat1;
  u_xlat1 = vec4<f32>(x_170.x, x_170.y, x_170.z, x_171.w);
  let x_174 : vec4<f32> = u_xlat1;
  let x_179 : vec3<f32> = x_52.x_Lut2D_Params;
  u_xlat6 = (vec3<f32>(x_174.x, x_174.y, x_174.z) * vec3<f32>(x_179.z, x_179.z, x_179.z));
  let x_183 : f32 = u_xlat6.x;
  u_xlat6.x = floor(x_183);
  let x_187 : vec3<f32> = x_52.x_Lut2D_Params;
  let x_191 : vec2<f32> = (vec2<f32>(x_187.x, x_187.y) * vec2<f32>(0.5f, 0.5f));
  let x_192 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_191.x, x_191.y, x_192.z);
  let x_194 : vec3<f32> = u_xlat6;
  let x_197 : vec3<f32> = x_52.x_Lut2D_Params;
  let x_200 : vec3<f32> = u_xlat2;
  let x_202 : vec2<f32> = ((vec2<f32>(x_194.y, x_194.z) * vec2<f32>(x_197.x, x_197.y)) + vec2<f32>(x_200.x, x_200.y));
  let x_203 : vec3<f32> = u_xlat2;
  u_xlat2 = vec3<f32>(x_203.x, x_202.x, x_202.y);
  let x_206 : f32 = u_xlat6.x;
  let x_208 : f32 = x_52.x_Lut2D_Params.y;
  let x_211 : f32 = u_xlat2.y;
  u_xlat2.x = ((x_206 * x_208) + x_211);
  let x_219 : vec3<f32> = u_xlat2;
  let x_221 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, vec2<f32>(x_219.x, x_219.z));
  u_xlat3 = vec3<f32>(x_221.x, x_221.y, x_221.z);
  let x_226 : f32 = x_52.x_Lut2D_Params.y;
  u_xlat4.x = x_226;
  u_xlat4.y = 0.0f;
  let x_230 : vec3<f32> = u_xlat2;
  let x_232 : vec2<f32> = u_xlat4;
  u_xlat11 = (vec2<f32>(x_230.x, x_230.z) + x_232);
  let x_237 : vec2<f32> = u_xlat11;
  let x_238 : vec4<f32> = textureSample(x_Lut2D, sampler_Lut2D, x_237);
  u_xlat2 = vec3<f32>(x_238.x, x_238.y, x_238.z);
  let x_241 : f32 = u_xlat1.x;
  let x_244 : f32 = x_52.x_Lut2D_Params.z;
  let x_247 : f32 = u_xlat6.x;
  u_xlat1.x = ((x_241 * x_244) + -(x_247));
  let x_251 : vec3<f32> = u_xlat3;
  let x_253 : vec3<f32> = u_xlat2;
  u_xlat6 = (-(x_251) + x_253);
  let x_255 : vec4<f32> = u_xlat1;
  let x_257 : vec3<f32> = u_xlat6;
  let x_259 : vec3<f32> = u_xlat3;
  let x_260 : vec3<f32> = ((vec3<f32>(x_255.x, x_255.x, x_255.x) * x_257) + x_259);
  let x_261 : vec4<f32> = u_xlat0;
  u_xlat0 = vec4<f32>(x_260.x, x_260.y, x_260.z, x_261.w);
  let x_268 : f32 = x_52.x_LumaInAlpha;
  u_xlatb1 = (0.5f < x_268);
  let x_270 : bool = u_xlatb1;
  if (x_270) {
    let x_273 : vec4<f32> = u_xlat0;
    let x_274 : vec3<f32> = vec3<f32>(x_273.x, x_273.y, x_273.z);
    let x_275 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_274.x, x_274.y, x_274.z, x_275.w);
    let x_277 : vec4<f32> = u_xlat1;
    let x_281 : vec3<f32> = clamp(vec3<f32>(x_277.x, x_277.y, x_277.z), vec3<f32>(0.0f, 0.0f, 0.0f), vec3<f32>(1.0f, 1.0f, 1.0f));
    let x_282 : vec4<f32> = u_xlat1;
    u_xlat1 = vec4<f32>(x_281.x, x_281.y, x_281.z, x_282.w);
    let x_284 : vec4<f32> = u_xlat1;
    u_xlat0.w = dot(vec3<f32>(x_284.x, x_284.y, x_284.z), vec3<f32>(0.212672904f, 0.715152204f, 0.072175004f));
  }
  let x_291 : vec4<f32> = u_xlat0;
  SV_Target0 = x_291;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

