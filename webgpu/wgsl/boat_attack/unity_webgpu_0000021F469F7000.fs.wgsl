struct PGlobals {
  x_Time : vec4<f32>,
  x_ScreenParams : vec4<f32>,
  x_Rotation : f32,
  x_OffsetX : f32,
  x_OffsetY : f32,
  x_Width : f32,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_38 : PGlobals;

var<private> vs_TEXCOORD0 : vec2<f32>;

var<private> SV_Target0 : vec4<f32>;

var<private> vs_TEXCOORD2 : vec4<f32>;

var<private> gl_FragCoord : vec4<f32>;

fn main_1() {
  var u_xlat0 : vec3<f32>;
  var u_xlat3 : vec2<f32>;
  var u_xlat9 : f32;
  var u_xlat1 : vec2<f32>;
  var u_xlat2 : f32;
  var u_xlat6 : vec2<f32>;
  var u_xlat_precise_vec4 : vec4<f32>;
  var u_xlat_precise_ivec4 : vec4<i32>;
  var u_xlat_precise_bvec4 : vec4<bool>;
  var u_xlat_precise_uvec4 : vec4<u32>;
  let x_14 : vec4<f32> = vs_TEXCOORD1;
  let x_16 : vec4<f32> = vs_TEXCOORD1;
  let x_18 : vec2<f32> = (vec2<f32>(x_14.x, x_14.y) / vec2<f32>(x_16.w, x_16.w));
  let x_19 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_18.x, x_18.y, x_19.z);
  let x_21 : vec3<f32> = u_xlat0;
  let x_28 : vec2<f32> = ((vec2<f32>(x_21.x, x_21.y) * vec2<f32>(2.0f, 2.0f)) + vec2<f32>(-1.0f, -1.0f));
  let x_29 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_28.x, x_29.y, x_28.y);
  let x_35 : f32 = u_xlat0.x;
  let x_43 : f32 = x_38.x_ScreenParams.x;
  u_xlat0.x = (x_35 * x_43);
  let x_47 : f32 = u_xlat0.x;
  let x_50 : f32 = x_38.x_ScreenParams.y;
  u_xlat0.x = (x_47 / x_50);
  let x_54 : f32 = u_xlat0.x;
  let x_57 : f32 = x_38.x_Time.x;
  u_xlat0.y = (x_54 + -(x_57));
  let x_61 : vec3<f32> = u_xlat0;
  let x_65 : vec2<f32> = (vec2<f32>(x_61.y, x_61.z) * vec2<f32>(10.0f, 10.0f));
  let x_66 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_65.x, x_65.y, x_66.z);
  let x_68 : vec3<f32> = u_xlat0;
  let x_70 : vec2<f32> = fract(vec2<f32>(x_68.x, x_68.y));
  let x_71 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_70.x, x_70.y, x_71.z);
  let x_73 : vec3<f32> = u_xlat0;
  let x_77 : vec2<f32> = (vec2<f32>(x_73.x, x_73.y) + vec2<f32>(-0.5f, -0.5f));
  let x_78 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_77.x, x_77.y, x_78.z);
  let x_80 : vec3<f32> = u_xlat0;
  let x_82 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_80.x, x_80.y), vec2<f32>(x_82.x, x_82.y));
  let x_87 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_87);
  let x_91 : f32 = u_xlat0.x;
  u_xlat0.x = (x_91 + -0.5f);
  let x_95 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_95 * -2.0f) + 1.0f);
  let x_105 : vec2<f32> = vs_TEXCOORD0;
  let x_108 : f32 = x_38.x_OffsetX;
  let x_111 : f32 = x_38.x_OffsetY;
  u_xlat3 = (x_105 + vec2<f32>(x_108, x_111));
  let x_117 : f32 = x_38.x_Rotation;
  u_xlat9 = (x_117 * 3.142499924f);
  let x_121 : f32 = u_xlat9;
  u_xlat1.x = sin(x_121);
  let x_125 : f32 = u_xlat9;
  u_xlat2 = cos(x_125);
  let x_127 : f32 = u_xlat2;
  u_xlat1.y = x_127;
  let x_129 : vec2<f32> = u_xlat3;
  let x_130 : vec2<f32> = u_xlat1;
  u_xlat3.x = dot(x_129, x_130);
  let x_134 : f32 = u_xlat3.x;
  let x_137 : f32 = x_38.x_Width;
  u_xlat3.x = (x_134 + x_137);
  let x_142 : f32 = x_38.x_Width;
  let x_144 : f32 = x_38.x_Width;
  u_xlat6.x = (x_142 + x_144);
  let x_148 : f32 = u_xlat3.x;
  let x_150 : f32 = u_xlat6.x;
  u_xlat3.x = (x_148 / x_150);
  let x_153 : vec3<f32> = u_xlat0;
  let x_155 : vec2<f32> = u_xlat3;
  let x_161 : vec2<f32> = ((vec2<f32>(x_153.x, x_153.x) * vec2<f32>(x_155.x, x_155.x)) + vec2<f32>(-0.379999995f, -0.580000043f));
  let x_162 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_161.x, x_161.y, x_162.z);
  let x_164 : vec3<f32> = u_xlat0;
  let x_169 : vec2<f32> = (vec2<f32>(x_164.x, x_164.y) * vec2<f32>(24.999986649f, 25.000024796f));
  let x_170 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_169.x, x_169.y, x_170.z);
  let x_172 : vec3<f32> = u_xlat0;
  let x_177 : vec2<f32> = clamp(vec2<f32>(x_172.x, x_172.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_178 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_177.x, x_177.y, x_178.z);
  let x_180 : vec3<f32> = u_xlat0;
  u_xlat6 = ((vec2<f32>(x_180.x, x_180.y) * vec2<f32>(-2.0f, -2.0f)) + vec2<f32>(3.0f, 3.0f));
  let x_187 : vec3<f32> = u_xlat0;
  let x_189 : vec3<f32> = u_xlat0;
  let x_191 : vec2<f32> = (vec2<f32>(x_187.x, x_187.y) * vec2<f32>(x_189.x, x_189.y));
  let x_192 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_191.x, x_191.y, x_192.z);
  let x_195 : f32 = u_xlat0.x;
  let x_197 : f32 = u_xlat6.x;
  u_xlat0.x = (x_195 * x_197);
  let x_201 : f32 = u_xlat6.y;
  let x_203 : f32 = u_xlat0.y;
  let x_206 : f32 = u_xlat0.x;
  u_xlat3.x = ((x_201 * x_203) + -(x_206));
  let x_211 : f32 = u_xlat3.x;
  let x_215 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_211 * 0.5f) + x_215);
  let x_221 : f32 = u_xlat0.x;
  let x_226 : f32 = vs_TEXCOORD2.w;
  SV_Target0.w = (x_221 * x_226);
  let x_230 : vec4<f32> = vs_TEXCOORD2;
  let x_231 : vec3<f32> = vec3<f32>(x_230.x, x_230.y, x_230.z);
  let x_232 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_231.x, x_231.y, x_231.z, x_232.w);
  return;
}

struct main_out {
  @location(0)
  SV_Target0_1 : vec4<f32>,
}

@fragment
fn main(@location(1) vs_TEXCOORD1_param : vec4<f32>, @location(0) vs_TEXCOORD0_param : vec2<f32>, @location(2) vs_TEXCOORD2_param : vec4<f32>, @builtin(position) gl_FragCoord_param : vec4<f32>) -> main_out {
  vs_TEXCOORD1 = vs_TEXCOORD1_param;
  vs_TEXCOORD0 = vs_TEXCOORD0_param;
  vs_TEXCOORD2 = vs_TEXCOORD2_param;
  gl_FragCoord = gl_FragCoord_param;
  main_1();
  return main_out(SV_Target0);
}

