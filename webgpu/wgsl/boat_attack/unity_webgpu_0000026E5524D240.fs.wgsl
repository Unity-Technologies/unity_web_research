diagnostic(off, derivative_uniformity);

struct PGlobals {
  /* @offset(0) */
  x_GlobalMipBias : vec2<f32>,
  /* @offset(16) */
  x_Dithering_Params : vec4<f32>,
}

var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_BlitTexture : texture_2d<f32>;

@group(0) @binding(2) var sampler_LinearClamp : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

@group(1) @binding(0) var<uniform> x_27 : PGlobals;

var<private> u_xlat1 : vec3<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlatb0 : vec3<bool>;

var<private> u_xlat9 : f32;

@group(0) @binding(1) var x_BlueNoise_Texture : texture_2d<f32>;

@group(0) @binding(3) var sampler_PointRepeat : sampler;

var<private> u_xlatb9 : bool;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var x_75 : f32;
  var x_89 : f32;
  var x_102 : f32;
  var x_130 : f32;
  var x_142 : f32;
  var x_154 : f32;
  var x_257 : f32;
  var x_270 : f32;
  var x_282 : f32;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_34 : f32 = x_27.x_GlobalMipBias.x;
  let x_35 : vec4<f32> = textureSampleBias(x_BlitTexture, sampler_LinearClamp, x_23, x_34);
  u_xlat0 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_38 : vec3<f32> = u_xlat0;
  u_xlat1 = log2(abs(x_38));
  let x_41 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_41 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_45 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_45);
  let x_47 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_47 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_55 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_55 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_66 : vec3<f32> = u_xlat0;
  let x_69 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_66.x, x_66.y, x_66.z, x_66.x));
  u_xlatb0 = vec3<bool>(x_69.x, x_69.y, x_69.z);
  let x_73 : bool = u_xlatb0.x;
  if (x_73) {
    let x_80 : f32 = u_xlat2.x;
    x_75 = x_80;
  } else {
    let x_83 : f32 = u_xlat1.x;
    x_75 = x_83;
  }
  let x_84 : f32 = x_75;
  u_xlat0.x = x_84;
  let x_88 : bool = u_xlatb0.y;
  if (x_88) {
    let x_93 : f32 = u_xlat2.y;
    x_89 = x_93;
  } else {
    let x_96 : f32 = u_xlat1.y;
    x_89 = x_96;
  }
  let x_97 : f32 = x_89;
  u_xlat0.y = x_97;
  let x_101 : bool = u_xlatb0.z;
  if (x_101) {
    let x_106 : f32 = u_xlat2.z;
    x_102 = x_106;
  } else {
    let x_109 : f32 = u_xlat1.z;
    x_102 = x_109;
  }
  let x_110 : f32 = x_102;
  u_xlat0.z = x_110;
  let x_112 : vec3<f32> = u_xlat0;
  u_xlat1 = log2(abs(x_112));
  let x_115 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_115 * vec3<f32>(0.4166666567325592041f, 0.4166666567325592041f, 0.4166666567325592041f));
  let x_117 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_117);
  let x_119 : vec3<f32> = u_xlat1;
  u_xlat1 = ((x_119 * vec3<f32>(1.05499994754791259766f, 1.05499994754791259766f, 1.05499994754791259766f)) + vec3<f32>(-0.05499999970197677612f, -0.05499999970197677612f, -0.05499999970197677612f));
  let x_122 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_122 * vec3<f32>(12.9200000762939453125f, 12.9200000762939453125f, 12.9200000762939453125f));
  let x_124 : vec3<f32> = u_xlat0;
  let x_126 : vec4<bool> = (vec4<f32>(0.00313080009073019028f, 0.00313080009073019028f, 0.00313080009073019028f, 0.0f) >= vec4<f32>(x_124.x, x_124.y, x_124.z, x_124.x));
  u_xlatb0 = vec3<bool>(x_126.x, x_126.y, x_126.z);
  let x_129 : bool = u_xlatb0.x;
  if (x_129) {
    let x_134 : f32 = u_xlat2.x;
    x_130 = x_134;
  } else {
    let x_137 : f32 = u_xlat1.x;
    x_130 = x_137;
  }
  let x_138 : f32 = x_130;
  u_xlat0.x = x_138;
  let x_141 : bool = u_xlatb0.y;
  if (x_141) {
    let x_146 : f32 = u_xlat2.y;
    x_142 = x_146;
  } else {
    let x_149 : f32 = u_xlat1.y;
    x_142 = x_149;
  }
  let x_150 : f32 = x_142;
  u_xlat0.y = x_150;
  let x_153 : bool = u_xlatb0.z;
  if (x_153) {
    let x_158 : f32 = u_xlat2.z;
    x_154 = x_158;
  } else {
    let x_161 : f32 = u_xlat1.z;
    x_154 = x_161;
  }
  let x_162 : f32 = x_154;
  u_xlat0.z = x_162;
  let x_164 : vec2<f32> = vs_TEXCOORD0;
  let x_168 : vec4<f32> = x_27.x_Dithering_Params;
  let x_172 : vec4<f32> = x_27.x_Dithering_Params;
  let x_174 : vec2<f32> = ((x_164 * vec2<f32>(x_168.x, x_168.y)) + vec2<f32>(x_172.z, x_172.w));
  let x_175 : vec3<f32> = u_xlat1;
  u_xlat1 = vec3<f32>(x_174.x, x_174.y, x_175.z);
  let x_183 : vec3<f32> = u_xlat1;
  let x_186 : f32 = x_27.x_GlobalMipBias.x;
  let x_187 : vec4<f32> = textureSampleBias(x_BlueNoise_Texture, sampler_PointRepeat, vec2<f32>(x_183.x, x_183.y), x_186);
  u_xlat9 = x_187.w;
  let x_190 : f32 = u_xlat9;
  u_xlat9 = ((x_190 * 2.0f) + -1.0f);
  let x_195 : f32 = u_xlat9;
  u_xlat1.x = (-(abs(x_195)) + 1.0f);
  let x_202 : f32 = u_xlat9;
  u_xlatb9 = (x_202 >= 0.0f);
  let x_204 : bool = u_xlatb9;
  u_xlat9 = select(-1.0f, 1.0f, x_204);
  let x_207 : f32 = u_xlat1.x;
  u_xlat1.x = sqrt(x_207);
  let x_211 : f32 = u_xlat1.x;
  u_xlat1.x = (-(x_211) + 1.0f);
  let x_215 : f32 = u_xlat9;
  let x_217 : f32 = u_xlat1.x;
  u_xlat9 = (x_215 * x_217);
  let x_219 : f32 = u_xlat9;
  let x_224 : vec3<f32> = u_xlat0;
  u_xlat0 = ((vec3<f32>(x_219, x_219, x_219) * vec3<f32>(0.0039215688593685627f, 0.0039215688593685627f, 0.0039215688593685627f)) + x_224);
  let x_226 : vec3<f32> = u_xlat0;
  u_xlat1 = (x_226 + vec3<f32>(0.05499999970197677612f, 0.05499999970197677612f, 0.05499999970197677612f));
  let x_230 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_230 * vec3<f32>(0.94786733388900756836f, 0.94786733388900756836f, 0.94786733388900756836f));
  let x_234 : vec3<f32> = u_xlat1;
  u_xlat1 = log2(abs(x_234));
  let x_237 : vec3<f32> = u_xlat1;
  u_xlat1 = (x_237 * vec3<f32>(2.40000009536743164062f, 2.40000009536743164062f, 2.40000009536743164062f));
  let x_241 : vec3<f32> = u_xlat1;
  u_xlat1 = exp2(x_241);
  let x_243 : vec3<f32> = u_xlat0;
  u_xlat2 = (x_243 * vec3<f32>(0.07739938050508499146f, 0.07739938050508499146f, 0.07739938050508499146f));
  let x_249 : vec3<f32> = u_xlat0;
  let x_251 : vec4<bool> = (vec4<f32>(0.04044999927282333374f, 0.04044999927282333374f, 0.04044999927282333374f, 0.0f) >= vec4<f32>(x_249.x, x_249.y, x_249.z, x_249.x));
  u_xlatb0 = vec3<bool>(x_251.x, x_251.y, x_251.z);
  let x_256 : bool = u_xlatb0.x;
  if (x_256) {
    let x_261 : f32 = u_xlat2.x;
    x_257 = x_261;
  } else {
    let x_264 : f32 = u_xlat1.x;
    x_257 = x_264;
  }
  let x_265 : f32 = x_257;
  SV_Target0.x = x_265;
  let x_269 : bool = u_xlatb0.y;
  if (x_269) {
    let x_274 : f32 = u_xlat2.y;
    x_270 = x_274;
  } else {
    let x_277 : f32 = u_xlat1.y;
    x_270 = x_277;
  }
  let x_278 : f32 = x_270;
  SV_Target0.y = x_278;
  let x_281 : bool = u_xlatb0.z;
  if (x_281) {
    let x_286 : f32 = u_xlat2.z;
    x_282 = x_286;
  } else {
    let x_289 : f32 = u_xlat1.z;
    x_282 = x_289;
  }
  let x_290 : f32 = x_282;
  SV_Target0.z = x_290;
  SV_Target0.w = 1.0f;
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}


