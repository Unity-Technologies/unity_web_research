struct PGlobals {
  x_ScreenParams : vec4<f32>,
  x_Rotation : f32,
  x_OffsetX : f32,
  x_OffsetY : f32,
  x_Width : f32,
}

var<private> vs_TEXCOORD1 : vec4<f32>;

@group(1) @binding(0) var<uniform> x_40 : PGlobals;

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
  u_xlat0 = vec3<f32>(x_29.x, x_28.x, x_28.y);
  let x_37 : f32 = u_xlat0.y;
  let x_46 : f32 = x_40.x_ScreenParams.x;
  u_xlat3.x = (x_37 * x_46);
  let x_50 : f32 = u_xlat3.x;
  let x_52 : f32 = x_40.x_ScreenParams.y;
  u_xlat0.x = (x_50 / x_52);
  let x_55 : vec3<f32> = u_xlat0;
  let x_59 : vec2<f32> = (vec2<f32>(x_55.x, x_55.z) * vec2<f32>(10.0f, 10.0f));
  let x_60 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_59.x, x_59.y, x_60.z);
  let x_62 : vec3<f32> = u_xlat0;
  let x_64 : vec2<f32> = fract(vec2<f32>(x_62.x, x_62.y));
  let x_65 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_64.x, x_64.y, x_65.z);
  let x_67 : vec3<f32> = u_xlat0;
  let x_71 : vec2<f32> = (vec2<f32>(x_67.x, x_67.y) + vec2<f32>(-0.5f, -0.5f));
  let x_72 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_71.x, x_71.y, x_72.z);
  let x_74 : vec3<f32> = u_xlat0;
  let x_76 : vec3<f32> = u_xlat0;
  u_xlat0.x = dot(vec2<f32>(x_74.x, x_74.y), vec2<f32>(x_76.x, x_76.y));
  let x_81 : f32 = u_xlat0.x;
  u_xlat0.x = sqrt(x_81);
  let x_85 : f32 = u_xlat0.x;
  u_xlat0.x = (x_85 + -0.5f);
  let x_89 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_89 * -2.0f) + 1.0f);
  let x_97 : vec2<f32> = vs_TEXCOORD0;
  let x_100 : f32 = x_40.x_OffsetX;
  let x_103 : f32 = x_40.x_OffsetY;
  u_xlat3 = (x_97 + vec2<f32>(x_100, x_103));
  let x_109 : f32 = x_40.x_Rotation;
  u_xlat9 = (x_109 * 3.142499924f);
  let x_113 : f32 = u_xlat9;
  u_xlat1.x = sin(x_113);
  let x_117 : f32 = u_xlat9;
  u_xlat2 = cos(x_117);
  let x_119 : f32 = u_xlat2;
  u_xlat1.y = x_119;
  let x_121 : vec2<f32> = u_xlat3;
  let x_122 : vec2<f32> = u_xlat1;
  u_xlat3.x = dot(x_121, x_122);
  let x_126 : f32 = u_xlat3.x;
  let x_129 : f32 = x_40.x_Width;
  u_xlat3.x = (x_126 + x_129);
  let x_134 : f32 = x_40.x_Width;
  let x_136 : f32 = x_40.x_Width;
  u_xlat6.x = (x_134 + x_136);
  let x_140 : f32 = u_xlat3.x;
  let x_142 : f32 = u_xlat6.x;
  u_xlat3.x = (x_140 / x_142);
  let x_145 : vec3<f32> = u_xlat0;
  let x_147 : vec2<f32> = u_xlat3;
  let x_153 : vec2<f32> = ((vec2<f32>(x_145.x, x_145.x) * vec2<f32>(x_147.x, x_147.x)) + vec2<f32>(-0.379999995f, -0.580000043f));
  let x_154 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_153.x, x_153.y, x_154.z);
  let x_156 : vec3<f32> = u_xlat0;
  let x_161 : vec2<f32> = (vec2<f32>(x_156.x, x_156.y) * vec2<f32>(24.999986649f, 25.000024796f));
  let x_162 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_161.x, x_161.y, x_162.z);
  let x_164 : vec3<f32> = u_xlat0;
  let x_169 : vec2<f32> = clamp(vec2<f32>(x_164.x, x_164.y), vec2<f32>(0.0f, 0.0f), vec2<f32>(1.0f, 1.0f));
  let x_170 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_169.x, x_169.y, x_170.z);
  let x_172 : vec3<f32> = u_xlat0;
  u_xlat6 = ((vec2<f32>(x_172.x, x_172.y) * vec2<f32>(-2.0f, -2.0f)) + vec2<f32>(3.0f, 3.0f));
  let x_179 : vec3<f32> = u_xlat0;
  let x_181 : vec3<f32> = u_xlat0;
  let x_183 : vec2<f32> = (vec2<f32>(x_179.x, x_179.y) * vec2<f32>(x_181.x, x_181.y));
  let x_184 : vec3<f32> = u_xlat0;
  u_xlat0 = vec3<f32>(x_183.x, x_183.y, x_184.z);
  let x_187 : f32 = u_xlat0.x;
  let x_189 : f32 = u_xlat6.x;
  u_xlat0.x = (x_187 * x_189);
  let x_193 : f32 = u_xlat6.y;
  let x_195 : f32 = u_xlat0.y;
  let x_198 : f32 = u_xlat0.x;
  u_xlat3.x = ((x_193 * x_195) + -(x_198));
  let x_203 : f32 = u_xlat3.x;
  let x_207 : f32 = u_xlat0.x;
  u_xlat0.x = ((x_203 * 0.5f) + x_207);
  let x_213 : f32 = u_xlat0.x;
  let x_218 : f32 = vs_TEXCOORD2.w;
  SV_Target0.w = (x_213 * x_218);
  let x_222 : vec4<f32> = vs_TEXCOORD2;
  let x_223 : vec3<f32> = vec3<f32>(x_222.x, x_222.y, x_222.z);
  let x_224 : vec4<f32> = SV_Target0;
  SV_Target0 = vec4<f32>(x_223.x, x_223.y, x_223.z, x_224.w);
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

