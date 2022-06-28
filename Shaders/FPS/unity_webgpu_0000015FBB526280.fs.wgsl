var<private> u_xlat0 : vec3<f32>;

@group(0) @binding(0) var x_MainTex : texture_2d<f32>;

@group(0) @binding(1) var sampler_MainTex : sampler;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> u_xlat1 : vec3<f32>;

var<private> vs_TEXCOORD1 : vec4<f32>;

var<private> u_xlat2 : vec3<f32>;

var<private> u_xlat18 : f32;

var<private> u_xlat3 : vec3<f32>;

var<private> u_xlat4 : vec3<f32>;

var<private> u_xlatb14 : vec2<bool>;

var<private> u_xlat14 : vec2<f32>;

var<private> u_xlatb18 : bool;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> u_xlat5 : vec3<f32>;

var<private> vs_TEXCOORD3 : vec4<f32>;

var<private> u_xlat12 : f32;

var<private> u_xlat6 : vec2<f32>;

var<private> u_xlatb0 : vec2<bool>;

var<private> SV_Target0 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_23 : vec2<f32> = vs_TEXCOORD0;
  let x_25 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, x_23);
  u_xlat0 = vec3<f32>(x_25.x, x_25.y, x_25.z);
  let x_33 : vec4<f32> = vs_TEXCOORD1;
  let x_35 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_33.x, x_33.y));
  u_xlat1 = vec3<f32>(x_35.x, x_35.y, x_35.z);
  let x_38 : vec3<f32> = u_xlat0;
  let x_39 : vec3<f32> = u_xlat1;
  u_xlat2 = (x_38 + -(x_39));
  let x_47 : f32 = u_xlat2.y;
  let x_51 : f32 = u_xlat2.x;
  u_xlat18 = max(abs(x_47), abs(x_51));
  let x_56 : f32 = u_xlat2.z;
  let x_58 : f32 = u_xlat18;
  u_xlat2.x = max(abs(x_56), x_58);
  let x_65 : vec4<f32> = vs_TEXCOORD1;
  let x_67 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_65.z, x_65.w));
  u_xlat3 = vec3<f32>(x_67.x, x_67.y, x_67.z);
  let x_70 : vec3<f32> = u_xlat0;
  let x_71 : vec3<f32> = u_xlat3;
  u_xlat4 = (x_70 + -(x_71));
  let x_75 : f32 = u_xlat4.y;
  let x_78 : f32 = u_xlat4.x;
  u_xlat18 = max(abs(x_75), abs(x_78));
  let x_82 : f32 = u_xlat4.z;
  let x_84 : f32 = u_xlat18;
  u_xlat2.y = max(abs(x_82), x_84);
  let x_91 : vec3<f32> = u_xlat2;
  let x_96 : vec4<bool> = (vec4<f32>(x_91.x, x_91.y, x_91.x, x_91.y) >= vec4<f32>(0.150000006f, 0.150000006f, 0.150000006f, 0.150000006f));
  u_xlatb14 = vec2<bool>(x_96.x, x_96.y);
  let x_102 : bool = u_xlatb14.x;
  u_xlat14.x = select(0.0f, 1.0f, x_102);
  let x_108 : bool = u_xlatb14.y;
  u_xlat14.y = select(0.0f, 1.0f, x_108);
  let x_111 : vec2<f32> = u_xlat14;
  u_xlat18 = dot(x_111, vec2<f32>(1.0f, 1.0f));
  let x_115 : f32 = u_xlat18;
  u_xlatb18 = (x_115 == 0.0f);
  let x_117 : bool = u_xlatb18;
  if (((select(0i, 1i, x_117) * -1i) != 0i)) {
    discard;
  }
  let x_132 : vec4<f32> = vs_TEXCOORD2;
  let x_134 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_132.x, x_132.y));
  u_xlat4 = vec3<f32>(x_134.x, x_134.y, x_134.z);
  let x_136 : vec3<f32> = u_xlat0;
  let x_137 : vec3<f32> = u_xlat4;
  u_xlat4 = (x_136 + -(x_137));
  let x_141 : f32 = u_xlat4.y;
  let x_144 : f32 = u_xlat4.x;
  u_xlat18 = max(abs(x_141), abs(x_144));
  let x_148 : f32 = u_xlat4.z;
  let x_150 : f32 = u_xlat18;
  u_xlat4.x = max(abs(x_148), x_150);
  let x_157 : vec4<f32> = vs_TEXCOORD2;
  let x_159 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_157.z, x_157.w));
  u_xlat5 = vec3<f32>(x_159.x, x_159.y, x_159.z);
  let x_161 : vec3<f32> = u_xlat0;
  let x_162 : vec3<f32> = u_xlat5;
  u_xlat0 = (x_161 + -(x_162));
  let x_166 : f32 = u_xlat0.y;
  let x_169 : f32 = u_xlat0.x;
  u_xlat0.x = max(abs(x_166), abs(x_169));
  let x_174 : f32 = u_xlat0.z;
  let x_177 : f32 = u_xlat0.x;
  u_xlat4.y = max(abs(x_174), x_177);
  let x_180 : vec3<f32> = u_xlat2;
  let x_182 : vec3<f32> = u_xlat4;
  let x_184 : vec2<f32> = max(vec2<f32>(x_180.x, x_180.y), vec2<f32>(x_182.x, x_182.y));
  let x_185 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_184.x, x_184.y, x_185.z);
  let x_191 : vec4<f32> = vs_TEXCOORD3;
  let x_193 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_191.x, x_191.y));
  u_xlat4 = vec3<f32>(x_193.x, x_193.y, x_193.z);
  let x_195 : vec3<f32> = u_xlat1;
  let x_196 : vec3<f32> = u_xlat4;
  u_xlat1 = (x_195 + -(x_196));
  let x_201 : f32 = u_xlat1.y;
  let x_204 : f32 = u_xlat1.x;
  u_xlat12 = max(abs(x_201), abs(x_204));
  let x_208 : f32 = u_xlat1.z;
  let x_210 : f32 = u_xlat12;
  u_xlat1.x = max(abs(x_208), x_210);
  let x_216 : vec4<f32> = vs_TEXCOORD3;
  let x_218 : vec4<f32> = textureSample(x_MainTex, sampler_MainTex, vec2<f32>(x_216.z, x_216.w));
  u_xlat4 = vec3<f32>(x_218.x, x_218.y, x_218.z);
  let x_220 : vec3<f32> = u_xlat3;
  let x_221 : vec3<f32> = u_xlat4;
  u_xlat3 = (x_220 + -(x_221));
  let x_225 : f32 = u_xlat3.y;
  let x_228 : f32 = u_xlat3.x;
  u_xlat12 = max(abs(x_225), abs(x_228));
  let x_232 : f32 = u_xlat3.z;
  let x_234 : f32 = u_xlat12;
  u_xlat1.y = max(abs(x_232), x_234);
  let x_237 : vec3<f32> = u_xlat0;
  let x_239 : vec3<f32> = u_xlat1;
  let x_241 : vec2<f32> = max(vec2<f32>(x_237.x, x_237.y), vec2<f32>(x_239.x, x_239.y));
  let x_242 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_241.x, x_241.y, x_242.z);
  let x_245 : f32 = u_xlat0.y;
  let x_247 : f32 = u_xlat0.x;
  u_xlat0.x = max(x_245, x_247);
  let x_251 : vec3<f32> = u_xlat2;
  let x_253 : vec3<f32> = u_xlat2;
  u_xlat6 = (vec2<f32>(x_251.x, x_251.y) + vec2<f32>(x_253.x, x_253.y));
  let x_257 : vec2<f32> = u_xlat6;
  let x_259 : vec3<f32> = u_xlat0;
  let x_261 : vec4<bool> = (vec4<f32>(x_257.x, x_257.y, x_257.x, x_257.x) >= vec4<f32>(x_259.x, x_259.x, x_259.x, x_259.x));
  u_xlatb0 = vec2<bool>(x_261.x, x_261.y);
  let x_264 : bool = u_xlatb0.x;
  u_xlat0.x = select(0.0f, 1.0f, x_264);
  let x_268 : bool = u_xlatb0.y;
  u_xlat0.y = select(0.0f, 1.0f, x_268);
  let x_271 : vec3<f32> = u_xlat0;
  let x_273 : vec2<f32> = u_xlat14;
  let x_274 : vec2<f32> = (vec2<f32>(x_271.x, x_271.y) * x_273);
  let x_275 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_274.x, x_274.y, x_275.z);
  let x_279 : vec3<f32> = u_xlat0;
  let x_280 : vec2<f32> = vec2<f32>(x_279.x, x_279.y);
  let x_281 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_280.x, x_280.y, x_281.z, x_281.w);
  let x_284 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_284.x, x_284.y, vec2<f32>(0.0f, 0.0f).x, vec2<f32>(0.0f, 0.0f).y);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(0) vs_TEXCOORD0_param : vec2<f32>, @location(1) vs_TEXCOORD1_param : vec4<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @location(3) vs_TEXCOORD3_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  vs_TEXCOORD3 = vs_TEXCOORD3_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

